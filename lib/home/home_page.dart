import 'package:flutter/material.dart';
import 'package:iamin/constants.dart';
import 'package:iamin/home/widgets/payment_categories_card.dart';
import 'package:iamin/home/widgets/transactions_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Card Balance'),
                      Row(
                        children: const [
                          Text('\u{20B9}0\t\t\t >'), // unicode for Rupee symbol
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
                child: Text(
                  'Payment Categories',
                  style: TextStyle(color: Color(0xFF8e9eb6)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: const PaymentCategoriesCard(
                      colorList: categoriesCardListColors),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 20.0, left: 20.0, right: 20.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Latest Transactions',
                      style: TextStyle(color: Color(0xFF8e9eb6)),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Show All\t\t\t >',
                        style: TextStyle(color: Color(0xFF8e9eb6)),
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: TransactionsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
