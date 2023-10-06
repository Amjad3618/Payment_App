import 'package:flutter/material.dart';

import 'package:payfire/Utils/Custome_Balance.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'My Card',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200, // Set an appropriate height for your PageView
                  child: PageView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CustomCard(
                        text1: "Balance",
                        text2: "\$ 503.47",
                        text3: "***4674",
                        text4: "12 / 3",
                      ),
                      // ignore: prefer_const_constructors
                      CustomCard(
                        text1: "Balance",
                        text2: "\$ 840.47",
                        text3: "***28674",
                        text4: "10 / 4",
                      ),
                      const CustomCard(
                        text1: "Balance",
                        text2: "\$ 114.47",
                        text3: "***2874",
                        text4: "9 / 7",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/next.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/money.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/bill.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sent',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Pay',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Bills',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                ListTile(
                  title: Text('All bills'),
                  subtitle: Text('payment'),
                  leading: Image.asset('assets/Transection.png'),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
                const SizedBox(
                  height: 13,
                ),
                ListTile(
                  title: Text('All bills'),
                  subtitle: Text('payment'),
                  leading: Image.asset('assets/Transection.png'),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
