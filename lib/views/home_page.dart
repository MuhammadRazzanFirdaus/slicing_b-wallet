import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/menu_item.dart';
import '../widgets/small_menu.dart';
import '../widgets/promo_card.dart';
import '../widgets/article_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fromCssColor("#F5F6F8"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        margin: EdgeInsets.only(top: 10),
        child: FloatingActionButton(
          elevation: 8,
          onPressed: () {},
          backgroundColor: fromCssColor("#2D6CDF"),
          shape: CircleBorder(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.qr_code, size: 26, color: Colors.white),
              SizedBox(height: 2),
              Text(
                "Pay",
                style: GoogleFonts.inter(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        elevation: 10,
        color: Colors.white,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: fromCssColor("#FF8C00")),
                  Text("Home", style: GoogleFonts.inter(fontSize: 10)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.receipt_long, color: Colors.grey),
                  Text("Cashflow", style: GoogleFonts.inter(fontSize: 10)),
                ],
              ),
              SizedBox(width: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.mail, color: Colors.grey),
                  Text("Message", style: GoogleFonts.inter(fontSize: 10)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.grey),
                  Text("Profile", style: GoogleFonts.inter(fontSize: 10)),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,

              width: double.infinity,

              padding: EdgeInsets.only(top: 50, left: 30, right: 30),

              decoration: BoxDecoration(color: fromCssColor("#1F6CFF")),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Saldo Balance",

                          style: GoogleFonts.inter(
                            color: Colors.white,

                            fontSize: 18,
                          ),
                        ),

                        SizedBox(height: 10),

                        Row(
                          children: [
                            Icon(Icons.circle, size: 8, color: Colors.white),

                            SizedBox(width: 10),

                            Icon(Icons.circle, size: 8, color: Colors.white),

                            SizedBox(width: 10),

                            Icon(Icons.circle, size: 8, color: Colors.white),

                            SizedBox(width: 10),

                            Icon(Icons.circle, size: 8, color: Colors.white),

                            SizedBox(width: 10),

                            Icon(Icons.circle, size: 8, color: Colors.white),

                            SizedBox(width: 10),

                            Icon(Icons.circle, size: 8, color: Colors.white),

                            SizedBox(width: 10),

                            Icon(Icons.circle, size: 8, color: Colors.white),

                            SizedBox(width: 10),

                            Icon(Icons.remove_red_eye, color: Colors.white38),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.notifications,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            Transform.translate(
              offset: Offset(0, -55),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(blurRadius: 15, color: Colors.black26)],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MenuItem(
                      icon: Icons.add,
                      label: "Top Up",
                      color: Colors.orange,
                    ),
                    MenuItem(
                      icon: Icons.arrow_upward,
                      label: "Send",
                      color: Colors.purple,
                    ),
                    MenuItem(
                      icon: Icons.arrow_downward,
                      label: "Request",
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),

            Transform.translate(
              offset: Offset(0, -30),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallMenu(icon: Icons.wifi, label: "Internet"),
                    SmallMenu(icon: Icons.monetization_on, label: "Gold"),
                    SmallMenu(icon: Icons.flash_on, label: "Electricity"),
                    SmallMenu(icon: Icons.grid_view, label: "Others"),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Promo For You",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                children: [PromoCard(), PromoCard(), PromoCard()],
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Financial Articles",
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                children: [
                  SizedBox(width: 200, child: ArticleCard()),
                  SizedBox(width: 15),
                  SizedBox(width: 200, child: ArticleCard()),
                  SizedBox(width: 15),
                  SizedBox(width: 200, child: ArticleCard()),
                ],
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
