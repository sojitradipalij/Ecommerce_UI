import 'package:flutter/material.dart';

import '../model/home_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<OffCard> offCard = [
    OffCard(
        image: 'assets/images/sh1.png',
        dealday: 'on everything today',
        offtext: '50% Off',
        refcode: 'with code feb2022'),
    OffCard(
        image: 'assets/images/sh2.png',
        dealday: 'on everything today',
        offtext: '70% Off',
        refcode: 'with code march2022'),
    OffCard(
        image: 'assets/images/sh3.png',
        dealday: 'on everything today',
        offtext: '20% Off',
        refcode: 'with code apr2022'),
    OffCard(
        image: 'assets/images/sh4.png',
        dealday: 'on everything today',
        offtext: '35% Off',
        refcode: 'with code may2022'),
  ];

  List<NewArrivals> newArrivals = [
    NewArrivals(
      image: 'assets/images/gsh.jpg',
      pname: 'The Marc',
      pdes: 'Trovater Tota',
      pprice: '\$195.00',
    ),
    NewArrivals(
        image: 'assets/images/j1.jpg',
        pname: 'The Arigato',
        pdes: 'Clean Sneaker',
        pprice: '\$245.00'),
    NewArrivals(
        image: 'assets/images/je3.jpg',
        pname: 'Maison',
        pdes: 'Rapica Sneaker',
        pprice: '\$530.00'),
    NewArrivals(
        image: 'assets/images/d3.jpg',
        pname: 'Roller Rabbit',
        pdes: 'Vado Odelia Dress',
        pprice: '\$185.00'),
  ];

  List<PopularCard> popularcard = [
    PopularCard(
      image: 'assets/images/sh3.png',
      name: 'The Marc',
      des: 'Trovater Tota',
      price: '\$195.00',
    ),
    PopularCard(
        image: 'assets/images/d2.jpg',
        name: 'The Arigato',
        des: 'Clean Sneaker',
        price: '\$245.00'),
    PopularCard(
        image: 'assets/images/j2.jpg',
        name: 'Maison Margiela',
        des: 'Rapica Sneaker',
        price: '\$530.00'),
    PopularCard(
        image: 'assets/images/d3.jpg',
        name: 'Roller Rabbit',
        des: 'Vado Odelia Dress',
        price: '\$185.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/profile.jpg")),
                shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/profile.jpg"))),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Black Man",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "blackman@gmail.com",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              title: const Text('Cart'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              title: const Text('Notification'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.help,
                color: Colors.black,
              ),
              title: const Text('Help'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.share,
                color: Colors.black,
              ),
              title: const Text('Share'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Text(
                "Welcome,",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: const Text(
                "Our Fashion App,",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.70,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search...",
                          border: InputBorder.none),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: const Offset(0, 4),
                                blurRadius: 2,
                                spreadRadius: 1),
                          ]),
                      child: const Icon(
                        Icons.multiple_stop_rounded,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 180,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: offCard.length,
                  itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        width: 300,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(40)),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 100,
                              top: 10,
                              child: SizedBox(
                                height: 200,
                                child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(offCard[index].image)),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 20,
                              ),
                              child: Text(offCard[index].offtext,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                  )),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 50,
                                left: 20,
                              ),
                              child: Text(offCard[index].dealday,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                top: 80,
                                left: 20,
                              ),
                              child: Text(offCard[index].refcode,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Positioned(
                              left: 20,
                              top: 115,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(30)),
                                child: const Text("Get Now",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "New Arrivals",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 260,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: newArrivals.length,
                  itemBuilder: (context, index) => Stack(children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: 160,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: 160,
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            newArrivals[index].image))),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(newArrivals[index].pname,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                child: Text(newArrivals[index].pdes,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 15,
                                    )),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 2),
                                child: Text(newArrivals[index].pprice,
                                    style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          right: 15,
                          top: 10,
                          child: CircleAvatar(
                            maxRadius: 12,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        )
                      ])),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Container(
                    child: const Text(
                      "View All",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: popularcard.map((e) => popularitems(e)).toList(),
            )
          ],
        ),
      ),
    );
  }

  Container popularitems(item) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      height: 100,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(item.image))),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: Text(item.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: Text(item.des,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                    )),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Text("4.5")
                ],
              )
            ],
          ),
          const Spacer(),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(item.price,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
