import 'package:flutter/material.dart';

class PhotoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'The $index Item',
              style: TextStyle(
                color: Colors.lightBlue
              ),
            ),
          );
        }),
      ),
    );
  }
}