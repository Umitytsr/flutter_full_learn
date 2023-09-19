
import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin{
  void launchUrl(Uri url) async {  
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    }
  }
}