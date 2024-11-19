import 'package:flutter/material.dart';

class ShoppingBagView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Bag'),
      ),
      body: Center(
        child: Text(
          'Shopping Bag Page',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
