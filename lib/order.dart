part of entities;

abstract class Client {
  String get notificationDevice;
  String get deliveryPlace;
  String get id;
}

class DigitalClient implements Client {
  @override
  String notificationDevice;
  @override
  String id;
  Address address;
  DigitalClient({
    required this.notificationDevice,
    required this.id,
    required this.address,
  });

  @override
  String get deliveryPlace {
    return '${address.street}, n° ${address.buildingNumber},Bairro: ${address.neighborhood}, Cidade: ${address.city}';
  }
}

class LocalClient implements Client, Model {
  @override
  String id;
  @override
  String notificationDevice;
  String table;
  LocalClient({
    required this.id,
    required this.notificationDevice,
    required this.table,
  });

  LocalClient.fromModel(Map<String, dynamic> json)
      : id = json['id'],
        notificationDevice = json['notificationDevice'],
        table = json['table'];

  @override
  String get deliveryPlace {
    return table;
  }

  @override
  Map<String, dynamic> toModel(Model model) {
    return {"id": id, "notificationDevice": notificationDevice, "table": table};
  }
}

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
