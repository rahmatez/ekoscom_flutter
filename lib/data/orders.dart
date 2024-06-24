import 'package:agriplant/data/products.dart';
import 'package:agriplant/models/order.dart';

List<Order> orders = [
  Order(
    id: "202304A5",
    products: products.reversed.take(3).toList(),
    date: DateTime.utc(2023),
  ),
];
