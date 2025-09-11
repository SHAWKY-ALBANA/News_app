import 'package:flutter/material.dart';
import 'package:news_app/features/home/categories_view/categories_view.dart';
import 'package:news_app/features/home/home_drawer.dart';
import 'package:news_app/features/sources_view/sources_view.dart';

import '../../models/category.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late Widget homeView  = CategoriesView(
    onCategoryClicked: onCategoryClicked,
  );

  void onCategoryClicked(CategoryModel selectedCategory){
    homeView = SourcesView(category: selectedCategory);
    setState(() {

    });
  }

  void onGoToHomeClicked(){
    homeView = CategoriesView(onCategoryClicked: onCategoryClicked);
    Navigator.pop(context);
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: HomeDrawer(onGoToHomeClicked: onGoToHomeClicked),
      body: homeView,
    );
  }
}
