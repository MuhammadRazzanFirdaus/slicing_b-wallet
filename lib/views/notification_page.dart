import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_mandiri/widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: fromCssColor("#1F6CF4"),
        title: Text(
          "Notification",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_outlined, color: Colors.white, size: 25),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView.separated(
          itemCount: 6,
          separatorBuilder: (context, index) {
            return SizedBox(height: 20, child: Divider());
          },
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: NotificationCard(
                iconNotif: Icons.discount,
                titleNotif:
                    "Promo 40% Discount for special day in the long weekend",
                subTitleNotif: "6 hour ago",
              ),
            );
          },
        ),
      ),
    );
  }
}
