part of entities;

class Order {
  String id;
  String restaurantId;
  String status;
  DateTime created;
  DateTime lastUpdate;
  List<OrderItem> items;
  Order({
    required this.id,
    required this.restaurantId,
    required this.status,
    required this.created,
    required this.lastUpdate,
    required this.items,
  });
}

class LocalOrder extends Order {
  String table;

  LocalOrder(
      {required String id,
      required this.table,
      required String restaurantId,
      required String status,
      required DateTime created,
      required DateTime lastUpdate,
      required List<OrderItem> items})
      : super(
            id: id,
            restaurantId: restaurantId,
            status: status,
            created: created,
            lastUpdate: lastUpdate,
            items: items);
}

class DigitalOrder extends Order {
  String street;
  String city;
  String cep;
  String neighborhood;
  int number;
  String complement;
  String reference;

  DigitalOrder({
    required String id,
    required String restaurantId,
    required String status,
    required DateTime created,
    required DateTime lastUpdate,
    required List<OrderItem> items,
    required this.street,
    required this.city,
    required this.cep,
    required this.neighborhood,
    required this.number,
    required this.complement,
    required this.reference,
  }) : super(
            id: id,
            restaurantId: restaurantId,
            status: status,
            created: created,
            lastUpdate: lastUpdate,
            items: items);
}
