
import 'package:evenie/auth/pageview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:flutter/widgets.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color(0xffecf0f1),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xffF20665),
            icon: Icon(Icons.home,color: Colors.white,),

            label: 'Home',

          ),

          BottomNavigationBarItem(
            backgroundColor: Color(0xffF20665),
            icon: Icon(Icons.favorite,color: Colors.white,),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffF20665),
            icon: Icon(Icons.airplane_ticket,color:Colors.white,size: 20,),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffF20665),
            icon: Icon(Icons.person,color:Colors.white),
            label: 'Profile',
          ),
        ],
      ),
body: SingleChildScrollView(
  child: Column(
    children: [
Container(
  child: Stack(
    children: [
      Container (
        color: Colors.white,

        child: Column(
          children: [
            Container(

              height: 100,
              decoration: BoxDecoration(
                  color:Color(0xffFC267C),

                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular( 16.0)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.all(20)),
                        Text('Evenie.',style: TextStyle(
                            fontSize: 25,color: Colors.white,fontStyle: FontStyle.italic
                        ),),

                      ]
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(padding: EdgeInsets.all(5)),
                          Icon(Icons.search,color: Colors.white,)
                        ],
                      )
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.notifications_active_outlined,color: Colors.white,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
      SizedBox(
        height: 10,
      ),
      Container (
        child: Column(
          children: [
            Container(
              height: 70,
              width: 250,
              decoration: BoxDecoration(
                  color:Color(0xffF20665),
                  borderRadius: BorderRadius.circular(
                    10
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Text('Find through the map',style: TextStyle(
                            fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold
                        ),),
                        Text('New York, US',style: TextStyle(
                            fontSize: 12,color: Colors.white
                        ),),
                      ],
                    ),
                  ),

                  Expanded(
                      flex: 1,
                      child: Row(

                        children: [

                         Image.network('https://cdn.pixabay.com/photo/2017/04/19/10/24/vinyl-2241789_960_720.png',width: 40,)
                        ],
                      )
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        child: Row(
          children: [
            Expanded(
              flex:3,
                child: Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text('Popullar Events',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 18),)
              ],
            )),


              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                        decoration: BoxDecoration(

                            border: Border(

                              bottom: BorderSide(
                                color:Color(0xffF20665),
                                width: 5,
                              )
                            )
                        ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 0),
                      ),
                      onPressed: () {},
                      child: const Text('View more',style: TextStyle(fontSize: 14,color: Color(0xffF20665),),),
                    ),
            ),

                  ],
                ),
              )
          ],
        ),
      ),

      Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        height: 240,
        padding: EdgeInsets.all(20),
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[

            Container(
              width: 220,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
color: Colors.white,

              ),
              child: Column(
                children: [
                  Container(

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),

                    ),

                    child: Image.network('https://cdn.pixabay.com/photo/2016/12/17/07/32/hip-hop-1912921_960_720.jpg'),
                  ),
                  Container(

                    color: Colors.white,
                    height: 40,


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text('2000s Hip Hop Night',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex:2,child: Row(
                              children: [
                                Icon(Icons.location_on_outlined, color:Color(0xffF20665),),
                                Text('Brooklyn',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            )),
                            Expanded(
                                flex: 2,
                                child: Row(
                              children: [
                                Icon(Icons.date_range, color:Color(0xffF20665),),
                                Text('05:00 PM',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 20,),
            Container(
              width: 220,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,

              ),
              child: Column(
                children: [
                  Container(

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),

                    ),

                    child: Image.network('https://cdn.pixabay.com/photo/2017/08/07/11/02/street-dancer-2602633_960_720.jpg'),
                  ),
                  Container(

                    color: Colors.white,
                    height: 40,


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text('2000s Hip Hop Night',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex:2,child: Row(
                              children: [
                                Icon(Icons.location_on_outlined, color:Color(0xffF20665),),
                                Text('Brooklyn',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            )),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Icon(Icons.date_range, color:Color(0xffF20665),),
                                    Text('05:00 PM',style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 20,),
            Container(
              width: 220,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,

              ),
              child: Column(
                children: [
                  Container(

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),

                    ),

                    child: Image.network('https://cdn.pixabay.com/photo/2015/02/11/21/54/concert-633110_960_720.jpg'),
                  ),
                  Container(

                    color: Colors.white,
                    height: 40,


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text('2000s Hip Hop Night',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex:2,child: Row(
                              children: [
                                Icon(Icons.location_on_outlined, color:Color(0xffF20665),),
                                Text('Brooklyn',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            )),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Icon(Icons.date_range, color:Color(0xffF20665),),
                                    Text('05:00 PM',style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 20,),
            Container(
              width: 220,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,

              ),
              child: Column(
                children: [
                  Container(

                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),

                    ),

                    child: Image.network('https://cdn.pixabay.com/photo/2017/03/20/18/22/hip-hop-2159913_960_720.jpg'),
                  ),
                  Container(

                    color: Colors.white,
                    height: 40,


                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Text('2000s Hip Hop Night',style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex:2,child: Row(
                              children: [
                                Icon(Icons.location_on_outlined, color:Color(0xffF20665),),
                                Text('Brooklyn',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            )),
                            Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Icon(Icons.date_range, color:Color(0xffF20665),),
                                    Text('05:00 PM',style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],

        ),
      ),
SizedBox(height: 20,),
      Container(
        child: Row(
          children: [
            Expanded(
                flex:3,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Text('Featured',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87,fontSize: 18),)
                  ],
                )),


            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    decoration: BoxDecoration(

                        border: Border(

                            bottom: BorderSide(
                              color:Color(0xffF20665),
                              width: 5,
                            )
                        )
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 0),
                      ),
                      onPressed: () {},
                      child: const Text('View more',style: TextStyle(fontSize: 14,color: Color(0xffF20665),),),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Container(
        width: 320,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,

        ),
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),

              ),

              child: Image.network('https://cdn.pixabay.com/photo/2016/12/17/07/32/hip-hop-1912921_960_720.jpg'),
            ),
            Container(

              color: Colors.white,
              height: 40,


              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text('2000s Hip Hop Night',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex:2,child: Row(
                        children: [
                          Icon(Icons.location_on_outlined, color:Color(0xffF20665),),
                          Text('Brooklyn',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      )),
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Icon(Icons.date_range, color:Color(0xffF20665),),
                              Text('05:00 PM',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 20,),
      Container(
        width: 320,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,

        ),
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),

              ),

              child: Image.network('https://cdn.pixabay.com/photo/2017/08/07/11/02/street-dancer-2602633_960_720.jpg'),
            ),
            Container(

              color: Colors.white,
              height: 40,


              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text('2000s Hip Hop Night',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex:2,child: Row(
                        children: [
                          Icon(Icons.location_on_outlined, color:Color(0xffF20665),),
                          Text('Brooklyn',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      )),
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Icon(Icons.date_range, color:Color(0xffF20665),),
                              Text('05:00 PM',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 20,),
      Container(
        width: 320,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,

        ),
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),

              ),

              child: Image.network('https://cdn.pixabay.com/photo/2015/02/11/21/54/concert-633110_960_720.jpg'),
            ),
            Container(

              color: Colors.white,
              height: 40,


              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text('2000s Hip Hop Night',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex:2,child: Row(
                        children: [
                          Icon(Icons.location_on_outlined, color:Color(0xffF20665),),
                          Text('Brooklyn',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      )),
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Icon(Icons.date_range, color:Color(0xffF20665),),
                              Text('05:00 PM',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      SizedBox(height: 20,),
      Container(
        width: 320,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,

        ),
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),

              ),

              child: Image.network('https://cdn.pixabay.com/photo/2017/03/20/18/22/hip-hop-2159913_960_720.jpg'),
            ),
            Container(

              color: Colors.white,
              height: 40,


              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text('2000s Hip Hop Night',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex:2,child: Row(
                        children: [
                          Icon(Icons.location_on_outlined, color:Color(0xffF20665),),
                          Text('Brooklyn',style: TextStyle(fontWeight: FontWeight.bold),),
                        ],
                      )),
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Icon(Icons.date_range, color:Color(0xffF20665),),
                              Text('05:00 PM',style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),


  ]
),),
    );
  }
}

