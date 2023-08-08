import 'package:flutter/material.dart';
import 'PricingPage.dart';
import 'contactpage.dart';
import 'our_service_app.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 160,
              width: 160,
              child: Image.asset('assets/images/logo.png'),
            ),
            const SizedBox(width: 10),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCurrentDiscountsSection(),
            _buildSeparator(),
            _buildInfoSection('PureCode looking to remain a milestone...'),
            _buildSeparator(),
            _buildServicesSection(),
            _buildSeparator(),
            _buildWorksSection(),
            _buildSeparator(),
            _buildProgrammingLanguagesSection(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildCurrentDiscountsSection() {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          'Current discounts',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 200,
          child: PageView(
            children: [
              _buildDiscountCard('assets/images/GameDev_Discount_Card.png'),
              _buildDiscountCard('assets/images/WebDev_Discount_Card.png'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDiscountCard(String assetPath) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildSeparator() {
    return const Divider(
      color: Color(0xFFCACACA),
      thickness: 2,
    );
  }

  Widget _buildInfoSection(String description) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const Text(
          'Who are we',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildInfoBox(description),
      ],
    );
  }

  Widget _buildInfoBox(String description) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      color: const Color(0xFF333E50),
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildServicesSection() {
    return Column(
      children: [
        const Text(
          'Our services',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildServiceBox('assets/images/Game_Development_Card.png'),
              _buildServiceBox('assets/images/Web_Development_Card.png'),
              _buildServiceBox('assets/images/App_Development_Card.png'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildServiceBox(String assetPath) {
    return Container(
      width: 150,
      height: 150,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: Image.asset(
        assetPath,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildWorksSection() {
    return Column(
      children: [
        const Text(
          'Our works',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _buildWorkBox('assets/images/Bank_Page.png'),
        const SizedBox(height: 10),
        _buildWorkBox('assets/images/Law_Page.png'),
      ],
    );
  }

  Widget _buildWorkBox(String assetPath) {
    return Container(
      width: 300,
      height: 300,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF333E50),
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  final List<String> programmingLanguages = [
    'https://cdn-images-1.medium.com/v2/resize:fit:1200/1*5-aoK8IBmXve5whBQM90GA.png',
    'https://www.datocms-assets.com/45470/1631110818-logo-react-js.png',
    'https://avatars.githubusercontent.com/u/23617963?s=280&v=4',
    'https://raw.githubusercontent.com/github/explore/80688e429a7d4ef2fca1e82350fe8e3517d3494d/topics/swift/swift.png',
    'https://static.vecteezy.com/system/resources/previews/022/101/050/original/java-logo-transparent-free-png.png',
    'https://pbs.twimg.com/profile_images/1121395911849062400/7exmJEg4_400x400.png',
  ];

  Widget _buildProgrammingLanguagesSection() {
    return Column(
      children: [
        const Text(
          'Used programming languages',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (String imageUrl in programmingLanguages)
                _buildLanguageBox(imageUrl),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLanguageBox(String imageUrl) {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
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
            IconButton(
              icon: const Icon(Icons.home_rounded, color: Color(0xff00FFFF)),
              onPressed: () {},
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OurServiceApp()),
                );
              },
              child: const Icon(
                Icons.my_library_books_outlined,
                color: Color(0xff393939),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PricingPage()),
                );
              },
              child: const Icon(
                Icons.monetization_on_outlined,
                color: Color(0xff393939),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
              child: const Icon(
                Icons.perm_phone_msg_rounded,
                color: Color(0xff393939),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
