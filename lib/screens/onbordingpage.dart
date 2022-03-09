import 'package:ecommerce/bottom_nav_bar.dart';
import 'package:ecommerce/model/home_models.dart';
import 'package:flutter/material.dart';

class OnBordingPage extends StatefulWidget {
  const OnBordingPage({Key? key}) : super(key: key);

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  int selectedIndex = 0;
  PageController? _controller;

  List<OnBordingCard> onbordingcard = [
    OnBordingCard(
      image: 'assets/images/onbord1.jpg',
      tag: '20% Discount New ArrivalProduct',
      subtag:
          'Publish up your selfies to make your self  more beautiful with this app',
    ),
    OnBordingCard(
      image: 'assets/images/onbord2.jpg',
      tag: 'Tag Advantage of The Offer Shopping',
      subtag:
          'Publish up your selfies to make your self  more beautiful with this app',
    ),
    OnBordingCard(
      image: 'assets/images/onbord3.jpg',
      tag: 'All Type of Offers Weathin Your Reach',
      subtag:
          'Publish up your selfies to make your self  more beautiful with this app',
    ),
  ];

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: PageView.builder(
                          controller: _controller,
                          itemCount: onbordingcard.length,
                          onPageChanged: (index) => setState(() {
                                selectedIndex = index;
                              }),
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 600,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.45,
                                      margin: const EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  onbordingcard[index]
                                                      .image)))),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Text(
                                      onbordingcard[index].tag,
                                      style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Text(
                                      onbordingcard[index].subtag,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Positioned(
                      bottom: 40,
                      left: 50,
                      // margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              onbordingcard.length,
                              (index) => buildDot(index, context),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.50),
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: TextButton(
                              child: const Icon(
                                Icons.fast_forward_rounded,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                if (selectedIndex == onbordingcard.length - 1) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const BottomNavBar(),
                                    ),
                                  );
                                }
                                _controller?.nextPage(
                                  duration: const Duration(milliseconds: 50),
                                  curve: Curves.bounceIn,
                                );
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.black,
                                textStyle: const TextStyle(color: Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7,
      width: selectedIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: selectedIndex == index ? Colors.black : Colors.grey,
      ),
    );
  }
}
