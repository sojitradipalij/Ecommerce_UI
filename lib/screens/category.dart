import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';
import '../model/home_models.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedIndex = 0;
  List<String> categories = ["All", "Shoes", "Jackets", "Jeans", "Dresses"];

  List<CategoryCard> categorycard = [
    CategoryCard(
      image: 'assets/images/gsh.jpg',
      cname: 'The Marc',
      cdes: 'Trovater Tota',
      cprice: '\$195.00',
    ),
    CategoryCard(
        image: 'assets/images/d1.jpg',
        cname: 'The Arigato',
        cdes: 'Clean Sneaker',
        cprice: '\$245.00'),
    CategoryCard(
        image: 'assets/images/j1.jpg',
        cname: 'Maison Margiela',
        cdes: 'Rapica Sneaker',
        cprice: '\$530.00'),
    CategoryCard(
        image: 'assets/images/je1.jpg',
        cname: 'Roller Rabbit',
        cdes: 'Vado Odelia Dress',
        cprice: '\$185.00'),
    CategoryCard(
      image: 'assets/images/j2.jpg',
      cname: 'The Marc',
      cdes: 'Trovater Tota',
      cprice: '\$195.00',
    ),
    CategoryCard(
        image: 'assets/images/je4.jpg',
        cname: 'The Arigato',
        cdes: 'Clean Sneaker',
        cprice: '\$245.00'),
    CategoryCard(
        image: 'assets/images/sh2.png',
        cname: 'Maison Margiela',
        cdes: 'Rapica Sneaker',
        cprice: '\$530.00'),
    CategoryCard(
        image: 'assets/images/sh4.png',
        cname: 'Roller Rabbit',
        cdes: 'Vado Odelia Dress',
        cprice: '\$185.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const BottomNavBar())),
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.black, shape: BoxShape.circle),
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
              ),
            ),
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
            SizedBox(
              width: 5,
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              //Category
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: 35,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(left: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Colors.black
                                  : Colors.white,
                              border: Border.all(
                                  width: 2,
                                  color: selectedIndex == index
                                      ? Colors.black
                                      : Colors.grey),
                              borderRadius: BorderRadius.circular(16)),
                          child: Text(
                            categories[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),

              Expanded(
                  child: ListView.builder(
                      itemCount: categorycard.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          height: 150,
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 0.5,
                                color: Colors.black12,
                                offset: Offset(0, 4),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            categorycard[index].image))),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(categorycard[index].cname,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(categorycard[index].cdes,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 15,
                                        )),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: const Text("Size   8 9 10 11",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                        )),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(categorycard[index].cprice,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 20,
                                      ),
                                      const Text("4.5")
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      }))
            ],
          ),
        ));
  }
}
