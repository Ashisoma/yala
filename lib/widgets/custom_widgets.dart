import 'package:country_currency_pickers/countries.dart';
import 'package:country_currency_pickers/country.dart';
import 'package:country_currency_pickers/country_picker_cupertino.dart';
import 'package:country_currency_pickers/country_picker_dialog.dart';
import 'package:country_currency_pickers/country_picker_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yala/screens/setting_screen.dart';
import 'package:yala/screens/account_screen.dart';
import 'package:yala/screens/transfer_fund_screen.dart';
import 'package:yala/widgets/color.dart';

import '../screens/home_screen.dart';

class MyWidgets {
  static Widget bottomNavMenu(BuildContext context,
      {required int contextIndex}) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
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
          // TextButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => const TransferFunds()),
          //     );
          //   },
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Icon(
          //         Icons.monetization_on_outlined,
          //         color: contextIndex == 2
          //             ? MyColors.logoClr
          //             : contextIndex == 21 ||
          //                     contextIndex == 3 ||
          //                     contextIndex == 4
          //                 ? Colors.grey
          //                 : Colors.grey,
          //       ),
          //       Text(
          //         'Transfer Funds',
          //         style: TextStyle(
          //           color: contextIndex == 2
          //               ? MyColors.logoClr
          //               : contextIndex == 1 ||
          //                       contextIndex == 3 ||
          //                       contextIndex == 4
          //                   ? Colors.grey
          //                   : Colors.grey,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          TextButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return const TransactionForm();
                },
                isScrollControlled:
                    true, // Set to true to make it take the full height
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.0)),
                ),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.money_dollar_circle,
                  color: contextIndex == 3
                      ? MyColors.logoClr
                      : contextIndex == 2 ||
                              contextIndex == 3 ||
                              contextIndex == 4
                          ? Colors.grey
                          : Colors.grey,
                ),
                Text(
                  'Transact',
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AccountScreen()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  CupertinoIcons.person,
                  color: contextIndex == 4
                      ? MyColors.logoClr
                      : contextIndex == 3 ||
                              contextIndex == 1 ||
                              contextIndex == 2
                          ? Colors.grey
                          : Colors.grey,
                ),
                Text(
                  'Account',
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsScreen()),
              );
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.settings,
                  color: contextIndex == 5
                      ? MyColors.logoClr
                      : contextIndex == 4 ||
                              contextIndex == 3 ||
                              contextIndex == 1
                          ? Colors.grey
                          : Colors.grey,
                ),
                Text(
                  'Settings',
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

class TransactionForm extends StatefulWidget {
  const TransactionForm({super.key});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  String _selectedCountryCode = '+1'; // Default country code

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: transferForm(context),
    );
  }

  transferForm(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Money transfer',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const Text(
          'Phone Number',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 200,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Expanded(
                //   child: CountryPickerDialog(
                //     titlePadding: EdgeInsets.all(8.0),
                //     searchCursorColor: Colors.pinkAccent,
                //     searchInputDecoration:
                //         InputDecoration(hintText: 'Search...'),
                //     isSearchable: true,
                //     title: Text('Select your phone code'),
                //     onValuePicked: (Country country) => setState(
                //         () => _selectedCountryCode = country as String),
                //   ),
                // ),
                Container(
                  height: 45,
                  width: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    // controller: _textFieldController,
                    decoration: const InputDecoration(
                      hintText: '7******',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // Add some spacing between the TextFormField and CountryCodePicker
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        const Text(
          'Amount',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 200,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              // mainAxisSize: MainAxisSize.max,
              children: [
                // Expanded(
                //   child: CountryPickerDialog(
                //     titlePadding: EdgeInsets.all(8.0),
                //     searchCursorColor: Colors.pinkAccent,
                //     searchInputDecoration:
                //         InputDecoration(hintText: 'Search...'),
                //     isSearchable: true,
                //     title: Text('Select your phone code'),
                //     onValuePicked: (Country country) => setState(
                //         () => _selectedCountryCode = country as String),
                //   ),
                // ),
                Container(
                  height: 45,
                  width: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    // controller: _textFieldController,
                    decoration: const InputDecoration(
                      hintText: '0.00',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                // Add some spacing between the TextFormField and CountryCodePicker
              ],
            ),
          ),
        ),
        //
        const SizedBox(height: 16),
        //Add your form widgets here
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Commission',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text('0.10')
          ],
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.logoClr,
          ),
          onPressed: () {
            // Handle form submission
            Navigator.pop(context); // Close the bottom sheet
          },
          child: const Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
