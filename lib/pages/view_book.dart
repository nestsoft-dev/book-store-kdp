import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewBook extends StatefulWidget {
  const ViewBook({super.key});

  @override
  State<ViewBook> createState() => _ViewBookState();
}

class _ViewBookState extends State<ViewBook> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
   return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 0, 8),
      body: Column(
        children: [
          Container(
            height: size.height * 0.35,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://books.google.com/books/content?id=TGDIDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api',
                            height: 160,
                            width: 130,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Author',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'year',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: Colors.grey[350]),
                          ),
                        const  SizedBox(
                            height: 5,
                          ),
                          RatingStars(
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            value: 7,
                            starBuilder: (index, color) => Icon(
                              Icons.star,
                              color: color,
                            ),
                            starCount: 5,
                            starSize: 20,
                            valueLabelColor: const Color(0xff9b9b9b),
                            valueLabelTextStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 12.0),
                            valueLabelRadius: 10,
                            starSpacing: 2,
                            maxValueVisibility: true,
                            valueLabelVisibility: true,
                            valueLabelPadding: const EdgeInsets.symmetric(
                                vertical: 1, horizontal: 8),
                            valueLabelMargin: const EdgeInsets.only(right: 8),
                            starOffColor: const Color(0xffe7e8ea),
                            starColor: Colors.yellow,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            height: size.height * 0.65,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 12, 11, 17),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Container(
                width: size.width,
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 23, 21, 31),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chapters',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '2554',
                            style: GoogleFonts.poppins(
                                color: Colors.grey[350],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$24.74',
                            style: GoogleFonts.poppins(
                              color: Colors.grey[350],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lan',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'en',
                            style: GoogleFonts.poppins(
                              color: Colors.grey[350],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Text(
                'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                style:
                    GoogleFonts.poppins(fontSize: 14, color: Colors.grey[350]),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Colors.grey[200],
                    ),
                    Icon(
                      Icons.download_for_offline_outlined,
                      color: Colors.grey[200],
                    ),
                    Container(
                      height: 45,
                      width: size.width * 0.65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.yellow),
                      child: Center(
                        child: Text(
                          'Purchase',
                          style: GoogleFonts.mochiyPopPOne(
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
