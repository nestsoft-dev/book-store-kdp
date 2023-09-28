import 'package:flutter/material.dart';
import 'package:flutter_paypal_checkout/flutter_paypal_checkout.dart';

import '../models/item_model.dart';

//undefined

Future<void> payPalPayments(BuildContext context, double amount,
    double discount, List<ItemModel> books) async {
  PaypalCheckout(
    sandboxMode: true,
    clientId:
        "ATtJ2gpE39yBQjGb9bW9IFVaGhGJwTko2LZQ-bZLFr3FhV35DHvez5ENz5joI3Aap7bABqDGVfjQJ6u",
    secretKey: "SECRET_KEY",
    returnURL: "RETURN_URL",
    cancelURL: "CANCEL_URL",
    transactions: [
      {
        "amount": {
          "total": '$amount',
          "currency": "USD",
          "details": {
            "subtotal": '$amount',
            "shipping": '0',
            "shipping_discount": discount
          }
        },
        "description": "The payment transaction description.",
        "item_list": {
          "items": books,
          // shipping address is Optional
          // "shipping_address": {
          //   "recipient_name": "Raman Singh",
          //   "line1": "Delhi",
          //   "line2": "",
          //   "city": "Delhi",
          //   "country_code": "IN",
          //   "postal_code": "11001",
          //   "phone": "+00000000",
          //   "state": "Texas"
          // },
        }
      }
    ],
    note: "PAYMENT_NOTE",
    onSuccess: (Map params) async {
      print("onSuccess: $params");
    },
    onError: (error) {
      print("onError: $error");
      Navigator.pop(context);
    },
    onCancel: () {
      print('cancelled:');
    },
  );
}
