import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';
class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff416d6d),
      child: Stack(
        children: [
          first(),
          Positioned(
              top: 180,

              child: second()),
          //third()
        ],
      ),
    );
  }

  Widget first() {
    return Positioned(

      top: 40,
      left: 10,
      child: Container(
        decoration: BoxDecoration(color: Color(0xff416d6d)),
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('image/myimage.jpg'),),
            SizedBox(width: 30,),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text("Oshan Khan",style: TextStyle(fontSize: 20,color: Colors.white),),
                  Text("Active Status",style: TextStyle(color: Colors.white),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget second() {
    return Container(
      width: 170,
      height: 400,
      child: ListView.builder(
        itemCount: drawerItems.length,
          itemBuilder:(contex,index)

          {
            return Container(
              width: 50,
              height: 50,
              child: (
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(drawerItems[index]['icon']),
                  Text(drawerItems[index]['title'])
                ],
              )
              ),
            );
          } ),
    );
  }


  //third() {}
}
