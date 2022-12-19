// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logicpart.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FunStore on FunPro, Store {
  late final _$counterAtom = Atom(name: 'FunPro.counter', context: context);

  @override
  int get counter {
    _$counterAtom.reportRead();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.reportWrite(value, super.counter, () {
      super.counter = value;
    });
  }

  late final _$FunProActionController =
      ActionController(name: 'FunPro', context: context);

  @override
  void add(dynamic text) {
    final _$actionInfo =
        _$FunProActionController.startAction(name: 'FunPro.add');
    try {
      return super.add(text);
    } finally {
      _$FunProActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
counter: ${counter}
    ''';
  }
}
