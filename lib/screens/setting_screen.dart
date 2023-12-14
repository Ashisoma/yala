import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yala/auth/login_screen.dart';
import 'package:yala/widgets/color.dart';
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
          "Settings",
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
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(
                          CupertinoIcons.person_2,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Text(
                        "Beneficiaries",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.indigo,
                        child: Icon(
                          Icons.wallet_travel,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Text(
                        "Account Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
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
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey.shade400,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.tune_rounded,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Text(
                        "Preferences",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Text(
                        "Security",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        CupertinoIcons.forward,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey.shade400,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.03,
                      ),
                      const Text(
                        "Notifications",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
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
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Get.offAll(() => const LoginScreen());
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: MyColors.redCls,
                ),
                child: const Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
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
}

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: profileWIdget(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.grey.shade200,
                  ),
                ),
                child: ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  title: const Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  trailing: const Icon(
                    CupertinoIcons.forward,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileWIdget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(
                  color: Colors.grey.shade600,
                )),
            child: Image.asset(
              'images/avatar.png',
              fit: BoxFit.fill,
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Text(
          "Hello, Mahdi ***",
        ),
        const Text("Referal Code - '' "),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        const Text('Points'),
      ],
    );
  }
}
