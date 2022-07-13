import 'package:entities/entities.dart';

void main() {
  LocalClient localClient = LocalClient.fromModel(
      {"id": "", "table": '42', "notificationDevice": 'aws'});
  print(localClient.table);
  try {
    LocalClient localClient2 =
        LocalClient(id: '', table: '42', notificationDevice: 'aws');
    print(localClient2.table);
  } catch (error) {
    print(error);
  }
}
