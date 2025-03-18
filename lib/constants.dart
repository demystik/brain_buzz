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

class Question{
  String question;
  List<String> options;
  String correctAnswer;
  Question({required this.question, required this.options, required this.correctAnswer});
}

List<Question> htmlquestions = [
  Question(question: 'What does HTML stand for??', options: ['Hyper Text Markup Language', 'Hyper Text Machine Language', 'Hyper Text Meta Language', 'Hyper Text Media Language'], correctAnswer: 'Hyper Text Markup Language'),
  Question(question: 'Which HTML tag is used to define a paragraph?', options: ['<p>', '<h1>', '<div>', '<span>'], correctAnswer: '<p>'),
  Question(question: 'What is the purpose of the <title tag>?', options: ['To define the title of a web page', 'To define the header of a web page', 'To define the footer of a web page', 'To define the navigation menu'], correctAnswer: 'To define the title of a web page'),
  Question(question: 'which HTML attribute is used to specify the URL of an image?', options: ['src', 'href', 'title', 'alt'], correctAnswer: 'src'),
  Question(question: 'What is the difference between <b> and <strong> tags?', options: ['<b> is used for bold text, while <strong> is used for emphasized text', '<b> is used for emphasize text, while <strong> is used for bold text', '<b> is used for italic text, while <strong> is used for bold text', '<b> is used for bold text, while <strong> is used for italic text'], correctAnswer: '<b> is used for bold text, while <strong> is used for emphasized text'),
  Question(question: 'Which HTML tag is used to define table?', options: ['<table>', '<div>', '<span>', '<p>'], correctAnswer: '<table>'),
  Question(question: 'What is the purpose of <meta> tag?', options: ['To define the character encoding of a web page', 'To define the title of a web page', 'To define the header of a web page', 'To define the footer of a web page'], correctAnswer: 'To define the character encoding of a web page'),
  Question(question: 'Which HTML attribute is used to specify the width of an image?', options: ['width', 'height', 'src', 'alt'], correctAnswer: 'width'),
  Question(question: 'What is the difference between <i> and <em> tags?', options: ['<i> is used for italic text, while <em> is used for emphasized text', '<i> is used for emphasized text, while <em> is used for italic text', '<i> is used for bold text, while <em> is used for italic text', '<i> is used for italic text, while <em> is used for bold text'], correctAnswer: '<i> is used for italic text, while <em> is used for emphasized text'),
  Question(question: 'Which HTML tag is used to define a list item?', options: ['<li>', '<ul>', '<ol>', '<dl>'], correctAnswer: '<li>'),
  Question(question: 'What is the purpose of the <link> tag?', options: ['To define a hyperlink', 'To define a relationship between a web page and an external resource', 'To define a table', 'To define a list'], correctAnswer: 'To define a relationship between a web page and an external resource'),
  Question(question: 'Which HTML attribute is used to specify the target of a hyperlink?', options: ['href', 'target', 'title', 'alt'], correctAnswer: 'target'),
  Question(question: 'What is the difference between <div> and <span> tags?', options: ['href', 'target', 'title', 'alt'], correctAnswer: 'target'),
];

List<Question> cssquestions = [
  Question(question: 'is CSS a programming language?', options: ['Yes', 'No', 'No idea', 'I don\'t know'], correctAnswer: 'I don\'t know'),
  Question(question: 'is CSS1 a programming language?', options: ['Yes1', 'No1', 'No idea1', 'I don\'t know'], correctAnswer: 'I don\'t know'),
  Question(question: 'is CSS2 a programming language?', options: ['Yes2', 'No2', 'No idea2', 'I don\'t know'], correctAnswer: 'I don\'t know'),
  Question(question: 'is CSS3 a programming language?', options: ['Yes3', 'No3', 'No idea3', 'I don\'t know'], correctAnswer: 'I don\'t know'),
];

List<Map<String, dynamic>> foundCategories = [];

List<Map<String, dynamic>> allCategories = [
  {"lang":'HTML', 'icon' : '$imagePath/html.png',},
  {"lang":'CSS', 'icon' : '$imagePath/css.png'},
  {"lang":'javascript', 'icon' : '$imagePath/js.png'},
  {"lang":'python', 'icon' : '$imagePath/python.png'},
  {"lang":'java', 'icon' : '$imagePath/java.png'},
  {"lang":'C', 'icon' : '$imagePath/c.png'},
  {"lang":'C++', 'icon' : '$imagePath/c++.png'},
  {"lang":'react', 'icon' : '$imagePath/react.png'},
  {"lang":'php', 'icon' : '$imagePath/php.png'},
  {"lang":'swift', 'icon' : '$imagePath/swift.png'},
  {"lang":'go', 'icon' : '$imagePath/go.png'},
  {"lang":'ruby', 'icon' : '$imagePath/ruby.png'},
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