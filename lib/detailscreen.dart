import 'package:flutter/material.dart';
import 'package:practicalte/appoinment.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 330,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color(0xff0066fb),
                borderRadius: BorderRadius.circular(8)),
            child: Stack(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
                    height: 30,
                    width: 25,
                    child: Image.asset(
                      'assest/backbutton.png',
                      color: Colors.white,
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 90,
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            'assest/doctorimage.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Stack(
                          children: [
                            Container(
                              child: const Text(
                                'Dr. Amelia Daniel',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              child: const Text(
                                'Dermatologist',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white30),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(

                  margin: const EdgeInsets.only(top: 210, left: 20),
                  child: Row(
                    children: [
                      //patients
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                child: Image.asset(
                                  'assest/teethicon.png',
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Text(
                                      '2000 +',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    child: Text(
                                      'Patient',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //experince
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                child: Image.asset(
                                  'assest/teethicon.png',
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Text(
                                      '5 Years',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    child: Text(
                                      'Experiences',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      //awards
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100)),
                              child: Center(
                                child: Image.asset(
                                  'assest/teethicon.png',
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Text(
                                      '10 +',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 22),
                                    child: Text(
                                      'Awards',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 270),
            color: Color(0xffd6e0ea),
            height: MediaQuery.of(context).size.height - 270,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    'Biography',
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20,top: 10),
                  child: Text(
                    'Maecenas faucibus mollis interdum.Nullamion quis risus eget urna mollis ornare vel eu leo ,et lenean eli lacinia elsha dom eth shel',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(left: 20,top: 30),
                  child: Text(
                    'Specializations',
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),

                //categories row
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 10);
                    },
                    itemBuilder: (context, index) {
                      return  Container(
                        height: 10,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xff0066fb),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                         child: Text(
                           'Dermatologist',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 12
                           ),
                         ),
                        ),
                      );
                    },
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(left: 20,top: 30),
                  child: Text(
                    'Schedule',
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),

                //categories row
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 20);
                    },
                    itemBuilder: (context, index) {
                      return  Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                              child: Text(
                                'Tue',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14
                                ),
                              ),
                              ),

                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  '11',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          )
                        ),
                      );
                    },
                  ),
                ),


                Container(
                  margin: EdgeInsets.only(left: 20,top: 30),
                  child: Text(
                    'Select Time',
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),

                //categories row
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  height: 200,

                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    itemCount: 10,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      childAspectRatio: 2.4,
                    ),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return  Container(
                        height: 10,
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                              '10:00 Am',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                        ),
                      );
                    },
                  ),
                ),


              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xffd6e0ea),
         // margin: EdgeInsets.only(bottom: 20,top:20),
             height: 60,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Image.asset('assest/favouriteicon.png',
                    color: Colors.blue,
                    height: 30,
                    width: 30,)
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Appoinment()));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width-110,
                  margin: EdgeInsets.only(left: 20,right: 20),
                  decoration: BoxDecoration(
                    color: Color(0xff0066fb),
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text('Book Appoinment',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold

                      ),
                      )
                  ),
                ),
              ),

            ],
          ),
        //other params
      ),
    );
  }
}
