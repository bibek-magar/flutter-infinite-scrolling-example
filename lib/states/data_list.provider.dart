import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_app/states/data_list.state.dart';
import 'package:my_app/states/date_list.notifier.dart';

final dataListProvider = StateNotifierProvider<DataListNotifier, DataListState>(
    (ref) => DataListNotifier(ref.read));
