import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'models/recipes_list.dart';
import 'data/recipes.dart';

class HomeScreen extends StatefulWidget {
  final Function(String, RecipesList?) switchScreen;

  const HomeScreen({super.key, required this.switchScreen});

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  double containerSpacing = 20;
  Color tempColor = Colors.black;
  Color _iconColor = Colors.white;


  Widget buildFoodItem(RecipesList recipe) {
    return InkWell(
      onTap: () {
        widget.switchScreen('details', recipe);
      },
      child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: tempColor,
              image: DecorationImage(
                image:
                    AssetImage(recipe.getImagePath()), 
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(47.0),
            ),
            width: 402,
            height: 250,
          ),
          Positioned(
            bottom: 15,
            left: 25,
            child: Text(
              recipe.chosenRecipe,
              style: GoogleFonts.oxygen(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w900,
                backgroundColor: const Color.fromARGB(204, 72, 72, 72),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 25,
            child: IconButton(
              icon: const Icon(
                Icons.favorite,
              ),
              onPressed: () {
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipe APP',
          style: GoogleFonts.oxygen(),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),

              ...recipes.map((recipe) => Column(
                    children: [
                      buildFoodItem(recipe),
                      const SizedBox(height: 20), 
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
