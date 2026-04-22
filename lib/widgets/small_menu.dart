import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallMenu extends StatelessWidget {
  final IconData icon;
  final String label;

  const SmallMenu({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black.withValues(alpha: 0.05),
              ),
            ],
          ),
          child: Icon(icon, color: fromCssColor("#FF8C00")),
        ),
        SizedBox(height: 5),
        Text(label, style: GoogleFonts.inter(fontSize: 12)),
      ],
    );
  }
}