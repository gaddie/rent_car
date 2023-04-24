import 'package:flutter/material.dart';
import 'package:rent_car/home.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Container(
        child: Column(
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
                // Padding(
                //     padding: EdgeInsets.only(top: 370, left: 20),
                //     child: Align(
                //       alignment: AlignmentDirectional.topStart,
                //       child: Text(
                //           "Lorem Ipsum is simply dummy text of the printing\n"
                //           " industry. Lorem Ipsum has been the industry's \n "
                //           "standard dummy text ever since the 1500s.\n"
                //           " when an unknown printer took a galley of type\n"
                //           " and scrambled it to make a type specimen book.",
                //           style: GoogleFonts.getFont(
                //             'Teko',
                //             fontSize: 20,
                //             color: Colors.white,
                //           )),
                //     ))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
