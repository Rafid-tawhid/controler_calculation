import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class CartListBlock extends BlocBase{



  CartListBlock();

  final _increment = new BehaviorSubject<int>(); //the BehaviorSubject gets the last value
  final _decrement = new BehaviorSubject<int>();

  void increment() => _increment.add(1); //method to increment
  void decrement() => _decrement.add(-1);//method to decrement


  @override
  void dispose() {// will be called automatically
    _increment.close();
    _decrement.close();
  }

}