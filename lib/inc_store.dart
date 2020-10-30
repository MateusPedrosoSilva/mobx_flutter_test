import 'package:mobx/mobx.dart';

part 'inc_store.g.dart';

class IncStore = _IncStore with _$IncStore;

abstract class _IncStore with Store {
  @observable
  int number = 0;

  @action
  incNumber() {
    number++;
  }
}
