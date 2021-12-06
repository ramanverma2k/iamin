import 'package:flutter_test/flutter_test.dart';
import 'package:iamin/home/service/data.dart';

void main() {
  group('Service', () {
    test('generates and returns payment categories data', () async {
      var paymentData = generatePaymentData();

      expect(paymentData.containsKey("categories"), equals(true));

      expect(paymentData["categories"].length, 5);
      expect(paymentData["categories"].runtimeType,
          equals(<dynamic>[].runtimeType));
    });

    test('generates and returns transactions data', () async {
      var transactionsData = generateTransactionsData();

      expect(transactionsData.containsKey("transactions"), equals(true));

      expect(transactionsData["transactions"].length, 5);
      expect(transactionsData["transactions"].runtimeType,
          equals(<dynamic>[].runtimeType));
    });
  });
}
