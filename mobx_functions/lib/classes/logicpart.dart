import 'package:mobx/mobx.dart';
part 'logicpart.g.dart';

class FunStore = FunPro with _$FunStore;

abstract class FunPro with Store {
  @observable
  int counter = 0;
  String topic = "Packages";

  @action
  add(text) {
    counter++;
    topic = text;
  }
}
