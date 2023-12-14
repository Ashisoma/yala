import 'package:country_code_picker/country_code_picker.dart';
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

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Money transfer to Bit',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          TextFormField(
            // controller: emailCtrler,
            decoration: InputDecoration(
              hintText: "",
              isDense: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              // labelText: 'Password',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          SizedBox(
            width: 200,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                 Expanded(
            child: TextFormField(
              // controller: _textFieldController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
          ),
          const SizedBox(width: 10), // Add some spacing between the TextFormField and CountryCodePicker
          CountryCodePicker(
            onChanged: (CountryCode code) {
              setState(() {
                _selectedCountryCode = code.toString();
              });
            },
            initialSelection: 'US', // Set the initial country selection
            favorite: ['+1'], // Optionally, set your favorite countries
            showCountryOnly: false,
            showOnlyCountryWhenClosed: false,
            alignLeft: false,
          ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          const SizedBox(height: 16),
          // Add your form widgets here
          TextFormField(
            decoration: const InputDecoration(labelText: 'Amount'),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              // Handle form submission
              Navigator.pop(context); // Close the bottom sheet
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
