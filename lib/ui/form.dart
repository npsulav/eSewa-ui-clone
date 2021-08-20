import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 150,
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
                      GestureDetector(onTap: (){
                        Navigator.pop(context);
                      },child: Icon(Icons.arrow_back, color: Colors.white)),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "Topup",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  _mainBox(),
                  _inputBox(),
                  _promoCode(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: MaterialButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("This is just a demo!",),backgroundColor: Colors.green,));
                        },
                        child: Container(
                          width: double.maxFinite,
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Center(child: Text("Proceed",style: TextStyle(color: Colors.white),)),
                            ))),
                  ),
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
      padding: const EdgeInsets.only(left: 11.0, right: 10, top: 30),
      child: Card(
        child: Column(
          children: [
            Container(
              color: Color(0x00000000),
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
                              child: Icon(Icons.account_balance_wallet_outlined,
                                  color: Colors.green),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "NPR 35,000.00",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Balance",
                                  textAlign: TextAlign.start,
                                )
                              ],
                            )
                          ],
                        ),
                      ),

                      // reward point row
                      Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(
                            Icons.refresh_outlined,
                            color: Colors.green,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _inputBox() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Mobile(10 digits)/Landline(8 digits)",
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 300,
                decoration: BoxDecoration(color: Colors.black12),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3.0),
                child: Container(
                  padding: EdgeInsets.all(12),
                  color: Colors.green,
                  child: Icon(
                    Icons.contact_mail_sharp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _promoCode() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 15),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.green),
        ),
        child: Text(
          "Have a Promo code?",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
