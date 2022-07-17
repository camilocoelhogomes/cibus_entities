import 'package:entities/entities.dart';

class ClientFactory {
  static LocalClient localClient(
      {required String id,
      required String notificationDevice,
      required String table}) {
    if (id.isEmpty || notificationDevice.isEmpty || table.isEmpty) {
      throw Exception("Todos os valores devem ser preenchidos");
    }
    return LocalClient(
        id: id, notificationDevice: notificationDevice, table: table);
  }
}
