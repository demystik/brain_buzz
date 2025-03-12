import 'package:flutter/material.dart';
import '../constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    foundCategories = allCategories;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // Above Banner
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text('Test Your Knowledge with \n Quizzes',
                              style: kBannerText),
                          const Text(
                              'lorem ipsum lorem ipsum lorem ipsum\n'
                              ' lorem ipsum lorem ipsum  \n '
                              'lorem ipsum ',
                              style: kBannerTextSmall),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Play Now!',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Mid search
                // Search Category
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          // color: Colors.green,
                          ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 320,
                                    height: 45,
                                    child: TextField(
                                      onChanged: (value) => filter(value),
                                      decoration: ktextFieldInputDeco,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey[300],
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: const Icon(Icons.settings),
                                  ),
                                ]),

                            //Mid Cat
                            //categories
                            const Text(
                              'Categories',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: foundCategories.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      eachLanguage(index, true),
                                      Text(
                                        foundCategories[index]['lang'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Recent Activity'),
                      Expanded(
                        child: ListView.builder(
                          itemCount: allCategories.length,
                          itemBuilder: (BuildContext context, int index) {
                            return recentActivityCard(index);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget recentActivityCard(index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4.0,
        child: ListTile(
          // focusColor: Colors.lightBlueAccent,
          tileColor: Colors.white,
          leading: eachLanguage(index, false),
          title: Text(allCategories[index]['lang']),
          subtitle: const Text('Num of Questions'),
          trailing: const Icon(Icons.exit_to_app),
        ),
      ),
    );
  }

  Widget eachLanguage(int index, bool isSearching) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[300],
        ),
        width: 60,
        height: 50,
        child: isSearching ? Image.asset(
          foundCategories[index]['icon'],
          fit: BoxFit.contain,
        ) : Image.asset(
          allCategories[index]['icon'],
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  filter(String enteredWord) {
    List<Map<String, dynamic>> result = [];
    if (enteredWord.isEmpty) {
      result = allCategories;
    } else {
      result = allCategories
          .where(
            (language) => language['lang'].toLowerCase().startsWith(
                  enteredWord.toLowerCase(),
                ),
          )
          .toList();
    }
    setState(() {
      foundCategories = result;
    });
  }
}
