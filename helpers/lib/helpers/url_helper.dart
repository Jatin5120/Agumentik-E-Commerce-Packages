import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class UrlHelper {
  UrlHelper._();

  static Future _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      log("Cannot Launch $url");
    }
  }

  static Future openLink(String url) => _launchUrl(url);

  static Future openMail(String mail) async {
    // final String sub =
    //     subject == null ? '' : "subject=${Uri.encodeFull(subject)}";
    // final String bod = body == null ? '' : "body=${Uri.encodeFull(body)}";
    // final String parameter = (sub == '' && bod == '') ? '' : '?$sub&$bod';
    // final String url = "mailto:$mail$parameter";

    String url = "mailto:$mail";

    await _launchUrl(url);
  }

  static Future openCall(String phone) async {
    String url = 'tel:$phone';
    await _launchUrl(url);
  }

  static Future openSms(String phone) async {
    String url = 'sms:$phone';
    await _launchUrl(url);
  }
}
