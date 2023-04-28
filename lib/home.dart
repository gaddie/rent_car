import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'description.dart';
import 'menu.dart';

var carLink = '';
var carName = '';
var carTagIndex = '';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Menu()));
                    },
                    child: Container(
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text('Rent a car',
                    style: GoogleFonts.getFont(
                      'Teko',
                      fontSize: 50,
                      color: Colors.teal,
                    )),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: TextField(decoration: kTextFieldDecoration)),
            TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.teal,
              tabs: [
                Tab(
                  text: 'Car',
                  icon: Icon(
                    Icons.directions_car,
                  ),
                ),
                Tab(
                  text: 'Truck',
                  icon: Icon(Icons.local_shipping),
                ),
                Tab(
                  text: 'Van',
                  icon: Icon(
                    Icons.airport_shuttle,
                  ),
                ),
                Tab(
                  text: 'Motobike',
                  icon: Icon(
                    Icons.sports_motorsports,
                  ),
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(children: [
                    Expanded(
                      child: ListView(children: [
                        ReusableCard(
                          carTag: 'car1',
                          name: 'Honda fit',
                          link:
                              'https://www.motortrend.com/uploads/sites/10/2021/06/2020-honda-fit-ex-5door-hatchback-angular-front.png?fit=around%7C875:492.1875',
                        ),
                        ReusableCard(
                          carTag: 'car2',
                          name: 'Chevrolet Spark',
                          link:
                              'https://www.motortrend.com/uploads/sites/10/2019/09/2020-chevrolet-spark-ls-5door-hatchback-angular-front.png?fit=around%7C875:492.1875',
                        ),
                        ReusableCard(
                          carTag: 'car3',
                          name: 'Hyundai',
                          link:
                              'https://www.motortrend.com/uploads/sites/10/2019/04/2019-hyundai-accent-se-sedan-angular-front.png?fit=around%7C875:492.1875',
                        ),
                      ]),
                    ),
                  ]),
                  Column(children: [
                    Expanded(
                      child: ListView(children: [
                        ReusableCard(
                          carTag: 'car1',
                          name: 'Toyota hilux',
                          link:
                              'https://www.motortrend.com/uploads/sites/5/2021/02/Arctic-Trucks-Toyota-Hilux-Invincible-AT35-01.jpg?fit=around%7C875:492',
                        ),
                      ]),
                    ),
                  ]),
                  Column(children: [
                    Expanded(
                      child: ListView(children: [
                        ReusableCard(
                          carTag: 'car',
                          name: 'Honda fit',
                          link:
                              'https://www.motortrend.com/uploads/sites/10/2021/06/2020-honda-fit-ex-5door-hatchback-angular-front.png?fit=around%7C875:492.1875',
                        ),
                      ]),
                    ),
                  ]),
                  Column(children: [
                    Expanded(
                      child: ListView(children: [
                        ReusableCard(
                          carTag: 'car3',
                          name: 'Honda fit',
                          link:
                              'https://www.motortrend.com/uploads/sites/10/2021/06/2020-honda-fit-ex-5door-hatchback-angular-front.png?fit=around%7C875:492.1875',
                        ),
                      ]),
                    ),
                  ]),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.name, required this.link, required this.carTag});

  String name;
  String link;
  String carTag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        carLink = link;
        carName = name;
        carTagIndex = carTag;
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Description(
                      link: carLink,
                      name: carName,
                      tag: carTagIndex,
                    )));
      },
      child: Card(
        elevation: 5.0,
        color: kBackgroundColor,
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Stack(children: [
                  Hero(
                    tag: 'background$carTag',
                    child: Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.teal,
                              borderRadius: BorderRadius.circular(10)),
                          width: double.infinity,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                  Hero(
                    tag: carTag,
                    child: Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            link,
                            height: 150,
                            width: 250,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 100, left: 10),
                      child: Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(name,
                            style: GoogleFonts.getFont(
                              'Teko',
                              fontSize: 30,
                            )),
                      ))
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
