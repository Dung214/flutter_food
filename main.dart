import 'package:flutter/material.dart';
import 'package:gd/trang2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  List iconImages = [
    "images/rau.jpg",
    "images/cafe.jpg",
    "images/banhmi.jpg",
    "images/oc.jpg",
  ];

  List tiltles = [
    "Veggie",
    "Cafe trứng",
    "Bánh mì",
    "Ốc",
  ];

  List tiltles2 = [
    "Rau mix",
    "Cafe",
    "Thập cẩm",
    "Ốc luộc",
  ];

  List tiltles3 = [
    "N1,900",
    "N2,300",
    "15000đ",
    "55000đ",
  ];

  final itemTitles =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20);

  final itemTitles2 =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 17);

  final itemTitles3 = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.redAccent, fontSize: 17);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delicious',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 35,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.navigation_outlined,
                    size: 35,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_checkout_outlined,
                    size: 35,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.history,
                    size: 35,
                  ),
                  label: "Home"),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.sort,
                      size: 40,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.shopping_bag_outlined,
                          color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Delicious",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "food for you",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 231, 229, 229),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search)),
                ),
                SizedBox(
                  height: 20,
                ),
                DefaultTabController(
                    length: 5,
                    initialIndex: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: TabBar(
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                text: 'Foods',
                              ),
                              Tab(
                                text: 'Drinks',
                              ),
                              Tab(
                                text: 'Sauces',
                              ),
                              Tab(
                                text: 'Snacks',
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: iconImages.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 400,
                                width: 190,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        tiltles[index],
                                        style: itemTitles,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        tiltles2[index],
                                        style: itemTitles2,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        tiltles3[index],
                                        style: itemTitles3,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 25,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => trang2()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(80),
                                    ),
                                    child: Container(
                                      width: 160,
                                      height: 300,
                                      child: Center(
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              "${iconImages[index]}"),
                                          radius: 80,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
