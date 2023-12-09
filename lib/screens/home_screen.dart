import 'package:flutter/material.dart';

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
        title: const Text(
          'Yala',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
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
              Expanded(child: horizontalListView(),),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
const Text(
          "Services",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Column(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  color: Colors.green.shade400,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  color: Colors.blue.shade400,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  color: Colors.blue.shade400,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  color: Colors.green.shade400,
                ),
              ],
            ),
          ],
        ),
            ],
          ),
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
  // img, amnt,
  Widget horizontalListView() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => Container(
          decoration: BoxDecoration(gradient: items[index].linearGradient),
          height: 100,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                '${items[index].img}',
                scale: 2.0,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                '\$ ${items[index].amount}',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemsCard {
  String? amount, img;
  LinearGradient? linearGradient;

  ItemsCard(this.amount, this.img, this.linearGradient);
}
