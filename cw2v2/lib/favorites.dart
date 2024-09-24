import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {

  final Function(String) switchScreen;

  const Favorites({super.key, required this.switchScreen});



  @override
  State<Favorites> createState() {
    return _FavoritesState();
  }
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(context) {
    return Scaffold();
  }
}
