import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yala/widgets/color.dart';
import 'package:yala/widgets/custom_widgets.dart';

import '../models/card_items.dart';
import 'transfer_fund_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int option = 1;

  bool showTransactions = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey.shade200,
        automaticallyImplyLeading: false,
        title: const Text(
          'YalaPay',
          style: TextStyle(
              // fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade200,
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // pager(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Text(
              "Quick Services",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            quickServices(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Transactions",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      showTransactions = !showTransactions;
                    });
                  },
                  icon: Icon(
                    showTransactions
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
              ],
            ),
            transactionsList(),
          ],
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

  Widget transactionsList() {
    return Expanded(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        // Adjust the height as needed
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              height: MediaQuery.of(context).size.height * 0.02,
            );
          },
          itemCount: 5,
          //   scrollDirection: Axis.vertical,
          itemBuilder: (ctx, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  'images/icon.png',
                ),
              ),
              title: const Text(
                'Transaction Successful',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Your transfer of \$ 40.0 to Jane Doe was successful',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Today at 12:43 pm',
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Row quickServices() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => const TransferFunds());
            setState(() {
              option = 1;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: option == 1 ? MyColors.backEndClr : Colors.white,
              border: Border.all(
                color: option == 1 ? MyColors.logoClr : Colors.grey,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 25.0,
                  child: Image.asset(
                    'images/ic_visa.png',
                    fit: BoxFit.cover,
                    scale: 10,
                    color: Colors.purple,
                  ),
                ),
                const Text(
                  "Bank to Mpesa",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              option = 2;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: option == 2 ? MyColors.backEndClr : Colors.white,
              border: Border.all(
                color: option == 2 ? MyColors.logoClr : Colors.grey,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 25.0,
                  child: Image.asset(
                    'images/mpesa.png',
                    fit: BoxFit.cover,
                    scale: 10,
                  ),
                ),
                const Text(
                  "Mpesa to Mpesa",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              option = 3;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: option == 3 ? MyColors.backEndClr : Colors.white,
              border: Border.all(
                color: option == 3 ? MyColors.logoClr : Colors.grey,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 25.0,
                  child: Image.asset(
                    'images/airtel.png',
                    fit: BoxFit.cover,
                    scale: 10,
                  ),
                ),
                const Text(
                  "Mpesa to Airtel",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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
