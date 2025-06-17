import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit() : super(SearchCubitInitial());

  String _currentSearchQuery = '';
  changesearch(int index) {
    if (index == 0) {
      _currentSearchQuery = '';
      emit(SearchAppBar());
    } else {
      emit(SearchTextField());
    }
  }

  void searchUsers(String query) {
    _currentSearchQuery = query;
    if (_currentSearchQuery.isEmpty) {
      emit(SearchTextField());
    } else {
      emit(SearchResults(searchQuery: _currentSearchQuery));
    }
  }

  void clearSearch() {
    _currentSearchQuery = '';
    emit(SearchTextField());
  }
}
