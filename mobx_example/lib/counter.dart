// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class CounterStore = Counter with _$CounterStore;

abstract class Counter with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}
///////////////////////////////////////////////////
///                                             ///
///run this command to generate                 ///
///flutter package pub run build_runner build   ///
///                                             ///
///////////////////////////////////////////////////
///dev packages                                 ///
/// mobx_codegen:                               ///
// build_runner:                                ///
///////////////////////////////////////////////////
///mobx packages                                ///
///mobx                                         ///
///flutter_mobx                                 ///
/////////////Thank You/////////////////////////////
///////////////////////////////////////////////////