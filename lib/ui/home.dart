
import 'package:clone/ui/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'form.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:Container(
        height: 70.0,
        width: 70.0,
        child: FittedBox(
          child:  FloatingActionButton(backgroundColor: Colors.green,child: Icon(Icons.dashboard_customize,color: Colors.white,size: 35,), onPressed: () {}),

        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.home,color: Colors.green,),
                    ),
                    Text("Home")
                  ],
                ),
                Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.receipt_long,color: Colors.green,),
                    ),
                    Text("Statement")
                  ],
                ),
                SizedBox(width: 40), // The dummy child
                Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.payment,color: Colors.green,),
                    ),
                    Text("My Payment")
                  ],
                ),
                Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.local_offer,color: Colors.green,),
                    ),
                    Text("Offers")
                  ],
                ),
              ],
            ),
          )),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 210,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: Color(0xff5BBB25),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)
                  )
              ),
            ),
            Container(

              child: Column(
                children: [
                  _topBar(),
                  _mainBox(),
                  _menuCard(),
                  _popularServices("Popular Services"),
                  _popularServices("Newest Services"),
                  _popularServices("Old Services"),


                ],
              ),
            ),
          ],
        ),
      ),
    );


  }
  Widget _topBar() {
    return  Padding(
      padding: const EdgeInsets.only(top:38,left: 10,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c) => ProfileScreen()));
            },
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/pic.jpeg"),
            ),
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(CupertinoIcons.search,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(CupertinoIcons.bell,color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert,color: Colors.white,),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _mainBox() {
    return Padding(
      padding: const EdgeInsets.only(left: 11.0,right: 10,top: 10),
      child: Card(
        child: Column(
          children: [
            Container(
              color: Color(0x0f000000),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // npr row
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(Icons.account_balance_wallet_outlined,color: Colors.green),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NPR 35,000.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("Balance",textAlign: TextAlign.start,)
                              ],
                            )
                          ],
                        ),
                      ),

                      // reward point row
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("20.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("Reward Points",textAlign: TextAlign.start,)
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(CupertinoIcons.bitcoin,color: Colors.green,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            Container(
                color: Color(0xffffffff),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.sensor_door_outlined),
                          ),
                          Text("Load Money",style: TextStyle(color: Colors.black),)
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.send_to_mobile),
                          ),
                          Text("Send Money",style: TextStyle(color: Colors.black),)
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(CupertinoIcons.money_dollar_circle_fill),
                          ),
                          Text("Bank Transfer",style: TextStyle(color: Colors.black),)
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.money),
                          ),
                          Text("Remittance",style: TextStyle(color: Colors.black),)
                        ],
                      )
                    ],
                  ),
                )
            ),
          ],
        ),

      ),
    );
  }

  Widget _menuCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Card(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (c) => FormScreen()));
                      },child: _menuItem(Icons.phone_android,"Topup")),
                      _menuItem(Icons.lightbulb_outline,"Electricity"),
                      _menuItem(Icons.water_sharp,"Khanepani"),
                      _menuItem(Icons.router,"Internet"),
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.only(top:30,left: 8,right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _menuItem(Icons.airplanemode_active,"Airplane"),
                      _menuItem(Icons.food_bank,"Payment"),
                      _menuItem(Icons.foundation,"Int'l Flights"),
                      _menuItem(Icons.cable,"Cable Car"),
                    ],
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }

  Widget _menuItem(image,title){
    return Column(
      children: [
        Icon(image,color: Colors.green,),
        Padding(
          padding: const EdgeInsets.only(top:15),
          child: Text(title),
        )
      ],
    );
  }

  Widget _popularServices(title) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _psIcon("assets/midas.png", "Midas Eclass"),
                  _psIcon("assets/fonepay.png", "Fonepay"),
                  _psIcon("assets/dish-home.png", "Dishhome"),
                  _psIcon("assets/simtv.png", "SIM Tv"),

                  _psIcon("assets/midas.png", "Midas Eclass"),
                  _psIcon("assets/fonepay.png", "Fonepay"),
                  _psIcon("assets/dish-home.png", "Dishhome"),
                  _psIcon("assets/simtv.png", "SIM Tv"),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _psIcon(image,title) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(image,width: 70,height: 70,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          )
        ],
      ),
    );
  }
}

