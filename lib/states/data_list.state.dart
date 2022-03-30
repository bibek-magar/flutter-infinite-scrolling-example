import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_app/model/room.dart';

part 'data_list.state.freezed.dart';

@freezed
class DataListState with _$DataListState {
  const factory DataListState({
    @Default([]) List<Room> rooms,
    @Default(false) bool isLoading,
    @Default(false) bool isFetchingNext,
    @Default('') String error,
    @Default(true) bool hasNext,
  }) = _DataListState;
}
