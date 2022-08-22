import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/layout_widgets/rounded_button.dart';
import 'package:flutter_template/presentation/core/layout_widgets/safe_scaffold.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';
import 'package:flutter_template/presentation/routes/router.gr.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndPolicyPage extends StatefulWidget {
  bool? accessedFromLogin;

  TermsAndPolicyPage({Key? key, this.accessedFromLogin = false})
      : super(key: key);

  @override
  State<TermsAndPolicyPage> createState() => _TermsAndPolicyPageState();
}

class _TermsAndPolicyPageState extends State<TermsAndPolicyPage> {
  bool agreed = false;
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    // _controller.jumpTo(_controller.position.maxScrollExtent);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_controller.hasClients) {
        _controller.animateTo(
          _controller.position.maxScrollExtent * 1.5,
          duration: const Duration(seconds: 3),
          curve: Curves.easeInOutQuart,
        );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print(_controller.position.maxScrollExtent);
    final bool inDialog = widget.accessedFromLogin ?? false;
    return SafeScaffold(
      appBar: AppBar(
        title:  Text(
          'Terms and Privacy Policies',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: MediaQuery.of(context).size.width < 360 ? 16 :null,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          controller: _controller,
          shrinkWrap: true,
          children: [
             Text(
              'Terms of Service',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20,
                  color: Kolors.primary),
            ),
            if (MediaQuery.of(context).size.width < 360) const SizedBoxH10() else const SizedBoxH20(),
            Text(
              'KahoChat Instant Messenger utilizes state-of-the-art security and end-to-end encryption to provide private messaging, Internet calling, and other services to users in India. You agree to our Terms of Service by installing or using our apps, services or website.',
              style: TextStyle(
                fontSize:MediaQuery.of(context).size.width < 360 ? 16 : 18,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            if (MediaQuery.of(context).size.width < 360) const SizedBoxH10() else const SizedBoxH20(),
             Text(
              'About our services',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20,),
            ),
            if (MediaQuery.of(context).size.width < 360) const SizedBoxH10() else const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Minimum Age: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You must be at least 13 years old to use our Services. The minimum age to use our Services without parental approval may be higher in your home country.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Account Registration: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "To create an account you must register for our Services using your phone number. You agree to receive text messages and phone calls (from us or our third-party providers) with verification codes to register for our Services.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Privacy of user data: ",
                    style: TextStyle(
                      fontSize:MediaQuery.of(context).size.width < 360 ? 16 : 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "We do not sell, rent or monetize your personal data or content in any way – ever.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Software: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "In order to enable new features and enhanced functionality, you consent to downloading and installing updates to our Services.",
                    style: TextStyle(
                      fontSize:MediaQuery.of(context).size.width < 360 ? 16 : 18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Fees and Taxes: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You are responsible for data and mobile carrier fees and taxes associated with the devices on which you use our Services.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH30(),
             Text(
              'Your Rights and License with KahoChat',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Your Rights : ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You own the information what you submit through our Services. You must have the rights to the phone number you use to sign up for your KahoChat account.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Our Rights: ",
                    style: TextStyle(
                      fontSize:MediaQuery.of(context).size.width < 360 ? 16 : 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "We own all copyrights, trademarks, domains, logos, trade dress, trade secrets, patents, and other intellectual property rights associated with our services. You may not use our copyrights, trademarks, domains, logos, trade dress, patents, and other intellectual property rights unless you have our written permission.\n",
                    style: TextStyle(
                      fontSize:MediaQuery.of(context).size.width < 360 ? 16 : 18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "To report copyright, trademark, or other intellectual property infringement, please mail us on support@kahochat.com",
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH30(),
             Text(
              'Important informations while using KahoChat',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Our Terms and Policies: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You must use our Services according to our Terms and posted policies. If we disable your account for a violation of our Terms, you will not create another account without our permission.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Legal and Acceptable Use: ",
                    style: TextStyle(
                      fontSize:MediaQuery.of(context).size.width < 360 ? 16 : 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You agree to use our services only for legal, authorized, and acceptable purposes. You should not use our services in ways that can:",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.all(2),
              leading: Icon(
                Icons.circle,
                size: 10,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "Violate or infringe the rights of KahoChat, our users, or others, including privacy, publicity, intellectual property, or other proprietary rights",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
            ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.all(2),
              leading: Icon(
                Icons.circle,
                size: 10,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "Involve sending illegal or impermissible communications such as bulk messaging, auto-messaging, and auto-dialing.",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Harm to KahoChat: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You must not access, use, modify, distribute, transfer, or exploit our Services in unauthorized manners, or in ways that harm KahoChat, our Services, or systems.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Keeping Your Account Secure: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "KahoChat does not have the ability to access your messages. You are responsible for keeping your device and your account safe and secure.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Third-party services: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "Our services may allow you to access, use, or interact with third-party websites, apps, content, and other products and services. When you use third-party services, their terms and privacy policies govern your use of those services.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH30(),
             Text(
              'Privacy Policy',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20,
                  color: Kolors.primary),
            ),
            const SizedBoxH20(),
            Text(
              'KahoChat utilizes state-of-the-art security and end-to-end encryption to provide private messaging and Internet calling services to users in India. Your calls and messages will be always encrypted, so they can never be shared or viewed by anyone but yourself and the recipients.',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            const SizedBoxH30(),
             Text(
              'Informations you provide',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20),
            ),
            const SizedBoxH20(),
            Text(
              'We require certain information to deliver our Services and without this we will not be able to provide our Services to you. For example, user must provide mobile phone number to create an account to use our Services.',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            const SizedBoxH10(),
            Text(
              'Our Services have optional features which, if used by you, require us to collect additional information to provide such features. If you choose not to provide the information needed to use a feature, you will be unable to use the feature. For example, you cannot share your stories with other users if you do not permit us to collect your contact list data from your device.',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            const SizedBoxH10(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Account Information: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You must provide your phone number and basic information (including a profile name ,bio and profile picture) to create a KahoChat account. Phone numbers are used to provide our Services to you and other KahoChat users. You may optionally add other information to your account, such as a profile picture.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Messages: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        " We cannot decrypt or otherwise access the content of your messages or calls. We queues end-to-end encrypted messages on its servers for delivery to devices. Your message history is stored on your own devices and on our server in encrypted form of data.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Contacts list: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "KahoChat can optionally discover and upload which contacts in user address book are our users, using a service designed to protect the privacy of user contacts. Information from the contacts on user device may be transmitted to the server in order to determine which of user contacts are registered. We don't share user contacts to any other 3rd party services.we store this info securely in our server. when user grant KahoChat to use upload contact feature ,KahoChat will access and upload the phone numbers from your address book typically daily, but this depends on various factors including how often a user uses KahoChat, including those of KahoChat users and your other contacts.We don’t collect any of the other information that could appear in your device address book including names, email addresses, etc. \n If any of your contacts aren’t yet using KahoChat, we protect their privacy by managing the phone number in a way that is designed to prevent those contacts from being identified by KahoChat.\n You can control the contact upload feature from your device settings. If you choose not to use Contact Upload feature, you can disable contact permission from your device setting and you can still communicate with people who have KahoChat but certain functionality will be limited.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH5(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Why KahoChat needs to use Contacts:",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH5(),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "KahoChat collects and upload contacts list data to allow user to manage his stories privacy (Current user can allow other users from his contacts list to see his stories and vice versa).",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "KahoChat collects and upload contacts list data to let user manage his profile info privacy (User can restrict or allow other contacts list from watching his Profile Photo, Bio, and Last Seen Status).",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "KahoChat collects contacts list data to display the name of other users from current user contact list data in KahoChat application.",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Text(
                "To save other users (Who is not in current user contact list) contact info in user contacts list.",
                style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                // textAlign: TextAlign.center,
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "To let current phone user to share a KahoChat Contact from his phone contacts list to other KahoChat users.",
                  style: TextStyle(fontSize:MediaQuery.of(context).size.width < 360 ? 13 : 14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Managing your information: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "You can manage your personal information in application Settings. For example, you can update your profile information or choose to enable additional privacy.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH30(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "User Support: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "If you contact our User Support, any personal data you may share with us is kept only for the purposes of researching the issue and contacting you about your case.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH30(),
             Text(
              'How we use information',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20),
            ),
            const SizedBoxH10(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "We have (subject to choices you make and applicable law) to operate, provide, improve, understand, customize, support, and market our Services.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Here's how:",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH10(),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // Theme.of(context).iconTheme.color,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "Our Services: We use information we have to operate and provide our Services, including providing customer support ,improving, fixing, and customizing our Services. We also use information we have to understand how people use our Services; evaluate and improve our Services; research, develop, and test new services and features; and conduct troubleshooting activities. We also use your information to respond to you when you contact us.",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "Safety, Security, And Integrity. Safety, security, and integrity are an integral part of our Services. We use information we have to verify accounts and activity; combat harmful conduct; protect users against bad experiences and spam; and promote safety, security, and integrity on and off our Services, such as by investigating suspicious activity or violations of our Terms and policies, and to ensure our Services are being used legally.",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "Communications About Our Services And . We use information we have to communicate with you about our Services and let you know about our terms, policies, and other important updates. We may provide you marketing for our Services.",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "No Third-Party Banner Ads. We still do not allow third-party banner ads on our Services. We have no intention to introduce them, but if we ever do, we will update this Privacy Policy.",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBoxH30(),
             Text(
              'Information we may share',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Third Parties: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "KahoChat work with third parties to provide some of our Services. For example, Third-Party Providers send a verification code to your phone number when you register for our Services. These providers are bound by their Privacy Policies to safeguard that information. If you use other Third-Party Services, in connection with our Services, their Terms and Privacy Policies govern your use of those services.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH30(),
             Text(
              'Other instances where we may need to share your data: ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Text(
                "To meet any applicable law, regulation, legal process or enforceable governmental request.",
                style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                // textAlign: TextAlign.center,
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Text(
                "To enforce, applicable Terms, including investigation of potential violations.",
                style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                // textAlign: TextAlign.center,
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Text(
                "To detect, prevent, or otherwise address fraud, security, or technical issues.",
                style: TextStyle(fontSize:MediaQuery.of(context).size.width < 360 ? 13 : 14, fontWeight: FontWeight.w600),
                // textAlign: TextAlign.center,
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "To protect against harm to the rights, property, or safety of our users, or the public as required or permitted by law.",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBoxH30(),
             Text(
              'Permissions used by KahoChat App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Camera permission: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "We require Camera permission to let user make video call, capture photos and videos in our KahoChat application.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH10(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Contacts list: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "In order to guarantee the app functionality, the contact access is necessary.We don't share contact list data to any third party services. Information from the contact list on your device may be transmitted to the server for below reasons:",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH5(),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "KahoChat collects and upload contacts list data to allow user to manage his stories privacy (Current user can allow other users from his contacts list to see his stories and vice versa).",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "KahoChat collects and upload contacts list data to let user manage his profile info privacy (User can restrict or allow other contacts list from watching his Profile Photo, Bio, and Last Seen Status).",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "KahoChat collects contacts list data to display the name of other users from current user contact list data in KahoChat application.",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Text(
                "To save other users (Who is not in current user contact list) contact info in user contacts list.",
                style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                // textAlign: TextAlign.center,
              ),
            ),
             ListTile(
              horizontalTitleGap: 10,
              minLeadingWidth: 0,
              contentPadding: EdgeInsets.only(
                bottom: 5.0,
                left: 10,
                right: 10,
              ),
              leading: Icon(
                Icons.circle,
                size: 8,
                // color: Kolors.black,
              ),
              title: Padding(
                padding: EdgeInsets.only(top: 7.0),
                child: Text(
                  "To let current phone user to share a KahoChat Contact from his phone contacts list to other KahoChat users.",
                  style: TextStyle(fontSize: MediaQuery.of(context).size.width < 360 ? 13 :14, fontWeight: FontWeight.w600),
                  // textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBoxH10(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Read and write the files from storage: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "This permission allows user to view send or received photos, videos or audios files stored in their SD card/Internal Storage,we don't collect any data from user device.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH10(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Modify or delete the contents of your storage: ",
                    style: TextStyle(
                      fontSize:MediaQuery.of(context).size.width < 360 ? 16 : 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "This permission allows user to manage and delete received files from his friend and family through KahoChat application in the Internal storage.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH10(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Read your messages: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "This permission allows KahoChat to inform you when you receive KahoChat OTP for secured authentication. This won’t result in unexpected fees and messages. KahoChat won’t upload your privacy information.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH10(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "microphone: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "We requires microphone permission to let a user send a voice message and to make voice and video call through our KahoChat application.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH10(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Read and write the files from storage: ",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    text:
                        "This permission allows user to view send or received photos, videos or audios files stored in their SD card/Internal Storage,we don't collect any data from user device.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH30(),
             Text(
              'General Informations',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width < 360 ? 18 :20),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "KahoChat may update the Terms condition from time to time. When we update our Terms, we will update with the updated Terms. Your continued use of our Services confirms your acceptance of our updated Terms and supersedes any prior Terms. You will comply with all applicable export control and trade sanctions laws. Our Terms cover the entire agreement between you and KahoChat regarding our Services. If you do not agree with our Terms, you should stop using our Services.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "If we fail to enforce any of our Terms, that does not mean we waive the right to enforce them. If any provision of the Terms is deemed unlawful, void, or unenforceable, that provision shall be deemed severable from our Terms and shall not affect the enforceability of the remaining provisions. Our Services are not intended for distribution to or use in any country where such distribution or use would violate local law or would subject us to any regulations in another country.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        "If you have specific queries about these Terms, please contact us at privacy@kahochat.com.",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBoxH20(),
            RichText(
              textAlign: TextAlign.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'For more detail on privacy policy you can check or visit our ',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch('https://kahochat.com/Privacy');
                        print('Privacy Policy"');
                      },
                    text: "official website.",
                    style:  TextStyle(
                      fontSize: MediaQuery.of(context).size.width < 360 ? 16 :18,
                      color: Kolors.primary,
                    ),
                  ),
                ],
              ),
            ),
            if (inDialog) ...[
              const SizedBoxH20(),
              Row(
                children: [
                  Checkbox(
                      value: agreed,
                      onChanged: (val) =>
                          setState(() => agreed = val ?? false)),
                   Expanded(
                    child: Text(
                      "I agree with  above mentioned Terms of services and privacy policy.",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width < 360 ? 14 :16,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBoxH20(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RoundedButton(
                    onTap: () {
                      if (agreed) {
                        AutoRouter.of(context)
                            .replace(const WelcomeScreenRoute());
                      } else {
                        Fluttertoast.showToast(
                            msg:
                                "Please accept Terms and privacy policy to continue.",
                            backgroundColor: Kolors.grey);
                      }
                    },
                    text: "Continue"),
              ),
              const SizedBoxH10(),
            ]
          ],
        ),
      ),
    );
  }
}
