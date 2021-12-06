import 'package:flutter/material.dart';
import 'package:iamin/constants.dart';
import 'package:iamin/home/service/data.dart';
import 'package:iamin/home/widgets/payment_categories_card.dart';
import 'package:iamin/home/widgets/transactions_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isRefreshing = false;
  Map<String, dynamic> _paymentData = {};
  Map<String, dynamic> _transactionsData = {};

  Future<void> _refresh() async {
    setState(() {
      _isRefreshing = true;
    });
    await Future.delayed(const Duration(milliseconds: 500));

    _paymentData = generatePaymentData();
    _transactionsData = generateTransactionsData();

    setState(() {
      _isRefreshing = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          child: !_isRefreshing
              ? SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                          key: const Key('elevatedButton'),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Card Balance'),
                              Row(
                                children: const [
                                  Text(
                                      '\u{20B9}0\t\t\t >'), // unicode for Rupee symbol
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            bottom: 20.0, left: 20.0, right: 20.0),
                        child: Text(
                          'Payment Categories',
                          style: TextStyle(color: Color(0xFF8e9eb6)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: PaymentCategoriesCard(
                              colorList: categoriesCardListColors,
                              paymentData: _paymentData["categories"]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20.0, left: 20.0, top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Latest Transactions',
                              style: TextStyle(color: Color(0xFF8e9eb6)),
                            ),
                            TextButton(
                              key: const Key('seeAllTransactions'),
                              onPressed: () {},
                              child: const Text(
                                'Show All\t\t >',
                                style: TextStyle(color: Color(0xFF8e9eb6)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: TransactionsList(
                          transactionData: _transactionsData["transactions"],
                        ),
                      ),
                    ],
                  ),
                )
              : Container(key: const Key('loading')),
          onRefresh: _refresh,
          backgroundColor: const Color(0xFF1b1e31),
          color: Colors.white,
        ),
      ),
    );
  }
}
