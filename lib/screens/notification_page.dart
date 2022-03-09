import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.notification_important_rounded,
                size: 100,
              ),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: const Text("No notification yet",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500))),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                      "Stay tuned! Notification about your Activity will Show up here.",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500)))
            ],
          ),
        ),
      ),
    );
  }
}
