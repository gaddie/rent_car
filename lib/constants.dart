import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Search',
  prefixIcon: Icon(Icons.search),
  prefixIconColor: Colors.grey,
  hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
  contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);

const kBackgroundColor = Color(0xffA5D7E8);
