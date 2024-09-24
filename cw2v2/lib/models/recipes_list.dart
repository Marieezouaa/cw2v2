class RecipesList {
  const RecipesList(this.chosenRecipe, this.steps);

  final String chosenRecipe;
  final List<String> steps;

  String getImagePath() {
    return steps[0]; 
  }

  List<String> getSteps() {
    final recipeSteps = List.of(steps);
    recipeSteps.removeAt(0); 
    return recipeSteps;
  }
}
