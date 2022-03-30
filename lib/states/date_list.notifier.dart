import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_app/firebase_service.dart';
import 'package:my_app/states/data_list.state.dart';

class DataListNotifier extends StateNotifier<DataListState> {
  DataListNotifier(this._read) : super(const DataListState()) {
    getData();
  }

  final Reader _read;

  String? get lastDocumentID {
    if (state.rooms.isNotEmpty) {
      return state.rooms.last.id;
    }
    return null;
  }

  getData() async {
    state = state.copyWith(isLoading: true);
    final data = await _read(firebaseService).getData();
    state = state.copyWith(rooms: data, isLoading: false);
  }

  fetchMore() async {
    final oldData = [...state.rooms];
    if (lastDocumentID == null) {
      state = state.copyWith(hasNext: false);

      return;
    }

    state = state.copyWith(isFetchingNext: true);

    final data = await _read(firebaseService).getNextData(
      lastDocumentID!,
    );

    if (data.isNotEmpty) {
      //Get it from config
      const limit = 8;
      if (data.length == limit) {
        state =
            state.copyWith(rooms: [...oldData, ...data], isFetchingNext: false);
      } else {
        state = state.copyWith(
          rooms: [...oldData, ...data],
          isFetchingNext: false,
          hasNext: false,
        );
      }
    } else {
      state = state.copyWith(hasNext: false, isFetchingNext: false);
    }
  }
}
