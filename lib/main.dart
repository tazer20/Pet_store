

import 'package:flutter/material.dart';
import 'package:project2/page1.dart';
import 'package:project2/page2.dart';
void main(){
  runApp(app());
}
class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          page1(),
          page2()
        ],
      ),
    );
  }
}

