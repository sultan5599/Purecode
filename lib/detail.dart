import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Detail(),
    debugShowCheckedModeBanner: false,
  ));
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Service Details",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
                fontSize: 32,
                color: Color(0xff191C32))),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: const Color(0xFF191C32),
        ),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://filmdaily.co/wp-content/uploads/2020/11/freegame-lede-1-768x473.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: const Color(0x89000000),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.all(0),
              padding: const EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: const Color(0xff28333F),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.zero,
                border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
              ),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Text(
                        "Game Development",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Color(0xff2CA59D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        "We handle every aspect of game creation from initial concepting and design, all the way through programming, art production, testing and launch. No matter your genre or platform, we've got the expertise to make your gaming vision a reality.\n\nOur approach is always collaborative, working closely with clients through each phase of development to ensure we're capturing your unique creative goals. We pride ourselves on clear communication, prompt deliverables and top-notch quality control.\n\nSome of the services we provide include:\n- Game design docs & technical specifications\n- 2D/3D art asset production\n- Custom engine programming\n- Integrating 3rd party middleware like Havok Physics\n- Multiplayer/online functionality\n- Porting to various platforms\n- Localization for international markets\n- Marketing assets like trailers, promo websites, etc.",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0xff2CA59D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2CA59D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  minimumSize:
                      Size(MediaQuery.of(context).size.width * 0.9, 50),
                ),
                child: const Text(
                  'Order',
                  style: TextStyle(
                    color: Color(0xff333E50),
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ],
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
                    color: Color(0xff00FFFF)),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(Icons.monetization_on_outlined,
                    color: Color(0xff393939)),
              ),
              const Icon(Icons.perm_phone_msg_rounded,
                  color: Color(0xff393939)),
            ],
          ),
        ),
      ),
    );
  }
}
