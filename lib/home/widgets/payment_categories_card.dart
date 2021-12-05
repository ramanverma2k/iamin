import 'package:auto_animated/auto_animated.dart';
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colorList[index],
            ),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LiveGrid(
                  primary: false,
                  reverse: true,
                  showItemInterval: const Duration(milliseconds: 50),
                  showItemDuration: const Duration(milliseconds: 150),
                  itemCount:
                      (28 * int.parse(paymentData![index]['percentage']) / 100)
                          .ceil(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio: 1.07,
                  ),
                  // padding: const EdgeInsets.all(3),
                  itemBuilder: animationItemBuilder(
                    (index) => Container(
                        color: const Color(0xFFFFFFFF).withOpacity(0.3)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(paymentData![index]["name"],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18)),
                        Text(
                            'Last Payment ${paymentData![index]["lastPayment"]}',
                            style: const TextStyle(
                                color: Color(0xFF8e9eb6), fontSize: 12)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\u{20b9}${paymentData![index]["spentAmount"]}',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20)),
                        Text('${paymentData![index]["percentage"]}%',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20)),
                      ],
                    )
                  ],
                ),
              ),
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

  Widget Function(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) animationItemBuilder(
    Widget Function(int index) child, {
    EdgeInsets padding = EdgeInsets.zero,
  }) =>
      (
        BuildContext context,
        int index,
        Animation<double> animation,
      ) =>
          FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -0.1),
                end: Offset.zero,
              ).animate(animation),
              child: Padding(
                padding: padding,
                child: child(index),
              ),
            ),
          );

  Widget Function(
    BuildContext context,
    Animation<double> animation,
  ) animationBuilder(
    Widget child, {
    double xOffset = 0,
    EdgeInsets padding = EdgeInsets.zero,
  }) =>
      (
        BuildContext context,
        Animation<double> animation,
      ) =>
          FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset(xOffset, 0.1),
                end: Offset.zero,
              ).animate(animation),
              child: Padding(
                padding: padding,
                child: child,
              ),
            ),
          );
}
