import 'dart:math';

Map<String, dynamic> generatePaymentData() {
  var rand = Random();
  var price = [];
  num sum = 0;
  List<String> categoryNames = [
    "Mobile Home Dealers",
    "Taxicabs And Limousines",
    "Miscellaneous Apparel and Accessory Shops",
    "Electric, Gas, Sanitary and Water Utilities",
    "Misc. General Merchandise",
  ];

  Map<String, dynamic> data = {
    "categories": [],
  };

  for (int i = 0; i < 5; i++) {
    price.add(rand.nextInt(10000));
  }

  for (int i = 0; i < 5; i++) {
    sum += price[i];
  }

  for (int i = 0; i < price.length; i++) {
    price[i] /= sum;
    price[i] *= 10000;
    data["categories"].add({
      "name": categoryNames[i],
      "lastPayment": "17 May",
      "spentAmount": price[i].toStringAsFixed(2),
      "percentage": rand.nextInt(100).toString(),
    });
  }

  return data;
}

Map<String, dynamic> generateTransactionsData() {
  var rand = Random();
  var price = [];
  num sum = 0;

  List<String> transactionNames = [
    "WWWOLACABSCOM",
    "Recharge",
    "Reliance Retail Ltd",
    "Recharge",
    "Airtel",
  ];

  Map<String, dynamic> data = {
    "transactions": [],
  };

  for (int i = 0; i < 5; i++) {
    price.add(rand.nextInt(1000));
  }

  for (int i = 0; i < 5; i++) {
    sum += price[i];
  }

  for (int i = 0; i < price.length; i++) {
    price[i] /= sum;
    price[i] *= 1000;
    data["transactions"].add({
      "name": transactionNames[i],
      "date": "26 May 2021",
      "spentAmount": price[i].toStringAsFixed(2),
      "time": "6:40pm",
    });
  }

  return data;
}
