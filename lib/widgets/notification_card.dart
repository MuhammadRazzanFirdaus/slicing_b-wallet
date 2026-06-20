import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationCard extends StatelessWidget {
  final IconData iconNotif;
  final String titleNotif;
  final String subTitleNotif;


  const NotificationCard({
    super.key,
    required this.iconNotif,
    required this.titleNotif,
    required this.subTitleNotif,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListTile(
          title: Text(
            titleNotif,
            style: GoogleFonts.inter(fontSize: 15),
          ),
          subtitle: Text(
            subTitleNotif,
            style: GoogleFonts.inter(fontSize: 12, color: Colors.grey.shade400),
          ),
          titleAlignment: ListTileTitleAlignment.top,
          leading: Container(
            margin: EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 11.0,
              ),
              child: Icon(iconNotif, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
