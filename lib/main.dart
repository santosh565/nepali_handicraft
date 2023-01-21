import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:nepali_handicraft/product_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: FlexColorScheme.light(
        scheme: FlexScheme.bahamaBlue,
      ).toTheme,
      // ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: const ProductListPage(),
    );
  }
}
