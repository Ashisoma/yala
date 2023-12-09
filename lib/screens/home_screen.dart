import 'package:flutter/material.dart';
import 'package:yala/widgets/custom_widgets.dart';

import '../models/card_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'YalaPay',
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              horizontalListView(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "Services",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              pager()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: MyWidgets.bottomNavMenu(
          context,
          contextIndex: 1,
        ),
      ),
    );
  }

  Row servicesWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              height: 100.0,
              width: 120.0,
              color: Colors.green.shade400,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              height: 100.0,
              width: 120.0,
              color: Colors.blue.shade400,
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: 100.0,
              width: 120.0,
              color: Colors.blue.shade400,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              height: 50.0,
              width: 120.0,
              color: Colors.green.shade400,
            ),
          ],
        ),
      ],
    );
  }

  Widget pager() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: PageView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.0,
                ),
                gradient: items[index].linearGradient),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    height: 50,
                    '${items[index].img}',
                    scale: 2.0,
                  ),
                  Text(
                    '\$ ${items[index].amount}',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '\$ ${items[index].amount}',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
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

  List<ItemsCard> items = [
    ItemsCard('43.0', 'images/ic_visa.png',
        LinearGradient(colors: [Colors.purple, Colors.purple.shade300])),
    ItemsCard('43.0', 'images/ic_mastercard.png',
        LinearGradient(colors: [Colors.blue, Colors.blue.shade300])),
    ItemsCard('43.0', 'images/mpesa.png',
        LinearGradient(colors: [Colors.green, Colors.green.shade300])),
  ];
  // img, amnt,
  Widget horizontalListView() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          );
        },
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
              gradient: items[index].linearGradient),
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  height: 50,
                  '${items[index].img}',
                  scale: 2.0,
                ),
                Text(
                  '\$ ${items[index].amount}',
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '\$ ${items[index].amount}',
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
