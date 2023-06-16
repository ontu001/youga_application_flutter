import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youga_application/screen/home_activity.dart';

class Youga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeActivity()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/2.6,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    child: Image.network('https://images.pexels.com/photos/14579361/pexels-photo-14579361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,),
                  ),
                ),
                Positioned(
                    bottom: -590,
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the radius value as needed
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.height/1.5,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Health Youga Class',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Text('For Beginners',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/352196080_216974337901186_4376686064516725012_n.png?_nc_cat=109&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEN5FcxS4iSiuAiGH2xDb1ZCVBounIHnB8JUGi6cgecH0uVmrLR93RqLMam1JbYee7lfPjf-VjBQS41sDy8KqnB&_nc_ohc=sdrkQI3C-BYAX84WsnT&_nc_ht=scontent.fdac135-1.fna&oh=03_AdT72m5n3T2lgvKPnKHxI0sPWueKQEiSdGWKWJ5HrDsO2Q&oe=64AEC67F',fit: BoxFit.cover,),
                                      ),
                                      Positioned(
                                        left: 25,
                                        child: Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.network('https://scontent.fdac135-1.fna.fbcdn.net/v/t1.15752-9/352196080_216974337901186_4376686064516725012_n.png?_nc_cat=109&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEN5FcxS4iSiuAiGH2xDb1ZCVBounIHnB8JUGi6cgecH0uVmrLR93RqLMam1JbYee7lfPjf-VjBQS41sDy8KqnB&_nc_ohc=sdrkQI3C-BYAX84WsnT&_nc_ht=scontent.fdac135-1.fna&oh=03_AdT72m5n3T2lgvKPnKHxI0sPWueKQEiSdGWKWJ5HrDsO2Q&oe=64AEC67F',fit: BoxFit.cover,),
                                      ),)
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 70),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Rohanur Rahman',style: TextStyle(fontWeight: FontWeight.bold),),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('mdrohanurrahmanontu@hotmail.com'),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 10,),
                              Text('Yoga is a type of exercise in which you move your body into various\npositions in order to become more fit or flexible, to improve your breathing, and to relax your mind.'),
                              SizedBox(height: 20,),
                              Text('Read More..',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              SizedBox(height: 7,),
                              Divider(   thickness: 4.5,color: Colors.black,),
                              SizedBox(height: 20,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('24 Lesson',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                      SizedBox(height: 7,),
                                      Text('2 weeks - level 2',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                    ],
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height/18,
                                    width: MediaQuery.of(context).size.width/3.5,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Colors.amber),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 14,right: 14,top: 5,bottom: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Start',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                                          CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.white,
                                            child: IconButton(onPressed: (){},icon: Icon(Icons.play_arrow,color: Colors.grey,),),
                                          ),
                                        ],
                                      )
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
