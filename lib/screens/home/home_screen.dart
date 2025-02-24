import 'package:clothing_store/screens/home/widgets/category_list.dart';
import 'package:clothing_store/screens/home/widgets/home_header.dart';
import 'package:clothing_store/screens/home/widgets/nav_bar.dart';
import 'package:clothing_store/screens/home/widgets/product_list.dart';
import 'package:clothing_store/screens/home/widgets/search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Stack(
            children: [
              Positioned.fill(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    HomeHeader(),
                    const SizedBox(height: 16.0),
                    Search(),
                    const SizedBox(height: 32.0),
                    CategoryList(),
                    const SizedBox(height: 24.0),
                    Flexible(child: ProductList()),
                  ],
                ),
              ),
              Positioned(bottom: 0, child: MyNavigationBar()),
            ],
          ),
        ),
      ),
    );
  }
}
