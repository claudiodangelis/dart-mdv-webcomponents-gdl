import 'dart:async';
import 'package:web_ui/web_ui.dart';

@observable
class CountdownComponent extends WebComponent {
  String inizio = '- - -';
  String fine = '- - -';
  int count;

  void avvio() {
    inizio = new DateTime.now().toString();
    new Timer.periodic(const Duration(seconds: 1), (Timer t){
      count--;
      if (count == 0) {
        fine = new DateTime.now().toString();
        t.cancel();
      }
    });
  }
}

void main() {}