import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SafeScaffold extends StatelessWidget {
  final bool extendBody;

  final bool extendBodyBehindAppBar;

  final PreferredSizeWidget? appBar;

  final Widget? body;

  final Widget? floatingActionButton;

  final FloatingActionButtonLocation? floatingActionButtonLocation;

  final FloatingActionButtonAnimator? floatingActionButtonAnimator;

  final List<Widget>? persistentFooterButtons;

  final Widget? drawer;

  final DrawerCallback? onDrawerChanged;

  final Widget? endDrawer;

  final DrawerCallback? onEndDrawerChanged;

  final Color? drawerScrimColor;

  final Color? backgroundColor;

  final Widget? bottomNavigationBar;

  final Widget? bottomSheet;

  final bool? resizeToAvoidBottomInset;

  final bool primary;

  final DragStartBehavior drawerDragStartBehavior;

  final double? drawerEdgeDragWidth;

  final bool drawerEnableOpenDragGesture;

  final bool endDrawerEnableOpenDragGesture;

  final String? restorationId;

  const SafeScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    theme.brightness == Brightness.dark
        ? SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(66, 66, 66, 0.9),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness:Brightness.light ,
    ))
        : SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(43, 89, 195, 0.9),
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness:Brightness.light ,
    ));
    return SafeArea(
      child: Scaffold(
        appBar: appBar,
        resizeToAvoidBottomInset:resizeToAvoidBottomInset,
        backgroundColor: backgroundColor,
        drawer: drawer,
        bottomNavigationBar: bottomNavigationBar,
        body: SizedBox(
          // height: MediaQuery.of(context).size.height - kToolbarHeight,
          child: body,
        ),
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
      ),
    );
  }
}
