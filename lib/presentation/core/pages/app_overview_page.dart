import 'package:auto_route/auto_route.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:get/get.dart';

class AppPreviewPage extends StatefulWidget {
  @override
  _AppPreviewPageState createState() => _AppPreviewPageState();
}

class _AppPreviewPageState extends State<AppPreviewPage> {
  double currentPage = 0.0;
  int currentPageIndex = 0;
  final _pageViewController = new PageController();

  @override
  void initState() {
    super.initState();
    _pageViewController.addListener(() {
      setState(() {
        currentPage = _pageViewController.page!;
        currentPageIndex = _pageViewController.page!.toInt();
      });
    });
  }

  List<Widget> icons = items
      .map((e) =>
      LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(child: e['icon'] as Widget),
                Text(
                  e['header'].toString(),
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width < 360 ? 25 : 35.0,
                    fontWeight: FontWeight.w800,
                    color: Kolors.white,
                    height: 2.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 5),
                  child: Text(e['description'].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Kolors.white,
                          letterSpacing: 1.2,
                          fontSize:MediaQuery.of(context).size.width < 360 ? 12 : 14.0,
                          fontWeight: FontWeight.bold,
                          height: 1.3)),
                ),
              ],
            );
          }
      ))
      .toList();

  List<Widget> indicator() => List<Widget>.generate(
      icons.length,
      (index) => Container(
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            height:MediaQuery.of(context).size.width<360?6: 10.0,
            width: MediaQuery.of(context).size.width<360?6:10.0,
            decoration: BoxDecoration(
                color: currentPage.round() == index
                    ? Kolors.white
                    : Kolors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(10.0)),
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(43, 133, 220, 1),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                // alignment: Alignment.center,
                child: PageView.builder(
                  controller: _pageViewController,
                  itemCount: icons.length,
                  itemBuilder: (BuildContext context, int index) {
                    return icons[index];
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.65),
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap: () {
                          AutoRouter.of(context).push(
                            TermsAndPolicyRoute(accessedFromLogin: true),
                          );
                        },
                        child:  Text('Skip',
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.width<360?13:15,
                                fontWeight: FontWeight.bold,
                                color: Kolors.white))),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicator(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                        onTap: () {
                          if (currentPageIndex == 4) {
                            AutoRouter.of(context).push(
                              TermsAndPolicyRoute(accessedFromLogin: true),
                            );
                          }
                          currentPageIndex = currentPageIndex + 1;
                          print('CPI:$currentPageIndex');
                          _pageViewController.animateToPage(currentPageIndex,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                        },
                        child:  Text(
                          'Next',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width<360?13:15,
                              fontWeight: FontWeight.bold,
                              color: Kolors.white),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List items = [
  {
    "header": "Chats",
    "description": "Communicate with your contacts by private messages",
    'icon':LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Icon(
            Icons.mail_outline,
            color: Kolors.white,
            size: MediaQuery.of(context).size.width < 360 ? 80 :100,
          );
        }
    )
  },
  {
    "header": "Group Chats",
    "description": "Stay in touch with your friends in private group chat",
    'icon':LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Icon(
            Icons.group_outlined,
            color: Kolors.white,
            size: MediaQuery.of(context).size.width < 360 ? 80 :100,
          );
        }
    )

  },
  {
    "header": "Search Users",
    "description":
        "Search the new user by phone number without saving as a contact",
    'icon': LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return  Icon(
            Icons.person_add_outlined,
            color: Kolors.white,
            size: MediaQuery.of(context).size.width < 360 ? 80 :100,
          );
        }
    )

  },
  {
    "header": "Calls",
    "description": "Talk with your friend by audio or video call in real time",
    'icon':LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Icon(
            Icons.call_outlined,
            color: Kolors.white,
            size: MediaQuery.of(context).size.width < 360 ? 80 :100,
          );
        }
    )
  },
  {
    "header": "Stories",
    "description": "Share the stories that disappear in 24 Hours",
    'icon':LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Icon(
            Icons.add_circle_outline_outlined,
            color: Kolors.white,
            size: MediaQuery.of(context).size.width < 360 ? 80 :100,
          );
        }
    )
  }
];
