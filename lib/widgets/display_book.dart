import 'package:flutter/material.dart';
import 'package:net_bookstore/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayBookCard extends StatelessWidget {
  const DisplayBookCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Title: Henry Pan'),
              SizedBox(
                height: 10,
              ),
              Text('Genre: Adventure'),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('Rating'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.star,
                    color: MyColors.deepYellow,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('7.7 '),
                  Text('(254)'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('By: Ikenna'),
            ],
          ),
        ),
         Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Price'),
              SizedBox(
                height: 5,
              ),
              Text('\$24.26', style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black) ,),
            ],
          ),
        )
      ],
    );
  }
}
