import 'package:url_launcher/url_launcher.dart';

launchPhoneCall(String phoneNumber) async {
  var uri = Uri(scheme: 'tel', path: phoneNumber, query: '', fragment: '');

  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $uri');
  }
}
