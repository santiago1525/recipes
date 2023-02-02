import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipes/model/cart_model.dart';

import '../components/grocery_item_title.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  HomePage({key});
  final _homekey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _homekey,
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const CartPage();
        })),
        backgroundColor: Colors.black,
        child: const Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),

            // good morning
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Bienvenido,'),
            ),

            const SizedBox(height: 4),

            // lets order fresh items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Un nuevo articulo para ti',
                style: GoogleFonts.notoSerif(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 24),

            // divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),

            const SizedBox(height: 24),

            // fresh items + grid
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                'Articulos',
                style: TextStyle(fontSize: 18),
              ),
            ),

            Expanded(
                child: Consumer<CartModel>(builder: (context, value, child) {
              return GridView.builder(
                  itemCount: value.shopItems.length,
                  padding: const EdgeInsets.all(12.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index) {
                    return GroceryItemTitle(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () {
                        
                        Provider.of<CartModel>(context, listen: false)
                            .addItemToCart(index);
                            showSnackBar();
                      },
                    );
                  });
            }))
          ],
        ),
      ),
    );
  }

  void showSnackBar() {
    SnackBar snackBar = const SnackBar(
      content: Text('Elemento agregado al carrito'),
      duration: Duration(seconds: 5),
    );
    // ignore: deprecated_member_use
    _homekey.currentState!.showSnackBar(snackBar);
  }
}
