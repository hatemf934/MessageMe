import 'package:bloc/bloc.dart';
import 'package:chat_group/cubits/themecubit/theme_state.dart';

class ThemeCubit extends Cubit<Themecubitstate> {
  ThemeCubit() : super(Themecubitstate.light);
  tochange() {
    emit(state == Themecubitstate.light
        ? Themecubitstate.dark
        : Themecubitstate.light);
  }
}
