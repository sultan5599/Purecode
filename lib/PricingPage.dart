import 'package:flutter/material.dart';

class PricingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Pricing',
          style: TextStyle(
            color: Color(0xFF191C32), // Text color
            fontSize: 32,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            _buildPricingImage('/price1.png'),
            SizedBox(height: 20),
            _buildPricingImage('/price2.png'),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          color: const Color(0xff0D0D0D),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(Icons.home_rounded, color: Color(0xff393939)),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.my_library_books_outlined,
                    color: Color(0xff393939)),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.monetization_on_outlined,
                    color: Color(0xff00FFFF)),
              ),
              const Icon(Icons.perm_phone_msg_rounded,
                  color: Color(0xff393939)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPricingImage(String assetPath) {
    return Image.asset(
      assetPath,
      fit: BoxFit.cover,
    );
  }
}
