import 'package:flutter/material.dart';
import 'PricingPage.dart';
import 'homePage.dart';
import 'OurServicePage.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Contact Us',
          style: TextStyle(
            color: Color(0xFF191C32),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 32,
          ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildContactInfoItem(Icons.email, 'Email', 'contact@example.com'),
            _buildContactInfoItem(Icons.phone, 'Phone', '+1 123-456-7890'),
            _buildContactInfoItem(
                Icons.location_on, 'Address', '123 Main Street, City, Country'),
            const SizedBox(height: 20),
            const Text(
              'Send us a Message',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildMessageForm(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildContactInfoItem(IconData icon, String title, String info) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(info),
          ],
        ),
      ],
    );
  }

  Widget _buildMessageForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Name',
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Subject',
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          maxLines: 5,
          decoration: const InputDecoration(
            labelText: 'Message',
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Send Message'),
        ),
      ],
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
                      builder: (context) => const OurServicePage()),
                );
              },
              child: const Icon(Icons.my_library_books_outlined,
                  color: Color(0xff393939)),
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
                  MaterialPageRoute(builder: (context) => const PricingPage()),
                );
              },
              child: const Icon(Icons.perm_phone_msg_rounded,
                  color: Color(0xff00FFFF)),
            ),
          ],
        ),
      ),
    );
  }
}
