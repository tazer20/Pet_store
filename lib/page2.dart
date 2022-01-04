import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project2/data.dart';
class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  List<Map> categories = [
    {'name': 'Cats', 'iconPath': 'image/cat.png'},
    {'name': 'Dogs', 'iconPath': 'image/dog.png'},
    {'name': 'Bunnies', 'iconPath': 'image/rabbit.png'},
    {'name': 'Parrots', 'iconPath': 'image/parrot.png'},
    {'name': 'Horses', 'iconPath': 'image/horse.png'}
  ];

  double xOffset=0;
  double yOffset=0;
  double scaleFactor=1;
  bool isvaluetrue=true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          SizedBox(height: 50,),
          Container(

            height: 60,
            width: MediaQuery.of(context).size.width,
            //color: Colors.red,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

               isvaluetrue? IconButton(
                    onPressed: (){
                      setState(() {
                        xOffset=230;
                        yOffset=150;
                        scaleFactor=0.6;
                        isvaluetrue=false;
                      });

                    },
                    icon: Icon(Icons.menu)
               ):IconButton(
                 icon: Icon(Icons.arrow_back_ios),
                 onPressed: (){
                   setState(() {
                     xOffset=0;
                     yOffset=0;
                     isvaluetrue=true;
                     scaleFactor=1;
                   });
                 },
               ),
                SizedBox(width: 60,),

                Container(
                  //color: Colors.red,
                  child: Column(
                    children: [
                      Text("Location "),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          Text("India,Gorakhpur")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(width: 70,),
                
                CircleAvatar(backgroundImage: AssetImage('image/myimage.jpg'),)
              ],
            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 646,
            decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(30)),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 15,

                  child: Container(
                    alignment: Alignment.center,
                    width: 328,
                    height: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.search),
                        Text("Search for the pet you want to adopt"),
                        Icon(Icons.menu)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 110,

                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      //color: Colors.yellow,
                      /*child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 10,),
                          box(),
                          box(),
                          box(),
                          box(),
                          box(),

                        ],
                      ),*/
                      child: ListView.builder(
                        itemCount: categories.length,

                        scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),

                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff416d6d),boxShadow: shadowList),
                                child: Image.asset(categories[index]['iconPath']),

                              ),
                              Text(categories[index]['name']),
                            ],
                          );
                          }),
                    )
                ),

                //The complex box is starting form here.

                Container(
                  margin: EdgeInsets.only(top: 230),
                  width: MediaQuery.of(context).size.width,
                  height: 419,
                  color: Colors.grey[200],
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      third(),
                      third(),
                      third()
                    ],
                  ),
                )



              ],
            ),
          ),

        ],

      ),
    );
  }

  Widget third() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 210,
      color: Colors.grey[200],
      child: Stack(
        children: [
          Positioned(
              top: 55,
              left: 20,

              child: Container(
                width: 320,
                height: 130,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30),boxShadow: shadowList),
              )
          ),
          Positioned(
              top: 30,
              left: 20,

              child: Container(
                width: 140,
                height: 180,
                decoration: BoxDecoration(color: Colors.blueGrey[300],borderRadius: BorderRadius.circular(30),boxShadow: shadowList),
              )
          ),
          Positioned(
              top: 0,
              left: 10,

              child: Image.asset('image/pet-cat1.png',height: 200,)),

        ],
      ),
    );
  }
}
