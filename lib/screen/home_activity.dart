import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youga_application/screen/youga_class.dart';

class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('For you',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),
        actionsIconTheme: IconThemeData(color: Colors.black),
        actions: [
          Card(
            elevation: 5,
            child: IconButton(onPressed: (){},icon: Icon(Icons.home),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Padding(
          padding: EdgeInsets.only(left: 22,right: 22,top: 30  ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/3.4,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Image.network('https://images.pexels.com/photos/14579361/pexels-photo-14579361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,),
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
                      height: MediaQuery.of(context).size.height/9,
                      width: MediaQuery.of(context).size.width/1.2,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)),color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('FEATURED'),
                            SizedBox(height: 5,),
                            Text('Health Youga:Beginner',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                            SizedBox(height: 5,),
                            Text('A Well-suited class for four goals'),
                          ],
                        ),
                      ),
                    ),
                  ))
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 50,right: 50,top: 110,bottom: 50),
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
                      height: MediaQuery.of(context).size.height/25,
                      width: MediaQuery.of(context).size.width/6.5,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),color: Colors.white),
                      child: Center(
                        child: TextButton(onPressed: (){},child: Text('Styles',style: TextStyle(color: Colors.black),),),
                      ),
                    ),
                  ),
                  TextButton(onPressed: (){},child: Text('Classes',style: TextStyle(color: Colors.black),),),
                  TextButton(onPressed: (){},child: Text('Teachers',style: TextStyle(color: Colors.black),),),
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
                  height: MediaQuery.of(context).size.height/7.2,
                  width: MediaQuery.of(context).size.width,
decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),
),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10,right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/9.2,
                          width: MediaQuery.of(context).size.width/4.6,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            child: Image.network('https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,),

                          ),
                        ),
                        VerticalDivider(),
                        Padding(
                          padding: EdgeInsets.only(top: 20,right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Helath Youga',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Text('Explore your inner landscape'),
                              SizedBox(height: 10,),
                              Text('Through Youga posess'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Youga()));
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        7.0), // Adjust the radius value as needed
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height/7.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,right: 20),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/9.2,
                            width: MediaQuery.of(context).size.width/4.6,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              child: Image.network('https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,),

                            ),
                          ),
                          VerticalDivider(),
                          Padding(
                            padding: EdgeInsets.only(top: 20,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Helath Youga',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text('Explore your inner landscape'),
                                SizedBox(height: 10,),
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
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Youga()));
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        7.0), // Adjust the radius value as needed
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height/7.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,right: 20),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/9.2,
                            width: MediaQuery.of(context).size.width/4.6,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              child: Image.network('https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,),

                            ),
                          ),
                          VerticalDivider(),
                          Padding(
                            padding: EdgeInsets.only(top: 20,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Helath Youga',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text('Explore your inner landscape'),
                                SizedBox(height: 10,),
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
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Youga()));
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        7.0), // Adjust the radius value as needed
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height/7.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,right: 20),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/9.2,
                            width: MediaQuery.of(context).size.width/4.6,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              child: Image.network('https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,),

                            ),
                          ),
                          VerticalDivider(),
                          Padding(
                            padding: EdgeInsets.only(top: 20,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Helath Youga',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text('Explore your inner landscape'),
                                SizedBox(height: 10,),
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
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Youga()));
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        7.0), // Adjust the radius value as needed
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height/7.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,right: 20),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/9.2,
                            width: MediaQuery.of(context).size.width/4.6,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              child: Image.network('https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,),

                            ),
                          ),
                          VerticalDivider(),
                          Padding(
                            padding: EdgeInsets.only(top: 20,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Helath Youga',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text('Explore your inner landscape'),
                                SizedBox(height: 10,),
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
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Youga()));
                },
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        7.0), // Adjust the radius value as needed
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height/7.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7.0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 10,right: 20),
                      child: Row(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height/9.2,
                            width: MediaQuery.of(context).size.width/4.6,
                            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              child: Image.network('https://images.pexels.com/photos/4024906/pexels-photo-4024906.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,),

                            ),
                          ),
                          VerticalDivider(),
                          Padding(
                            padding: EdgeInsets.only(top: 20,right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Helath Youga',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),
                                Text('Explore your inner landscape'),
                                SizedBox(height: 10,),
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

    ));
  }

}