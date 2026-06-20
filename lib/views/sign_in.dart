import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_mandiri/views/home_page.dart';
import 'package:slicing_mandiri/views/sign_up.dart';
import 'package:slicing_mandiri/widgets/custom_input.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              color: fromCssColor("#1F6CFF"),
            ),
            Positioned(
              top: 200,
              left: -50,
              right: -50,
              child: Transform.rotate(
                angle: -0.30,
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.06),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(180),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 285,
              left: -50,
              right: -50,
              child: Transform.rotate(
                angle: -0.30,
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.10),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(150),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 200),
                Container(
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset("assets/images/Logo.png", height: 40),
                ),
                SizedBox(height: 10),
                Text(
                  "B-Wallet",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 100),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: fromCssColor("#F5F6F8"),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Sign In",
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 110,
                        child: CustomInput(
                          labelText: "Email/Phone Number",
                          placeHolder: "08768262427",
                        ),
                      ),
                      SizedBox(
                        height: 110,
                        child: CustomInput(
                          labelText: "Password",
                          placeHolder: "••••••••",
                          icon: Icons.visibility_outlined,
                        ),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: fromCssColor("#FF8C00"),
                            padding: EdgeInsets.symmetric(vertical: 18),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            "Sign In",
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            text: "Doesn't have any account yet? ",
                            style: GoogleFonts.inter(color: Colors.grey),
                            children: [
                              TextSpan(
                                text: "Sign Up",
                                style: GoogleFonts.inter(
                                  color: fromCssColor("#FF8C00"),
                                  fontWeight: FontWeight.w600,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignUpPage(),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
