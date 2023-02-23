import 'package:flutter/material.dart';

AppBar courseappBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 50,
        width: 60,
        child: Image(image: AssetImage("assets/futuresity.png"),fit: BoxFit.cover,)),
    
  ));
}
