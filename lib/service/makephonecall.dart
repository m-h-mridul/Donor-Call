import 'package:url_launcher/url_launcher.dart';

launchPhoneCall(String phoneNumber) async {
  String url = 'tel:017-383-3837';
  Uri url2 = Uri(scheme: "tel", path: phoneNumber);
  if (await launchUrl(url2)) {
  } else {
    throw 'Could not launch $url';
  }
}
