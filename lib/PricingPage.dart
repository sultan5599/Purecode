import 'package:flutter/material.dart';
import 'ContactPage.dart';
import 'homepage.dart';
import 'our_service_app.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Pricing',
          style: TextStyle(
            color: Color(0xFF191C32),
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
            const SizedBox(height: 20),
            _buildPricingImage('assets/images/Game_Dev_price.png'),
            const SizedBox(height: 20),
            _buildPricingImage('assets/images/Web_Dev_price.png'),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildPricingImage(String assetPath) {
    return Image.asset(
      assetPath,
      fit: BoxFit.cover,
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 50,
        color: const Color(0xff0D0D0D),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Icon(Icons.home_rounded, color: Color(0xff393939)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OurServiceApp()),
                );
              },
              child: const Icon(Icons.my_library_books_outlined,
                  color: Color(0xff393939)),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(Icons.monetization_on_outlined,
                  color: Color(0xff00FFFF)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ContactUsPage()),
                );
              },
              child: const Icon(Icons.perm_phone_msg_rounded,
                  color: Color(0xff393939)),
            ),
          ],
        ),
      ),
    );
  }
}
