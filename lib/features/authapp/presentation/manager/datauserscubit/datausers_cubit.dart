import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'datausers_state.dart';

class DatausersCubit extends Cubit<DatausersState> {
  DatausersCubit() : super(DatausersInitial());
}
