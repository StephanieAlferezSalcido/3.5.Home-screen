import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        backgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
            children: [
              Container(
               height: 150,
               child: Center(
               child: Text(
              'Play Movies',
              style: GoogleFonts.getFont(
                'Pacifico',
                fontSize: 60,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 255, 255, 255),
              )
            ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    child: Center(
                      child: Text(
                        'Bienvenido',
                        style: GoogleFonts.crimsonPro(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric
                    (horizontal: 40),
                    child: Column(
                    children: [
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[600]?.withOpacity(0.5),
                      borderRadius: BorderRadius.circular
                      (16),
                    ),
                    child: TextField(
                     decoration: InputDecoration(
                      contentPadding: 
                      const EdgeInsets.symmetric
                      (vertical: 20),
                      border:InputBorder.none,
                      hintText: 'Email',
                      prefixIcon: Padding(
                        padding:
                        const EdgeInsets.symmetric
                        (horizontal: 20),
                        child: Icon(
                      FontAwesomeIcons.
                      solidEnvelope,
                      color: Colors.white,
                      size: 30,
                      ),
                      ),
                      hintStyle: GoogleFonts.crimsonPro(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      ),
                    ),
                     )
                    ],
                  ),
                 )
                ]
                ),
            )
            ],
            ),
            ),
        ),
      ],
    );
  }
}

  