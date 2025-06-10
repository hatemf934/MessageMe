import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit() : super(SearchCubitInitial());
}
