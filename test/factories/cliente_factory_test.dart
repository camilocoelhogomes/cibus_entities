import 'package:entities/entities.dart';
import 'package:entities/factories/cliente_factory.dart';
import 'package:test/test.dart';

void main() {
  group('Abstract Cliente Factorie', () {
    test('Local Cliente Factorie', () {
      final LocalClient localClient = ClientFactory.localClient(
          id: 'id', notificationDevice: 'notificationDevice', table: 'table');
      expect(localClient, const TypeMatcher<LocalClient>());
    });
    test("Expect a Expeption if any data is empyty", () {
      expect(
          () => ClientFactory.localClient(
              id: 'id', notificationDevice: 'notificationDevice', table: ''),
          throwsException);
      expect(
          () => ClientFactory.localClient(
              id: 'id', notificationDevice: '', table: 'table'),
          throwsException);
      expect(
          () => ClientFactory.localClient(
              id: '', notificationDevice: 'notificationDevice', table: 'table'),
          throwsException);
    });
  });
}
