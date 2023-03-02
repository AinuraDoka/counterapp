import 'package:flutter/material.dart';

import 'main.dart';

class SecondPage extends StatelessWidget {
  SecondPage({
    this.sanAlypKel,
  });
  int sanAlypKel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Тапшырма 2',
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 150,
                  vertical: 15,
                ),
                child: Text(
                  'San:$sanAlypKel',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: Icon(
                Icons.skip_next,
                size: 55,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
