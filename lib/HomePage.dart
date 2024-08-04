import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'StateController/CounterStateController.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterStateController C = Get.put(CounterStateController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Click: ${C.count}',
                style: TextStyle(color: Colors.brown, fontSize: 30),
              ),
            ),
            SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    C.decrement();
                  },
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: () {
                    C.increment();
                  },
                  child: Icon(Icons.add),
                )
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     C.increment();
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
