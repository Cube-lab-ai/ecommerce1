import 'package:ecom/utils/constatns/image_string.dart';
import 'package:ecom/utils/constatns/sizes.dart';
import 'package:ecom/utils/helper_function/helper_function.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.close))],
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.green,
                child: Image(
                  image: AssetImage(TImages.productsIllustration),
                  width: THelperFunctions.screenWidth() * 0.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
