import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_1/buy.dart';
import 'package:flutter_profile_1/drawer.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ionicons/ionicons.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;
  List<String> CrausalImages = [
    "assets/images/mu1.jpg",
    "assets/images/mu2.jpg",
    "assets/images/mu3.jpg",
    "assets/images/mu4.jpg",
    "assets/images/mu5.jpg",
    // "assets/images/mu6.jpg",
    // "assets/images/mu7.jpg",
    // "assets/images/mu8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeeeeee),
        appBar: AppBar(
          title: Text("Dixcy Scott.PK"),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.red.shade200,
            showUnselectedLabels: true,
            onTap: (_index) {
              setState(() {
                index = _index;
              });
            },
            currentIndex: index,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.gradient), label: "category"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "profile"),
            ]),
        drawer: myDrawer(context),
        body: ListView(
          shrinkWrap: true,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 9 / 3,
                autoPlay: true,
                viewportFraction: 0.45,
              ),
              items: CrausalImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                      ),
                      child: Image.asset(
                        i,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            horizontalproductslider(),
            verticalproductslider(),
          ],
        ));
  }

  Widget horizontalproductslider() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Most Liked Products",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View more..."),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    child: Card(
                      margin: EdgeInsets.all(8.0),
                      elevation: 5.0,
                      child: Container(
                        height: 220.0,
                        child: AspectRatio(
                          aspectRatio: 1 / 1,
                          child: Image.asset("assets/images/muu1.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Chip(
                      backgroundColor: Colors.black,
                      label: Text(
                        "50%",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget verticalproductslider() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Latest Collections",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View more..."),
              ),
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: 8,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: Card(
                            margin: EdgeInsets.all(8.0),
                            elevation: 5.0,
                            child: Container(
                              height: 220.0,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image.asset("assets/images/mu5.jpg"),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          child: Chip(
                            backgroundColor: Colors.black,
                            label: Text(
                              "50%",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dixcy New Collection For Gents Gift Amaze",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          SizedBox(height: 5.0),
                          RatingBar.builder(
                            ignoreGestures: false,
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 28.0,
                            glow: false,
                            // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "RS: 3500",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.0),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return buy();
                              }));
                            },
                            child: Text("Buy Now"),
                            color: Colors.red,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            })
      ],
    );
  }
}
