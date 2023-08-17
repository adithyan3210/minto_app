import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:minto/screens/menuall/soup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> headerImagesList = [
    "assets/images/Header.png",
    "assets/images/header2.png",
    "assets/images/header3.png",
    "assets/images/Header.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 15),
            const Text(
              'MINTO FOOD SERVICE..',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 180,
                child: Swiper(
                  autoplay: true,
                  itemCount: headerImagesList.length,
                  itemBuilder: ((context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset(
                          headerImagesList[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
                  pagination: const SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.white, activeColor: Colors.orange),
                  ),
                ),
              ),
            ),
           Text(
                    "MENU",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
            SizedBox(height: 20),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: GestureDetector(onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return SoupScreen();
                      },));
                    },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                              height: 60,
                              child: Image.asset("assets/images/soup.jpg")),
                          Column(
                            children: [
                              Text(
                                'SOUP',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text('3 ITEM'),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, bottom: 10, top: 15),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 60,
                            child: Image.asset("assets/images/soup.jpg")),
                        Column(
                          children: [
                            Text(
                              'BURGER',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text('6 ITEM'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 60,
                            child: Image.asset("assets/images/soup.jpg")),
                        Column(
                          children: [
                            Text(
                              'PIZZA',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text('4 ITEM'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 60,
                            child: Image.asset("assets/images/soup.jpg")),
                        Column(
                          children: [
                            Text(
                              'FRIED CHICKEN',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Text('2 ITEM'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
