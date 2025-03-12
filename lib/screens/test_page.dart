// import 'package:flutter/material.dart';
//
// class TestPage extends StatefulWidget {
//   const TestPage({super.key});
//
//   @override
//   State<TestPage> createState() => _TestPageState();
// }
//
// class _TestPageState extends State<TestPage> {
//   final List<Map<String, dynamic>> allCategories = [
//     {'id': 1, 'name' : 'AbdusSalaam', 'age':'27'},
//     {'id': 2, 'name' : 'Musa-Ameen', 'age':'21'},
//     {'id': 3, 'name' : 'Uthman', 'age':'24'},
//     {'id': 4, 'name' : 'Ibraheem', 'age':'27'},
//     {'id': 5, 'name' : 'Muhammad', 'age':'21'},
//     {'id': 6, 'name' : 'Abdsobuur', 'age':'24'},
//     {'id': 7, 'name' : 'Maryam', 'age':'22'},
//     {'id': 8, 'name' : 'Haneefah', 'age':'23'},
//     {'id': 9, 'name' : 'Anas', 'age':'25'},
//     {'id': 10, 'name' : 'Abdullah', 'age':'24'},
//     {'id': 11, 'name' : 'Ahmad', 'age':'23'},
//   ];
//
//   List<Map<String, dynamic>> foundCategories = [];
//
//   void _filter(String enteredWord){
//      List<Map<String, dynamic>> result = [];
//
//      if (enteredWord.isEmpty){
//        result = allCategories;
//      } else {
//        result = allCategories
//            .where((category) => category["name"].toLowerCase()
//            .contains(enteredWord.toLowerCase())).toList();
//      }
//      setState(() => foundCategories = result);
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     foundCategories = allCategories;
//     super.initState();
//   }
//
//   // final List<int> test = [12, 232, 434, 323];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Scaffold(
//       appBar: AppBar(
//         title: const Text('Text Page'),
//       ),
//       body: Column(
//         children: [
//           TextField(
//             onChanged: (value) => _filter(value),
//             decoration: const InputDecoration(
//               labelText: 'Search',
//               suffixIcon: Icon(Icons.search),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Expanded(
//             child: ListView.builder(
//               itemCount: foundCategories.length,
//                 itemBuilder: (context, index){
//                 return myCard(index);
//                 }
//             ),
//           ),
//         ],
//       ),
//     ),);
//   }
//
//   Widget myCard(int index) {
//     return Card(
//       key: ValueKey(foundCategories[index]['id']),
//       color: Colors.green,
//       child: ListTile(
//         leading: Text(foundCategories[index]['id'].toString()),
//         title: Text(foundCategories[index]['name']),
//         subtitle: Text(foundCategories[index]['age']),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Map<String, dynamic>> allUsers = [
    {'id': 1, 'name': 'AbdusSalaam', 'age': '27'},
    {'id': 2, 'name': 'Musa-Ameen', 'age': '21'},
    {'id': 3, 'name': 'Uthman', 'age': '24'},
    {'id': 4, 'name': 'Ibraheem', 'age': '27'},
    {'id': 5, 'name': 'Muhammad', 'age': '21'},
    {'id': 6, 'name': 'Abdsobuur', 'age': '24'},
    {'id': 7, 'name': 'Maryam', 'age': '22'},
    {'id': 8, 'name': 'Haneefah', 'age': '23'},
    {'id': 9, 'name': 'Anas', 'age': '25'},
    {'id': 10, 'name': 'Abdullah', 'age': '24'},
    {'id': 11, 'name': 'Ahmad', 'age': '23'},
  ];

  List<Map<String, dynamic>> foundUsers = [];

  Widget myCard(int index) {
    return Card(
      key: ValueKey(foundUsers[index]['id']),
      color: Colors.grey,
      child: ListTile(
        leading: Text(foundUsers[index]['id'].toString()),
        title: Text(foundUsers[index]['name']),
        subtitle: Text(foundUsers[index]['age']),
      ),
    );
  }

  void filterSearch(String enteredWord) {
    List<Map<String, dynamic>> searchResult = [];
    if (enteredWord.isEmpty) {
      searchResult = allUsers;
    } else {
      searchResult = allUsers
          .where(
            (user) => user['name'].toLowerCase().contains(
                  enteredWord.toLowerCase(),
                ),
          )
          .toList();
    }
    setState(() {
    foundUsers = searchResult;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    foundUsers = allUsers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(
              onChanged: (value) => filterSearch(value),
              decoration: const InputDecoration(
                  labelText: 'Search Here', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: foundUsers.length,
                  itemBuilder: (context, index) {
                    return myCard(index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
