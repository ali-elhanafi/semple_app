import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'conter_state.dart';

class ConterCubit extends Cubit<ConterState> {
  ConterCubit() : super(ConterState(counterval: 0));
  void increment() => emit(ConterState(counterval: state.counterval + 1));
}
