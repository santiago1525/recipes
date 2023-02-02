import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [
        // logo
        Padding(
          padding:
              const EdgeInsets.only(left: 80, right: 80, bottom: 40, top: 90),
          child: Image.asset('assets/avocado.png'),
        ),

        // Entregamos comestibles en la puerta de su casa
         Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text(
            'ENTREGAMOS COMESTIBLES EN LA PUERTA DE TU CASA',
           /*  style: TextStyle(
                fontFamily: 'Sansation',
                fontSize: 35,
                fontWeight: FontWeight.bold), */
             style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
             ),
            textAlign: TextAlign.center,
          ),
        ),

        // Articulos frescos todos los dias
        Text('Articulos frescos todos los dias',
            style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.w500), textAlign: TextAlign.center,),

        const SizedBox(
          height: 20,
        ),

        // get satrted button
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return  HomePage();
          })),
          child: Container(
            margin: const EdgeInsets.only(left: 80, top: 0, right: 80, bottom: 0),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Comenzar',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                ),
                Icon(Icons.arrow_right, color: Colors.white, size: 20,),
              ],
            ),
            padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          ),
        ),

        const Spacer(),
      ],
    ));
  }
}
