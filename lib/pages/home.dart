import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/display_book.dart';
import 'view_book.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> genresList = [
    'Romance',
    'Fiction',
    'Drama',
    'Mystery',
    'Love',
    'Adventure',
    'Romance',
    'Romance',
    'Romance',
  ];

  showAllgenres() => showModalBottomSheet(
      isDismissible: false,
      context: context,
      builder: (context) => Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Select Genres of Book',
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),

                //grid
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      itemCount: genresList.length,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                              childAspectRatio: 40 / 16,
                              crossAxisCount: 3),
                      itemBuilder: (context, index) => Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.yellow[200]),
                              child: Center(child: Text(genresList[index])),
                            ),
                          )),
                ),
                const Spacer(),

                //butoons
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Close',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ));
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'What We offer',
                  style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: size.height * 0.20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Placeholder(),
                      )),
            ),
            const SizedBox(
              height: 2,
            ),
            const Divider(),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Various Book Genres',
                  style: GoogleFonts.poppins(fontSize: 16, color: Colors.black),
                ),
                TextButton(onPressed: showAllgenres(), child: Text('View All'))
              ],
            ),
            const SizedBox(
              height: 5,
            ),

            //genres
            Container(
              height: size.height * 0.15,
              child: GridView.builder(
                  itemCount: 9,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      childAspectRatio: 40 / 16,
                      crossAxisCount: 3),
                  itemBuilder: (context, index) => Center(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.yellow[200]),
                          child: Center(child: Text(genresList[index])),
                        ),
                      )),
            ),
            const SizedBox(
              height: 5,
            ),
            //latest books
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Latest Books',
                  style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            Container(
                height: size.height * 0.85,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewBook()));
                              },
                              child: DisplayBookCard()),
                        )))
          ],
        ),
      ),
    );
  }
}
