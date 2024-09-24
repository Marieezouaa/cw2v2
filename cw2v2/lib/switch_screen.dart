import 'package:flutter/material.dart';
import 'package:cw2v2/home_screen.dart';
import 'package:cw2v2/details_screen.dart';
import 'package:cw2v2/favorites.dart';
import 'models/recipes_list.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  String _activeScreen = "home";
  RecipesList? _selectedRecipe;


  void _switchScreen(String screenName, [RecipesList? recipe]) {
    setState(() {
      _activeScreen = screenName;
      _selectedRecipe = recipe;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;

    switch (_activeScreen) {
      case 'home':
        screenWidget = HomeScreen(switchScreen: _switchScreen);
        break;
      case 'details':
        screenWidget = DetailsScreen(
          switchScreen: _switchScreen,
          recipeTitle: _selectedRecipe!.chosenRecipe,
          recipeSteps: _selectedRecipe!.steps,
        );
        break;
      case 'favs':
        screenWidget = Favorites(switchScreen: _switchScreen);
        break;
      default:
        screenWidget = HomeScreen(switchScreen: _switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(143, 264, 198, 1),
                Color.fromRGBO(84, 116, 207, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
