import 'package:flutter/material.dart';
import 'ContactPage.dart';
import 'PricingPage.dart';
import 'detail.dart';
import 'homepage.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OurServiceApp(),
    ),
  );
}

class OurServiceApp extends StatelessWidget {
  const OurServiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "Our service",
          style: TextStyle(
            color: Color(0xFF191C32),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 32,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Detail(),
                      ),
                    );
                  },
                  child: ServiceBox(
                    color: const Color(0xFF333E50),
                    imagePath: Image.network(
                      "https://i0.wp.com/goesfortech.com/wp-content/uploads/2023/03/Untitled-design-2-17.png?w=1080&ssl=1",
                      width: double.infinity,
                      height: 150,
                    ),
                    title: "Game development",
                    description:
                        "We transform your game ideas into reality! Specializing in design, programming, we ensure top-notch gaming experiences.",
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomePage()), // Navigate to HomePage
                    );
                  },
                  child: ServiceBox(
                    color: const Color(0xFF333E50),
                    imagePath: Image.network(
                      "https://i0.wp.com/christophervilla.com.mx/almacenamiento/2022/05/19199406-scaled.jpg?fit=450%2C450&ssl=1",
                      width: double.infinity,
                      height: 150,
                    ),
                    title: "Web development",
                    description:
                        "Turning your web visions into reality! We specialize in designing, coding, and optimizing websites, delivering high-quality online presence.",
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
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
                Navigator.pop(context); // Go back to the previous page
              },
              child: const Icon(Icons.home_rounded, color: Color(0xff393939)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Icon(Icons.my_library_books_outlined,
                  color: Color(0xff00FFFF)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PricingPage()),
                );
              },
              child: const Icon(Icons.monetization_on_outlined,
                  color: Color(0xff393939)),
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

class ServiceBox extends StatelessWidget {
  final Color color;
  final Widget imagePath;
  final String title;
  final String description;

  const ServiceBox({
    super.key,
    required this.color,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 385,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 150,
              child: imagePath,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF2CA59D),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                description,
                style: const TextStyle(
                  color: Color(0xFF2CA59D),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
