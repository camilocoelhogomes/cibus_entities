part of entities;

class Order {
  Restaurant restaurant;
  List<OrderItem> items;
  Client client;
  String id;
  Order({
    required this.restaurant,
    required this.items,
    required this.client,
    required this.id,
  });
}
