import 'package:flutter/material.dart';
import 'package:rent_car/home.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'finalScreen.dart';

class Description extends StatefulWidget {
  final link;
  final name;
  final tag;

  Description({this.link, this.name, this.tag});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Stack(children: [
              Hero(
                tag: 'background$carTagIndex',
                child: Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 140),
                child: Hero(
                  tag: carTagIndex,
                  child: Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          carLink,
                          height: 200,
                          width: 300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75, left: 10),
                child: Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: Text(carName,
                      style: GoogleFonts.getFont(
                        'Teko',
                        fontSize: 40,
                        color: Colors.teal,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              ListView(children: [
                Padding(
                    padding: EdgeInsets.only(top: 370, left: 20, right: 20),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Column(children: [
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
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
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
                                width: 10,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HiringPage()));
                                    },
                                    child: Text('Hire'),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.orange),
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Icon(Icons.add),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.green),
                                  )),
                            ],
                          ),
                        )
                      ]),
                    )),
              ])
            ]),
          ),
        ],
      ),
    );
  }
}
