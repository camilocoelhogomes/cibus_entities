part of entities;

abstract class Client extends Model {
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
    return '${address.street},${address.buildingNumber},${address.neighborhood},${address.city}';
  }

  @override
  Map<String, dynamic> toModel() {
    // TODO: implement toModel
    throw UnimplementedError();
  }
}

class LocalClient implements Client {
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
      : id = json['id'] ?? '',
        notificationDevice = json['notificationDevice'] ?? '',
        table = json['table'] ?? '';

  @override
  String get deliveryPlace {
    return table;
  }

  @override
  Map<String, dynamic> toModel() {
    return {
      "type": "localClient",
      "id": id.isEmpty ? null : id,
      "notificationDevice":
          notificationDevice.isEmpty ? null : notificationDevice,
      "table": table.isEmpty ? null : table
    };
  }
}
