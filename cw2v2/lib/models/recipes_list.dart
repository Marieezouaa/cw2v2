class RecipesList {
  const RecipesList(this.ChosenRecipe, this.steps);

  final String ChosenRecipe;
  final List<String> steps;

  List<String> getSteps() {
    final RecipeSteps = List.of(steps);
    return RecipeSteps;

    /*.shuffle shuffles the answer choices, but it alters the original list
    To prevent the original list from being altered, a copy of this list is created
    "shuffledList" the copy is then shuffled shuffledList.shuffle() and retured*/

  }
}
