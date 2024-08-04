import 'package:get/get.dart';

class CounterStateController extends GetxController {
  var count = 0.obs; //obs=observation
  increment() {
    count++;
  }

  decrement() {
    count--;
  }
}
