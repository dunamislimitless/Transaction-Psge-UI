import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class BuyCar extends StatelessWidget {
  const BuyCar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios_new)),
                const SizedBox(
                  width: 70,
                ),
                const Center(
                  child: Text(
                    'Buy my first car',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(153, 241, 232, 232),
                  border: Border.all(
                      color: const Color.fromARGB(255, 145, 125, 125),
                      width: 0.5),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$10,000',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        Text(
                          '\$70,000',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total amount invested',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        Text(
                          'Current value',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    LinearPercentIndicator(
                      width: 335,
                      lineHeight: 5.0,
                      percent: 0.65,
                      progressColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '5th May, 2023',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ])
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomIconWidget(
                    color: const Color.fromARGB(255, 199, 220, 210),
                    icon: const Icon(Icons.add),
                    label: 'Top-up',
                    iconcolor: Colors.green,
                    radius: 30,
                    iconsize: 35,
                  ),
                  CustomIconWidget(
                      color: const Color.fromARGB(255, 233, 195, 208),
                      icon: const Icon(Icons.analytics_sharp),
                      label: 'Earnings',
                      iconsize: 35,
                      iconcolor: Colors.pink,
                      radius: 30),
                  CustomIconWidget(
                      color: const Color.fromARGB(255, 175, 197, 236),
                      icon: const Icon(Icons.settings),
                      label: 'Customized',
                      iconsize: 35,
                      iconcolor: Colors.blue,
                      radius: 30)
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text('You invested in',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(153, 241, 232, 232),
                      border: Border.all(
                          color: const Color.fromARGB(255, 145, 125, 125),
                          width: 0),
                      borderRadius: BorderRadius.circular(12)),
                  child: const ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 162, 20, 187),
                      child: Text(
                        'D',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    title: Text(
                      'DefilPulse index',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 162, 20, 187),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$0.0026 ',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '+7.84%',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                'Recent transaction',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: TextStyle(
                      color: Color.fromARGB(255, 171, 25, 14),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ]),
            const CustomList(
              color: Color.fromARGB(255, 245, 245, 212),
              iconcolor: Color.fromARGB(255, 237, 188, 11),
              reason: 'Payout for My new car',
              datentime: 'January 5, 2020',
              amount: '\$10,000',
              status: 'Pending',
              statuscol: Color.fromARGB(255, 237, 188, 11),
              icon: Icon(Icons.add),
            ),
            const CustomList(
                color: Color.fromARGB(255, 210, 228, 219),
                iconcolor: Colors.green,
                reason: 'Fund Plan',
                datentime: 'January 8, 2020',
                amount: '\$10,000',
                status: 'Successful',
                statuscol: Colors.green,
                icon: Icon(
                  Icons.arrow_upward_sharp,
                )),
            const CustomList(
                color: Color.fromARGB(255, 210, 228, 219),
                iconcolor: Colors.green,
                reason: 'Fund Plan',
                datentime: 'January 8, 2020',
                amount: '\$10,000',
                status: 'Successful',
                statuscol: Colors.green,
                icon: Icon(
                  Icons.arrow_upward_sharp,
                ))
          ],
        ),
      ),
    ));
  }
}

class CustomIconWidget extends StatelessWidget {
  CustomIconWidget(
      {super.key,
      required this.color,
      required this.icon,
      required this.label,
      required this.iconsize,
      required this.iconcolor,
      required this.radius});

  final Color color;
  final dynamic icon;
  double? value;
  final String label;
  final Color iconcolor;
  final double radius;
  final double iconsize;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        backgroundColor: color,
        radius: radius,
        child: Center(
            child: IconButton(
          onPressed: () {},
          icon: icon,
          iconSize: iconsize,
          color: iconcolor,
        )),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        label,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
      ),
    ]);
  }
}

class CustomList extends StatelessWidget {
  const CustomList(
      {super.key,
      required this.color,
      required this.iconcolor,
      required this.reason,
      required this.datentime,
      required this.amount,
      required this.status,
      required this.statuscol,
      this.icon});
  final Color color;
  final Color iconcolor;
  final String reason;
  final String datentime;
  final String amount;
  final String status;
  final Color statuscol;
  final dynamic icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(153, 241, 232, 232),
            border: Border.all(
                color: const Color.fromARGB(255, 145, 125, 125), width: 0.5),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: color,
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: icon,
                        color: iconcolor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    reason,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  datentime,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
                Text(
                  amount,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )
              ]),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Transaction Status',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  status,
                  style: TextStyle(
                      fontSize: 14,
                      color: statuscol,
                      fontWeight: FontWeight.bold),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
