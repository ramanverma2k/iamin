import 'package:flutter/material.dart';

class PaymentCategoriesCard extends StatelessWidget {
  const PaymentCategoriesCard(
      {Key? key, required this.colorList, required this.paymentData})
      : super(key: key);

  final List<List<Color>> colorList;
  final List<dynamic>? paymentData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.38,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colorList[index],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(paymentData![index]["name"],
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18)),
                  Text('Last Payment ${paymentData![index]["lastPayment"]}',
                      style: const TextStyle(
                          color: Color(0xFF8e9eb6), fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\u{20b9}${paymentData![index]["spentAmount"]}',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20)),
                  Text('${paymentData![index]["percentage"]}%',
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20)),
                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: MediaQuery.of(context).size.width * 0.05);
      },
      itemCount: 5,
    );
  }
}
