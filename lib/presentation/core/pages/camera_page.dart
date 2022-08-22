import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/settings/settings_bloc.dart';
import 'package:flutter_template/domain/core/image_with_caption_model.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:screenshot/screenshot.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({
    Key? key,
    required this.camera,
    required this.onCapture,
  }) : super(key: key);
  final List<CameraDescription> camera;
  final Function(ImageWithCaptionModel) onCapture;

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  int selectedCamera = 0;
  bool isFlashOn = false;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera[0],
      // Define the resolution to use.
      ResolutionPreset.high,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Fill this out in the next steps.
    return Scaffold(
      // appBar: AppBar(title: const TextTranslate('Take a picture')),
      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            child: FutureBuilder<void>(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  // If the Future is complete, display the preview.
                  return CameraPreview(_controller);
                } else {
                  // Otherwise, display a loading indicator.
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      if (isFlashOn) {
                        _controller.setFlashMode(FlashMode.off);
                        setState(() {
                          isFlashOn = false;
                        });
                      } else {
                        _controller.setFlashMode(FlashMode.torch);
                        setState(() {
                          isFlashOn = true;
                        });
                      }
                    },
                    icon: isFlashOn
                        ? const Icon(
                            Icons.flash_on,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.flash_off,
                            color: Colors.white,
                          ),
                  ),
                  InkResponse(
                    onTap: () async {
                      // Take the Picture in a try / catch block. If anything goes wrong,
                      // catch the error.
                      try {
                        // Ensure that the camera is initialized.
                        await _initializeControllerFuture;

                        // Attempt to take a picture and get the file `image`
                        // where it was saved.
                        final image = await _controller.takePicture();

                        // If the picture was taken, display it on a new screen.
                        List<ScreenshotController> screenshotControllers =
                            List.generate(
                                15, (index) => ScreenshotController());

                        await AutoRouter.of(context).replace(
                          DisplayCapturedImageRoute(
                            imagePath: [image.path],
                            screenshotController: screenshotControllers,
                            onCapture: (v) => widget.onCapture(v.first),
                            onEditCapture: (v) => widget.onCapture(v.first),
                          ),
                        );
                      } catch (e) {
                        // If an error occurs, log the error to the console.
                        print(e);
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2.5),
                      ),
                      width: 60,
                      height: 60,
                    ),
                  ),
                  IconButton(
                    onPressed: () async {
                      setState(() {
                        selectedCamera = selectedCamera == 0 ? 1 : 0;
                      });

                      _controller = CameraController(
                        // Get a specific camera from the list of available cameras.
                        widget.camera[selectedCamera],
                        // Define the resolution to use.
                        ResolutionPreset.high,
                      );
                      _initializeControllerFuture = _controller.initialize();
                    },
                    icon: const Icon(
                      Icons.flip_camera_ios,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                child: Text(
                  "${context.read<SettingsBloc>().state.languageData.holdForVideoTapForPhoto}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
