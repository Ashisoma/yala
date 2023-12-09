import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yala/widgets/color.dart';

class MyWidgets {
  static Widget bottomNavMenu(BuildContext context,
      {required int contextIndex}) {
    return Container(
      // margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const HomeScreen()),
              // );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.home,
                  color: contextIndex == 1
                      ? MyColors.logoClr
                      : contextIndex == 2 ||
                              contextIndex == 3 ||
                              contextIndex == 4
                          ? Colors.grey
                          : Colors.grey,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: contextIndex == 1
                        ? MyColors.logoClr
                        : contextIndex == 2 ||
                                contextIndex == 3 ||
                                contextIndex == 4
                            ? Colors.grey
                            : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => const PrescriptionScreen()),
              // );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_chart,
                  color: contextIndex == 2
                      ? MyColors.logoClr
                      : contextIndex == 21 ||
                              contextIndex == 3 ||
                              contextIndex == 4
                          ? Colors.grey
                          : Colors.grey,
                ),
                Text(
                  'Prescription',
                  style: TextStyle(
                    color: contextIndex == 2
                        ? MyColors.logoClr
                        : contextIndex == 1 ||
                                contextIndex == 3 ||
                                contextIndex == 4
                            ? Colors.grey
                            : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const SearchScreen()),
              // );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.search,
                  color: contextIndex == 3
                      ? MyColors.logoClr
                      : contextIndex == 2 ||
                              contextIndex == 3 ||
                              contextIndex == 4
                          ? Colors.grey
                          : Colors.grey,
                ),
                Text(
                  'Search',
                  style: TextStyle(
                    color: contextIndex == 3
                        ? MyColors.logoClr
                        : contextIndex == 2 ||
                                contextIndex == 3 ||
                                contextIndex == 4
                            ? Colors.grey
                            : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder:
              //    (context) =>
              //    const CartScreen()
              //    ),
              // );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.cart,
                  color: contextIndex == 4
                      ? MyColors.logoClr
                      : contextIndex == 3 ||
                              contextIndex == 1 ||
                              contextIndex == 2
                          ? Colors.grey
                          : Colors.grey,
                ),
                Text(
                  'Cart',
                  style: TextStyle(
                    color: contextIndex == 4
                        ? MyColors.logoClr
                        : contextIndex == 2 ||
                                contextIndex == 1 ||
                                contextIndex == 4
                            ? Colors.grey
                            : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const AccountScreen()),
              // );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_2_outlined,
                  color: contextIndex == 5
                      ? MyColors.logoClr
                      : contextIndex == 4 ||
                              contextIndex == 3 ||
                              contextIndex == 1
                          ? Colors.grey
                          : Colors.grey,
                ),
                Text(
                  'Person',
                  style: TextStyle(
                    color: contextIndex == 5
                        ? MyColors.logoClr
                        : contextIndex == 4 ||
                                contextIndex == 3 ||
                                contextIndex == 1
                            ? Colors.grey
                            : Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
