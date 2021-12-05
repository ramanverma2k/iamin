import 'package:flutter/material.dart';

class PaymentCategoriesCard extends StatelessWidget {
  const PaymentCategoriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.38,
          child: Card(
            color: Colors.white,
            child: Column(
              children: const [],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: MediaQuery.of(context).size.width * 0.05);
      },
      itemCount: 3,
    );
  }
}
