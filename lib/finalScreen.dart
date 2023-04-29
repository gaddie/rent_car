import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

DateTime now = DateTime.now();
var year = now.year;
var day = now.day;

var numOfDays = 1;
var price = 3000;

class HiringPage extends StatefulWidget {
  @override
  State<HiringPage> createState() => _HiringPageState();
}

class _HiringPageState extends State<HiringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.teal,
          child: ListView(children: [
            Column(
              children: [
                Text(
                  'Number of Days',
                  style: GoogleFonts.getFont(
                    'Teko',
                    fontSize: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (numOfDays > 1) {
                            setState(() {
                              numOfDays--;
                            });
                          } else {
                            print('end');
                          }
                        },
                        child: Icon(Icons.remove),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '$numOfDays',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (numOfDays >= 3) {
                            print('excess');
                          } else {
                            setState(() {
                              numOfDays++;
                            });
                          }
                        },
                        child: Icon(Icons.add),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing\n"
                  " industry. Lorem Ipsum has been the industry's \n "
                  "standard dummy text ever since the 1500s.\n"
                  " when an unknown printer took a galley of type\n"
                  " and scrambled it to make a type specimen book.",
                  style: GoogleFonts.getFont(
                    'Teko',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Price',
                          style: GoogleFonts.getFont(
                            'Teko',
                            fontSize: 25,
                            color: Colors.white,
                          )),
                      Text(
                        'Ksh: $price',
                        style: GoogleFonts.getFont(
                          'Teko',
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Discount',
                          style: GoogleFonts.getFont(
                            'Teko',
                            fontSize: 25,
                            color: Colors.white,
                          )),
                      Text(
                        'Ksh: 0',
                        style: GoogleFonts.getFont(
                          'Teko',
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: GoogleFonts.getFont(
                            'Teko',
                            fontSize: 25,
                            color: Colors.white,
                          )),
                      Text(
                        'Ksh: 3000',
                        style: GoogleFonts.getFont(
                          'Teko',
                          fontSize: 45,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 50, left: 50),
                  child: Card(
                    elevation: 5,
                    child: Image.network(
                        'https://store-images.s-microsoft.com/image/apps.17182.13510798886601574.52710461-ded7-47e6-94ce-9a0e2d346c91.3481833f-0275-4263-8686-d91736c1295a?mode=scale&q=90&h=400&w=800&background=%23464646'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'HIRE CAR',
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange),
                          )),
                    ),
                  ]),
                ),
              ],
            ),
          ])),
    );
  }
}
