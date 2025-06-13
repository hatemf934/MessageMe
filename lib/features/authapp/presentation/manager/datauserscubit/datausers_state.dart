part of 'datausers_cubit.dart';

sealed class DatausersState extends Equatable {
  const DatausersState();

  @override
  List<Object> get props => [];
}

final class DatausersInitial extends DatausersState {}

final class DatausersSucsses extends DatausersState {
  final List<DataModel> data;

  const DatausersSucsses({required this.data});
}

final class DatausersFailure extends DatausersState {
  final String errmessage;
  final int statusCode;
  const DatausersFailure({required this.statusCode, required this.errmessage});
}
