import 'package:flutter/material.dart';

class PaymentCategoriesCard extends StatelessWidget {
  const PaymentCategoriesCard({Key? key, required this.colorList})
      : super(key: key);

  final List<List<Color>> colorList;

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
                children: const [
                  Text('Mobile Home Dealers',
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text('Last Payment 17 May',
                      style: TextStyle(color: Color(0xFF8e9eb6), fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('\u{20b9}4,498',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text('85%',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ],
              )
            ],
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
