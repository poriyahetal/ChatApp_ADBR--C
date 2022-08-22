import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_template/domain/contacts/phone_contact_model.dart';
import 'package:flutter_template/domain/core/constants.dart';
import 'package:flutter_template/domain/core/secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:permission_handler/permission_handler.dart';

class Getters {
  static String getCurrentUserUid() {
    return FirebaseAuth.instance.currentUser!.uid;
  }

  static String getChatDocumentId(
    String user1Id,
    String user2Id,
  ) {
    if (user1Id.compareTo(user2Id) < 0) {
      return "$user1Id-$user2Id";
    } else {
      return "$user2Id-$user1Id";
    }
  }

  static String checkLocalContact(
      {required List<PhoneContact> phoneContacts,
      required String phoneNumber}) {
    PhoneContact contact = phoneContacts.firstWhere(
      (contact) =>
          contact.phoneNumber.contains(phoneNumber.replaceAll(" ", "")),
      orElse: () => PhoneContact.empty(),
    );
    if (contact.phoneNumber.contains(phoneNumber.replaceAll(" ", ""))) {
      print("true");
      return contact.name;
      ;
    } else {
      print("false");
      return '';
    }
  }

  static Future<bool> requestPermission(Permission permission) async {
    if (await permission.isGranted) {
      return true;
    } else {
      final PermissionStatus result = await permission.request();
      if (result == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }

  static Future<String> getTranslation(
      {required String text, required String languageCode}) async {
    const subscriptionKey = AzureTranslationConstants.subscriptionKey; //key 1
    // "ca4de7d5-02f3-47e7-ba4a-402415a13f80";
    const endpoint = AzureTranslationConstants.endPoint;

    const region = AzureTranslationConstants.region;
    const token = AzureTranslationConstants.token;
    var azureLang = languageCode;

    // try {
    
    //   if (result != null) {
    //     azureLang = result;
    //   }
    // } catch (e) {
    //   // error
    // }
    if (azureLang == "en") {
      return text;
    }
    final route = "translate?api-version=3.0&to=$azureLang";
    try {
      final result = await http.post(
        Uri.parse(endpoint + route),
        headers: {
          "Content-Type": "application/json",
          "Ocp-Apim-Subscription-Key": subscriptionKey,
          "Ocp-Apim-Subscription-Region": region,
          "Token": token,
        },
        body: jsonEncode([
          {"Text": text}
        ]),
      );
      if (result.statusCode == 200) {
        // print("There is no error");
        // print(result.body);
        var tempString = jsonDecode(result.body)[0]["translations"][0]["text"];
        return tempString as String;
      } else {
        // print("There is an error");
        print(result.body);
        return text;
      }
    } catch (e) {
      print("Something went wrong");
      print(e);
      return text;
    }
  }

  static String getLanguageFromCode(String langCode) {
    switch (langCode) {
      case "en":
        return "English";

      case "hi":
        return "हिन्दी";

      case "ta":
        return "தமிழ்";

      case "bn":
        return "বাংলা";

      case "mr":
        return "मराठी";

      case "te":
        return "తెలుగు";

      case "gu":
        return "ગુજરાતી";

      case "pa":
        return "ਪੰਜਾਬੀ";

      case "ml":
        return "മലയാളം";

      case "kn":
        return "ಕನ್ನಡ";

      case "as":
        return "অসমীয়া";

      case "ur":
        return "اُردُو";
    }
    return "English";
  }
}
