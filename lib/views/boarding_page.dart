import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_mandiri/views/sign_up.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: fromCssColor("#1F6CFF"),
          ),

          Positioned(
            bottom: -60,
            left: -50,
            right: -50,
            child: Transform.rotate(
              angle: -0.30,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.06),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(180),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: -80,
            left: -50,
            right: -50,
            child: Transform.rotate(
              angle: -0.30,
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.10),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(150),
                  ),
                ),
              ),
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 100),

              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset("assets/Logo.png"),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "B-Wallet",
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 23),
                  Text(
                    "B-Wallet adalah aplikasi e-wallet untuk cek saldo, transfer, top up, dan pembayaran dengan tampilan yang simpel dan modern.",
                    style: GoogleFonts.inter(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 150),
                  Text(
                    "Your best choice for e-wallet",
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: fromCssColor("#1F6CFF"),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 3,
                      ),
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
