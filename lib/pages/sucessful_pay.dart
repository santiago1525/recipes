import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipes/pages/home_page.dart';

class SucessfulPay extends StatelessWidget {
  const SucessfulPay({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[600],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                size: 100,
                color: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Pedido Realizado Correctamente',
                style: GoogleFonts.notoSerif(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,),
                    textAlign: TextAlign.center
              ),

              
              const SizedBox(
                height: 40,
              ),


              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return  HomePage();
                }))),
                child: Container(
                  width: 200,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: const [
                    Icon(Icons.home),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Ir a inicio',
                      style: TextStyle(fontSize: 18),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
