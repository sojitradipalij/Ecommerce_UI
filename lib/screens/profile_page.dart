import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isNotify = false;
  bool isMood = false;

  var selectedItem = 'English';
  List<String> languages = ["English", "Hindi", "Spanish", "Italian", "French"];
  int selectedIndex = 0;
  List<String> gender = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/profile.jpg")),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 2,
                          spreadRadius: 1,
                          offset: Offset(0, 4))
                    ]),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: const Text("Upload image",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("Name",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("Black Man",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("Gender",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ),

                    SizedBox(
                      height: 30,
                      width: 180,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: gender.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            width: 85,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.symmetric(horizontal: 2),
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
                              gender[index],
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
                    ),
                    // Container(
                    //   height: 30,
                    //   width: 80,
                    //   alignment: Alignment.center,
                    //   padding: const EdgeInsets.symmetric(horizontal: 15),
                    //   decoration: BoxDecoration(
                    //       color: Colors.black,
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: const Text("Male",
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 12,
                    //           fontWeight: FontWeight.w500)),
                    // ),
                    // Container(
                    //   height: 30,
                    //   width: 86,
                    //   alignment: Alignment.center,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       border: Border.all(color: Colors.black, width: 1),
                    //       borderRadius: BorderRadius.circular(10)),
                    //   margin: const EdgeInsets.symmetric(horizontal: 20),
                    //   child: const Text("Female",
                    //       textAlign: TextAlign.center,
                    //       style: TextStyle(
                    //           fontSize: 12, fontWeight: FontWeight.w500)),
                    // ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("Age",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("22 Year",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("Email",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text("blackman123@gmail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                alignment: Alignment.centerLeft,
                child: const Text("Settings",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 2, color: Colors.black12)),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black12,
                                  ),
                                  child: const Icon(
                                    Icons.language,
                                    color: Colors.black,
                                  )),
                              Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.centerLeft,
                                child: const Text("Language",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Spacer(),
                              DropdownButton(
                                  underline: Container(
                                    height: 1,
                                    color: Colors.white,
                                  ),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  onChanged: (String? itemValue) {
                                    setState(() {
                                      selectedItem = itemValue!;
                                    });
                                  },
                                  value: selectedItem,
                                  items: languages.map((item) {
                                    return DropdownMenuItem(
                                        value: item, child: Text(item));
                                  }).toList()),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black12,
                                  ),
                                  child: const Icon(
                                    Icons.notifications_active,
                                    color: Colors.black,
                                  )),
                              Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.centerLeft,
                                child: const Text("Notification",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Spacer(),
                              Switch(
                                  activeColor: Colors.black,
                                  value: isNotify,
                                  onChanged: (bool flag) {
                                    setState(() => isNotify = !isNotify);
                                    if (kDebugMode) {
                                      print(flag);
                                    }
                                  })
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black12,
                                  ),
                                  child: const Icon(
                                    Icons.nightlight_round_outlined,
                                    color: Colors.black,
                                  )),
                              Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.centerLeft,
                                child: const Text("Dark Mood",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Spacer(),
                              Switch(
                                  activeColor: Colors.black,
                                  value: isMood,
                                  onChanged: (bool flag) {
                                    setState(() => isMood = !isMood);
                                    if (kDebugMode) {
                                      print(flag);
                                    }
                                  })
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.black12,
                                  ),
                                  child: const Icon(
                                    Icons.help,
                                    color: Colors.black,
                                  )),
                              Container(
                                margin: const EdgeInsets.all(20),
                                alignment: Alignment.centerLeft,
                                child: const Text("Help Center",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_right_rounded,
                                size: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.logout_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Log Out",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
