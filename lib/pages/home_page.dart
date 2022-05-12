import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //#Header Image
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/ic_header.jpg'),
              fit: BoxFit.cover,
            )),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.3),
                  Colors.black.withOpacity(0.1),
                ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //#Header image
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: const Text(
                      'What kind of hotel you need ?',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 90),
                    width: double.infinity,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search for hotels...',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //#Hotel
          Expanded(
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    'Business Hotels',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _imageTab('assets/images/ic_hotel1.jpg', 'Hotel 1'),
                      _imageTab('assets/images/ic_hotel2.jpg', 'Hotel 2'),
                      _imageTab('assets/images/ic_hotel3.jpg', 'Hotel 3'),
                      _imageTab('assets/images/ic_hotel4.jpg', 'Hotel 4'),
                      _imageTab('assets/images/ic_hotel5.jpg', 'Hotel 5'),
                      _imageTab('assets/images/ic_hotel1.jpg', 'Hotel 6'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    'Airports Hotels',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _imageTab('assets/images/ic_hotel1.jpg', 'Hotel 1'),
                      _imageTab('assets/images/ic_hotel2.jpg', 'Hotel 2'),
                      _imageTab('assets/images/ic_hotel3.jpg', 'Hotel 3'),
                      _imageTab('assets/images/ic_hotel4.jpg', 'Hotel 4'),
                      _imageTab('assets/images/ic_hotel5.jpg', 'Hotel 5'),
                      _imageTab('assets/images/ic_hotel1.jpg', 'Hotel 6'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    'Resort Hotels',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _imageTab('assets/images/ic_hotel1.jpg', 'Hotel 1'),
                      _imageTab('assets/images/ic_hotel2.jpg', 'Hotel 2'),
                      _imageTab('assets/images/ic_hotel3.jpg', 'Hotel 3'),
                      _imageTab('assets/images/ic_hotel4.jpg', 'Hotel 4'),
                      _imageTab('assets/images/ic_hotel5.jpg', 'Hotel 5'),
                      _imageTab('assets/images/ic_hotel1.jpg', 'Hotel 6'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    'Amazing Hotels',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _imageTab('assets/images/ic_hotel1.jpg', 'Hotel 1'),
                      _imageTab('assets/images/ic_hotel2.jpg', 'Hotel 2'),
                      _imageTab('assets/images/ic_hotel3.jpg', 'Hotel 3'),
                      _imageTab('assets/images/ic_hotel4.jpg', 'Hotel 4'),
                      _imageTab('assets/images/ic_hotel5.jpg', 'Hotel 5'),
                      _imageTab('assets/images/ic_hotel1.jpg', 'Hotel 6'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _imageTab(String image, String text) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 150,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          bottom: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(0.7),
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.1),
          ]),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
