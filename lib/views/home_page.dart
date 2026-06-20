import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_mandiri/views/notification_page.dart';
import 'package:slicing_mandiri/views/scan_page.dart';
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
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ScanPage()));
          },
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
            SizedBox(
              height: 220,
              width: double.infinity,
              child: Stack(
                children: [
                  // background biru
                  Container(
                    width: double.infinity,
                    height: 220,
                    decoration: BoxDecoration(
                      color: fromCssColor("#1F6CFF"),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 143,
                    left: -40,
                    right: -40,
                    child: Transform.rotate(
                      angle: -0.30,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.06),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(120),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 93,
                    left: -40,
                    right: -40,
                    child: Transform.rotate(
                      angle: -0.30,
                      child: Container(
                        height: 190,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.10),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // content
                  Padding(
                    padding: EdgeInsets.only(top: 55, left: 25, right: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
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
                                children: List.generate(
                                  6,
                                  (index) => Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Icon(
                                      Icons.circle,
                                      size: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.2),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.notifications,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
                ),
                child: Row(
                  spacing: 35,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
