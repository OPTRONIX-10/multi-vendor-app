import 'package:flutter/material.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/widgets/banner_widget.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/widgets/category_text.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/widgets/search_input_widget.dart';
import 'package:multi_vendor_app/views/buyers/nav_Screens/widgets/welcome_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WelcomeText(),
        SizedBox(
          height: 14,
        ),
        SearchInputWidget(),
        BannerWidget(),
        CategoryText()
      ],
    );
  }
}
