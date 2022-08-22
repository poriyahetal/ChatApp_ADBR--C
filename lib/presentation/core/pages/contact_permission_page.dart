import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/core/widgets/text_translate.dart';
import 'package:get/get.dart';
class ContactPermissionPage extends StatelessWidget {
  const ContactPermissionPage({
    Key? key,
    required Function() this.onPressed,
  }) : super(key: key);
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // height: MediaQuery.of(context).size.height / 1.5,
            //  width: 250
            // h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Kolors.primary,
                    border: Border.all(
                      color: Kolors.primary,
                    ),
                    // borderRadius: const BorderRadius.only(
                    //   topLeft: Radius.circular(10),
                    //   topRight: Radius.circular(
                    //     10,
                    //   ),
                    // ),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: const Icon(
                    Icons.contact_page_outlined,
                    size: 60,
                    color: Kolors.white,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      left: 10,
                      right: 10,
                    ),
                    child: RichText(
                      // textAlign: TextAlign.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Use your contacts",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.7,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 10,
                          right: 10,
                        ),
                        child: RichText(
                          textAlign: TextAlign.start,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "In order to guarantee the app functionality, using KahoChat contacts list is necessary and we are collecting the contacts who are using KahoChat application.Therefore you should allow access or use of the contact of this device in the next dialog.",
                                style: TextStyle(
                                  fontSize: 14,
                                  // fontWeight: FontWeight.w600,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: 5.0,
                      //     left: 10,
                      //     right: 10,
                      //   ),
                      //   child: Text(
                      //     '',
                      //     style: TextStyle(
                      //         fontSize: 14, fontWeight: FontWeight.w600),
                      //   ),
                      // ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          left: 10,
                          right: 10,
                        ),
                        child: RichText(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Why KahoChat needs to use your Contacts:",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        horizontalTitleGap: 10,
                        minLeadingWidth: 0,
                        contentPadding: const EdgeInsets.only(
                          bottom: 5.0,
                          left: 10,
                          right: 10,
                        ),
                        leading: const Icon(
                          Icons.circle,
                          size: 8,
                          // color: Kolors.black,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: RichText(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "KahoChat collects and upload contacts list data to allow user to manage his stories privacy (Current user can allow other users from his contacts list to see his stories and vice versa).",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).iconTheme.color,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //  Text(
                          //   "",
                          //   style: TextStyle(
                          //       fontSize: 14, fontWeight: FontWeight.w600),
                          //   // textAlign: TextAlign.center,
                          // ),
                        ),
                      ),
                      ListTile(
                        horizontalTitleGap: 10,
                        minLeadingWidth: 0,
                        contentPadding: const EdgeInsets.only(
                          bottom: 5.0,
                          left: 10,
                          right: 10,
                        ),
                        leading: const Icon(
                          Icons.circle,
                          size: 8,
                          // color: Kolors.black,
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: RichText(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "KahoChat collects and upload contacts list data to let user manage his profile info privacy (User can restrict or allow other contacts list from watching his Profile Photo, Bio, and Last Seen Status).",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).iconTheme.color,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //  Text(
                          //   "",
                          //   style: TextStyle(
                          //       fontSize: 14, fontWeight: FontWeight.w600),
                          //   // textAlign: TextAlign.center,
                          // ),
                        ),
                      ),
                      ListTile(
                        horizontalTitleGap: 10,
                        minLeadingWidth: 0,
                        contentPadding: const EdgeInsets.only(
                          bottom: 5.0,
                          left: 10,
                          right: 10,
                        ),
                        leading: const Icon(
                          Icons.circle,
                          size: 8,
                          // color: Kolors.black,
                        ),
                        title: RichText(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "KahoChat collects contacts list data to display the name of other users from current user contact list data in KahoChat application.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //   Text(
                        //     "",
                        //     style: TextStyle(
                        //         fontSize: 14, fontWeight: FontWeight.w600),
                        //     // textAlign: TextAlign.center,
                        //   ),
                      ),
                      ListTile(
                        horizontalTitleGap: 10,
                        minLeadingWidth: 0,
                        contentPadding: const EdgeInsets.only(
                          bottom: 5.0,
                          left: 10,
                          right: 10,
                        ),
                        leading: const Icon(
                          Icons.circle,
                          size: 8,
                          // color: Kolors.black,
                        ),
                        title: RichText(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "To save other users (Who is not in current user contact list) contact info in user contacts list.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ListTile(
                        horizontalTitleGap: 10,
                        minLeadingWidth: 0,
                        contentPadding: const EdgeInsets.only(
                          bottom: 5.0,
                          left: 10,
                          right: 10,
                        ),
                        leading: const Icon(
                          Icons.circle,
                          size: 8,
                          // color: Kolors.black,
                        ),
                        title: RichText(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "To let current phone user to share a KahoChat Contact from his phone contacts list to other KahoChat users.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Text(
                        //   "To let current phone user to share a KahoChat Contact from his phone contacts list to other KahoChat users.",
                        //   style: TextStyle(
                        //       fontSize: 14, fontWeight: FontWeight.w600),
                        //   // textAlign: TextAlign.center,
                        // ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(bottom: 15),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       const SizedBoxW10(),
          //       TextButton(
          //         onPressed: () {
          //
          //         },
          //         child: const Text(
          //           'Deny',
          //           style: TextStyle(
          //             color: Kolors.red,
          //           ),
          //         ),
          //       ),
          //       const SizedBoxW10(),
          //       TextButton(
          //         onPressed: onPressed,
          //         child: const Text(
          //           'Accept',
          //           style: TextStyle(
          //             color: Kolors.primary,
          //           ),
          //         ),
          //       ),
          //       const SizedBoxW10(),
          //     ],
          //   ),
          // ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            elevation: 0,
            onPressed: () async {
              Navigator.pop(context);
            },
            heroTag: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: Kolors.red,
            label: Container(
              width: 100,
              // alignment: Alignment.center,
              child:  Center(
                child: Text(
                  "DECLINE",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width<360?14:15,
                    color: Kolors.white,
                  ),
                ),
              ),
            ),
          ),
          FloatingActionButton.extended(
            elevation: 0,
            onPressed: onPressed,
            heroTag: null,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            backgroundColor: Kolors.primary,
            label: Container(
              width: 100,
              alignment: Alignment.center,
              child:  Center(
                child: Text(
                  "ACCEPT",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: MediaQuery.of(context).size.width<360?14:15,
                    color: Kolors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
