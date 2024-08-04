import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offNamed('/');
          },
          child: Text('Cleck me'),
        ),
      ),
    );
  }
}
