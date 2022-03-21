import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate_app/screens/favorites_change_notifier.dart';
import 'package:real_estate_app/consts/houseobj.dart';

void main() {
  late FavoritesChangeNotifier sut;

  setUp(
    () {
      sut = FavoritesChangeNotifier();
    },
  );

  test(
    'check favorites list',
    () {
      expect(sut.favouriteList, []);
    },
  );
}
