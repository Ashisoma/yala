import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:yala/screens/home_screen.dart';
import 'package:yala/widgets/color.dart';
import 'package:yala/widgets/custom_widgets.dart';

class TransferFunds extends StatefulWidget {
  final String imgUrl;
  final String acc;
  final String fund;
  final Color color;
  TransferFunds(
      {super.key,
      required this.imgUrl,
      required this.acc,
      required this.fund,
      required this.color});

  @override
  State<TransferFunds> createState() => _TransferFundsState();
}

class _TransferFundsState extends State<TransferFunds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Transfer Funds",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade200,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.grey.shade200,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 12.0,
                  left: 12.0,
                  right: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Manage Source",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.06,
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: widget.color,
                            borderRadius: BorderRadius.circular(5.0),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: SizedBox(
                                height: 20, child: Image.asset(widget.imgUrl)),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.acc,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              widget.fund,
                              style: const TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                // color:
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          CupertinoIcons.forward,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  bottom: 12.0,
                  left: 12.0,
                  right: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Information',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deposit Balance",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "\$ 10.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fee",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "0.10%",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "\$ 0.00",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const HomeScreen());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.058,
                    decoration: BoxDecoration(
                      color: MyColors.logoClr,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: MyWidgets.bottomNavMenu(
          context,
          contextIndex: 2,
        ),
      ),
    );
  }
}
