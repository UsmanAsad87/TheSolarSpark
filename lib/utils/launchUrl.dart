import 'package:url_launcher/url_launcher.dart';

launchEmailURL({required String email}) async {
  var url = 'mailto:$email';
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}

launchURL({required String Url}) async {
  var url = Url;
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}