import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';



class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/background.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'We Have\nExperts For You',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffFFFFFF),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Stop searching dogshits \nbooking from this app',
                  style: GoogleFonts.poppins(
                    color:Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 55,
                  width: 220,
                  margin: const EdgeInsets.only(
                    top: 40,
                    bottom: 30,
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const WelcomeScreen();
                          },
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            final tween = Tween(
                              begin: 0.0,
                              end: 1.0,
                            );
                            return FadeTransition(
                              opacity: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    child: Text(
                      'Start Experience',
                      style: GoogleFonts.poppins(
                        color: const Color(0xffFFFFFF),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}