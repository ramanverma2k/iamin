import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({Key? key, required this.transactionData})
      : super(key: key);

  final List<dynamic>? transactionData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF242947),
                    ),
                    child: SvgPicture.asset(
                      'assets/transfer.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionData![index]['name'],
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        transactionData![index]['date'],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF8e9eb6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '- \u{20b9}${transactionData![index]['spentAmount']}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    transactionData![index]['time'],
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF8e9eb6),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: MediaQuery.of(context).size.height * 0.07,
          thickness: 1,
          color: const Color(0xFF8e9eb6),
        );
      },
      itemCount: 5,
    );
  }
}
