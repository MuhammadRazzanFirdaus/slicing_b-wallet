import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Icon(Icons.image, size: 60, color: Colors.grey),
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Lorem ipsum dolor",
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Lorem ipsum dolor sedulur gas",
          style: GoogleFonts.inter(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}