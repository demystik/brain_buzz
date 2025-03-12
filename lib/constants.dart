import 'package:flutter/material.dart';

const kBannerText = TextStyle(
  color: Colors.white,
  fontSize: 16,
);

const kBannerTextSmall = TextStyle(
  color: Colors.white,
  fontSize: 12,
);

const String imagePath = 'assets/images';

List<Map<String, dynamic>> foundCategories = [];

List<Map<String, dynamic>> allCategories = [
  {"lang":'HTML', 'icon' : '$imagePath/html.jpeg'},
  {"lang":'CSS', 'icon' : '$imagePath/css.jpg'},
  {"lang":'javascript', 'icon' : '$imagePath/js.jpg'},
  {"lang":'python', 'icon' : '$imagePath/python.jpeg'},
  {"lang":'java', 'icon' : '$imagePath/java.jpeg'},
  {"lang":'C', 'icon' : '$imagePath/c.jpeg'},
  {"lang":'C++', 'icon' : '$imagePath/c++.jpeg'},
  // {"lang":'C#', 'icon' : '🙌'},
  // {"lang":'dart', 'icon' : '🎇'},
  {"lang":'react', 'icon' : '$imagePath/react.jpeg'},
  {"lang":'php', 'icon' : '$imagePath/php.jpg'},
  {"lang":'swift', 'icon' : '$imagePath/swift.jpg'},
  {"lang":'go', 'icon' : '$imagePath/go.jpg'},
  {"lang":'ruby', 'icon' : '$imagePath/ruby.jpeg'},
  // {"lang":'kotlin', 'icon' : '🎗️'},
];

var ktextFieldInputDeco = InputDecoration(
  filled: true,
  fillColor: Colors.grey[300],
  border: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(8),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(8),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(8),
  ),

  labelText: 'Search',
  suffixIcon: const Icon(Icons.search_sharp),
);