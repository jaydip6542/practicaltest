import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:practicalte/detailscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Stack(
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xff0066fb),
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //profile image
                        Container(
                            height: 60,
                            width: 60,
                            child: Image.asset('assest/profileimage.png')),

                        Container(
                            height: 30,
                            width: 30,
                            child: Image.asset('assest/notification.png'))
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 140, left: 20, right: 20),
                    child: const Text(
                      'Good Morning and stay healthy',
                      style: TextStyle(fontSize: 18, color: Colors.white60),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 170, left: 20, right: 20),
                    child: const Text(
                      'Hi Jeny,how are you?',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 230, left: 20, right: 20),
              height: 60,
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //search icon
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 20,
                            width: 20,
                            child: Image.asset('assest/searchicon.png'),
                          ),
                          //text field
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            height: 16,
                            width: 200,
                            child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search Doctor or Sympton',
                                  hintStyle: TextStyle(
                                      fontSize: 14, color: Colors.black)),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //filter icon
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      height: 25,
                      width: 25,
                      child: Image.asset('assest/filtericon.png'),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 290),
              color: Color(0xffd6e0ea),
              height: MediaQuery.of(context).size.height - 250,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      'Categories',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),

                  //categories row
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    height: 90,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 40);
                      },
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(100)),
                                child: Center(
                                  child: Image.asset(
                                    'assest/teethicon.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  'Dental',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  //recomended doctors
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Recomended Doctors',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        Container(
                          child: Text(
                            'See All',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //recomended row
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 40);
                      },
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailScreen()));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: 90,
                                        width: 120,
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
                                        margin: EdgeInsets.only(left: 85, top: 10),
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(100)),
                                        child: Center(
                                          child: Image.asset(
                                            'assest/favouriteicon.png',
                                            height: 15,
                                            width: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 100, left: 10),
                                        child: Text(
                                          'Dr. Amelia Daniel',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.blue),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 117, left: 10),
                                        child: Text(
                                          'Ureology',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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

        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.messenger_outline, size: 30),
            Icon(Icons.person, size: 30),
          ],
          color: Colors.blue,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color(0xffd6e0ea),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),

      ),
    );

  }
}
