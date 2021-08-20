import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 330,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  color: Color(0xff5BBB25),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
            ),
            Container(
              padding: EdgeInsets.only(top: 50, left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back, color: Colors.white)),
                    ],
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Center(
                      child: Column(
                        children: [
                          CircleAvatar(

                            backgroundImage: AssetImage("assets/pic.jpeg"),
                            radius: 50,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top:.0),
                            child: Text("Sulav Parajuli",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          ),


                          Padding(
                            padding: const EdgeInsets.only(top:1.0),
                            child: Text("9869812111",style: TextStyle(color: Colors.white,fontSize: 15),),
                          ),
                        ],
                      ),
                    ),
                  ),

                  _mainBox(),

                  _card()


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mainBox() {
    return Padding(
      padding: const EdgeInsets.only(left: 11.0, right: 10, top: 10),
      child: Card(
        child: Column(
          children: [
            Container(
              color: Color(0xffffffff),
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

                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Icon(CupertinoIcons.bitcoin,color: Colors.green,),
                      ),
                      // reward point row
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0,top: 20,bottom: 20),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("20.0",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("Reward Points",textAlign: TextAlign.start,)
                              ],
                            ),


                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _card() {
    return Padding(
      padding: const EdgeInsets.only(left: 11.0, right: 10, top: 1),
      child: Card(
        child: Column(
          children: [
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.document_scanner,size: 30,color: Colors.green,),
              ),
              title: Text("My Information"),
              subtitle: Text("View your document information"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),

            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.phone_android,size: 30,color: Colors.green,),
              ),
              title: Text("Devices & Credentials"),
              subtitle: Text("Manage devices, credentials and IDs"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),


            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.food_bank,size: 30,color: Colors.green,),
              ),
              title: Text("My Bank Accounts"),
              subtitle: Text("Connected Banks"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),


            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.lock,size: 30,color: Colors.green,),
              ),
              title: Text("My Limit"),
              subtitle: Text("View your transaction limit"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),


            ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.logout,size: 30,color: Colors.green,),
              ),
              title: Text("Logout"),
              subtitle: Text("Logout from eSewa app"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        )
      ),
    );
  }
}
