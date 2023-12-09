import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yala/models/card_items.dart';
import 'package:yala/widgets/custom_widgets.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        automaticallyImplyLeading: false,
        title: const Text(
          "Account Management",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 15.0),
        color: Colors.grey.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'images/icon.png',
                        height: 50.0,
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "John Doe",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "938423444132",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Center(child: Icon(CupertinoIcons.forward))
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Expanded(child: pager())
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: MyWidgets.bottomNavMenu(
          context,
          contextIndex: 5,
        ),
      ),
    );
  }

  List<ItemsCard> items = [
    ItemsCard('43.0', 'images/ic_visa.png',
        LinearGradient(colors: [Colors.purple, Colors.purple.shade300])),
    ItemsCard('43.0', 'images/ic_mastercard.png',
        LinearGradient(colors: [Colors.blue, Colors.blue.shade300])),
    ItemsCard('43.0', 'images/mpesa.png',
        LinearGradient(colors: [Colors.green, Colors.green.shade300])),
  ];

  Widget pager() {
    return SizedBox(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 20.0,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
                gradient: items[index].linearGradient),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    height: 50,
                    '${items[index].img}',
                    scale: 2.0,
                  ),
                  Text(
                    'Bal \$ ${items[index].amount}',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    '2373 *** **** **** ***2',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
