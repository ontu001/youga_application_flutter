import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youga_application/screen/profile.dart';
import 'package:youga_application/screen/youga_class.dart';
import 'contact.dart';

class HomeActivity extends StatelessWidget {

  _getOutOfApp(){
    if (Platform.isIOS){
      try{
        exit(0);
      } catch (e){
        print(e);
      }
    } else{
      try{
        SystemNavigator.pop();
      }catch (e){
        print(e);
      }
    }
  }

  exitDialogue(context){
    showDialog(context: context,
        builder: (context){
      return Dialog(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15.0)),color: Colors.grey),
          height: 170,
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Do you want to exit',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: ()=>_getOutOfApp(), child: Text('Yes')),
                    ElevatedButton(onPressed: ()=>Navigator.pop(context), child: Text('No')),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
        }
    );
  }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        exitDialogue(context);
        return Future.value(false);
      },
      child: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.blue,size: 30),
          elevation: 0,
          actionsIconTheme: IconThemeData(color: Colors.black),
          actions: [
            CircleAvatar(
              radius: 22,
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
              ),
            ),
          ],
        ),

        //==================drawer start

            drawer: Drawer(
              backgroundColor: Colors.white,
              child: ListView(
                children: [
                  DrawerHeader(
                    padding: EdgeInsets.all(0),
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.white70),
                      currentAccountPicture: CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/166f66122c499bc8daded90bcaa4833e-1683027548932/f1562857-6b60-48a0-842a-c0493cbfa839.png'),
                      ),
                      accountName: Text('Rohanur rahman',style: TextStyle(color: Colors.black),),
                      accountEmail: Text('Rohanurahmanontu@gmail.com',style: TextStyle(color: Colors.black)),
                    ),),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Youga()));
                    },
                    leading: Icon(Icons.category),title: Text('Class'),),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    },
                    leading: Icon(Icons.dashboard_customize),title: Text('Profile'),),
                  ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact()));
                    },
                    leading: Icon(Icons.category),title: Text('Contact'),),

                ],
              ),
            ),
            //drawer end===============

        body: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Padding(
            padding: EdgeInsets.only(left: 22, right: 22, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 3.4,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: Image.network(
                          'https://images.pexels.com/photos/14579361/pexels-photo-14579361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: -70,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                7.0), // Adjust the radius value as needed
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 9,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('FEATURED'),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Health Youga:Beginner',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text('A Well-suited class for four goals'),
                                ],
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 50, right: 50, top: 110, bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              7.0), // Adjust the radius value as needed
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 25,
                          width: MediaQuery.of(context).size.width / 6.5,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7.0)),
                              color: Colors.white),
                          child: Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Styles',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Classes',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Teachers',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        7.0), // Adjust the radius value as needed
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 7.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 9.2,
                            width: MediaQuery.of(context).size.width / 4.6,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              child: Image.network(
                                'https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          VerticalDivider(),
                          Padding(
                            padding: EdgeInsets.only(top: 20, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Helath Youga',
                                  style: TextStyle(
                                      fontSize: 26, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Explore your inner landscape'),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Through Youga posess'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Youga()));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          7.0), // Adjust the radius value as needed
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 7.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 9.2,
                              width: MediaQuery.of(context).size.width / 4.6,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                child: Image.network(
                                  'https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            VerticalDivider(),
                            Padding(
                              padding: EdgeInsets.only(top: 20, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Helath Youga',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Explore your inner landscape'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Through Youga posess'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Youga()));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          7.0), // Adjust the radius value as needed
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 7.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 9.2,
                              width: MediaQuery.of(context).size.width / 4.6,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                child: Image.network(
                                  'https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            VerticalDivider(),
                            Padding(
                              padding: EdgeInsets.only(top: 20, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Helath Youga',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Explore your inner landscape'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Through Youga posess'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Youga()));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          7.0), // Adjust the radius value as needed
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 7.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 9.2,
                              width: MediaQuery.of(context).size.width / 4.6,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                child: Image.network(
                                  'https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            VerticalDivider(),
                            Padding(
                              padding: EdgeInsets.only(top: 20, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Helath Youga',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Explore your inner landscape'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Through Youga posess'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Youga()));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          7.0), // Adjust the radius value as needed
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 7.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 9.2,
                              width: MediaQuery.of(context).size.width / 4.6,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                child: Image.network(
                                  'https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            VerticalDivider(),
                            Padding(
                              padding: EdgeInsets.only(top: 20, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Helath Youga',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Explore your inner landscape'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Through Youga posess'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Youga()));
                  },
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          7.0), // Adjust the radius value as needed
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 7.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 20),
                        child: Row(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 9.2,
                              width: MediaQuery.of(context).size.width / 4.6,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                                child: Image.network(
                                  'https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            VerticalDivider(),
                            Padding(
                              padding: EdgeInsets.only(top: 20, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Helath Youga',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Explore your inner landscape'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Through Youga posess'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
