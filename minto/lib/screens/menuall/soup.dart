import 'package:flutter/material.dart';

class SoupScreen extends StatefulWidget {
  const SoupScreen({super.key});

  @override
  State<SoupScreen> createState() => _SoupScreenState();
}

class _SoupScreenState extends State<SoupScreen> {
   List<String> soupImagelist = [
    'assets/images/ChickenSoup.jpg',
    'assets/images/vegsoup.jpg',
    'assets/images/tomatosoup.jpg',
    
  ];
  List<String> soupNamelist = [
    'Chicken Soup',
    'Veg Soup',
    'Tomato Soup',
    
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: soupImagelist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 10,
              childAspectRatio: 5 / 2.5),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage(soupImagelist[index]),
                          fit: BoxFit.cover)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                        child: Text(
                          soupNamelist[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18),
                        ),
                      ),
                    
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
      ),);
    
  }
}
