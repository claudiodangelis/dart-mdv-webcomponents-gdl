import 'dart:html';
import 'package:web_ui/web_ui.dart';

class SocialButtonComponent extends WebComponent {
  String displayedname;
  String network;
  String username;

  String get bg {
    return networks[network]['bg'];
  }

  String get name {
    if (displayedname == null) return 'me';
    return displayedname;
  }

  String get url {
    return 'https://' + networks[network]['domain'] + '/' + username;
  }

  Map networks = {
    "twitter":{
      "domain":"twitter.com",
      "bg":"#00aced"
    },
    "google+":{
      "domain":"plus.google.com",
      "bg":"#d34836"
    },
    "facebook":{
      "domain":"fb.me",
      "bg":"#3b5998"
    }
  };
}

void main() {}