import 'package:clothing_store/screens/detail/widgets/add_to_cart_button.dart';
import 'package:clothing_store/screens/detail/widgets/choose_size_color.dart';
import 'package:clothing_store/screens/detail/widgets/detail_description.dart';
import 'package:clothing_store/screens/detail/widgets/detail_image.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DetailImage(),
                const SizedBox(height: 24.0),
                DetailDescription(),
                const SizedBox(height: 16.0),
                Divider(),
                const SizedBox(height: 16.0),
                ChooseSizeColor(),
                const SizedBox(height: 24.0),
                AddToCartButton(),
                const SizedBox(height: 24.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
