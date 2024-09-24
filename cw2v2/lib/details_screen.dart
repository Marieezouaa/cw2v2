import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Function(String) switchScreen;
  final String recipeTitle;
  final List<String> recipeSteps;

  const DetailsScreen({
    super.key,
    required this.switchScreen,
    required this.recipeTitle,
    required this.recipeSteps,
  });

  @override
  State<DetailsScreen> createState() {
    return _DetailsScreenState();
  }
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipeTitle),
        backgroundColor: const Color.fromARGB(255, 94, 76, 175),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                widget.switchScreen('home');
              },
            ),
            const SizedBox(height: 5),
            const Text(
              'Recipe Steps:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: widget.recipeSteps.length - 1, 
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      widget.recipeSteps[
                          index + 1],
                      style: const TextStyle(fontSize: 16),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
