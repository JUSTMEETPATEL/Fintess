import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;
  String recepie;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
    required this.recepie
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> catgories = [];

    catgories.add(CategoryModel(
        name: 'Salad',
        iconPath: "assets/icons/plate.svg",
        boxColor: const Color(0xff92A3FD),
        recepie: "Craft a vibrant Mediterranean Chickpea Salad. Combine chickpeas, cherry tomatoes, cucumber, red onion, Kalamata olives, feta cheese, and parsley. Whisk olive oil, red wine vinegar, garlic, oregano, salt, and pepper for dressing. Toss ingredients with dressing, then chill briefly. Serve for a refreshing burst of flavor or as a delightful side dish."
      )
    );

    catgories.add(CategoryModel(
        name: 'Cake',
        iconPath: "assets/icons/pancakes.svg",
        boxColor: const Color(0xffC58BF2),
        recepie: "Savor the decadence of a homemade Chocolate Cake. Whisk together flour, sugar, cocoa powder, baking powder, and salt.\nBeat eggs, then blend in milk, oil, and vanilla. Combine wet and dry mixtures, pour into a cake pan, and bake until done. \nCool and frost for a rich finish. Enjoy this moist and sumptuous treat, perfect for dessert or celebration."
      )
    );

    catgories.add(CategoryModel(
        name: 'Pie',
        iconPath: "assets/icons/pie.svg",
        boxColor: const Color(0xff92A3FD),
        recepie: "Create a timeless Classic Apple Pie. Toss sliced apples with sugar, flour, cinnamon, nutmeg, and lemon juice. Line a pie dish with crust, fill with apple mixture, and top with another crust. Bake until golden and serve warm for a comforting slice of tradition"

      )
    );

    catgories.add(CategoryModel(
        name: 'Smoothies',
        iconPath: "assets/icons/orange-snacks.svg",
        boxColor: const Color(0xffC58BF2),
        recepie: "Whirl up a Revitalizing Berry Smoothie. Blend strawberries, blueberries, raspberries, banana, yogurt, spinach, and orange juice until smooth. Adjust consistency, pour into glasses, and garnish with mint. Sip slowly and enjoy the nutritious and refreshing flavor boost."

      )
    );

    return catgories;
  }
}
