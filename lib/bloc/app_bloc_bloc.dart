import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex_latest_launch/models/get_model/spacex_data_get_model.dart';
import 'package:spacex_latest_launch/repository/dao_repository.dart';

part 'app_bloc_event.dart';
part 'app_bloc_state.dart';

class AppBlockBlock extends Bloc<AppBlocEvent, AppState> {
  AppBlockBlock({
    required this.repository,
  }) : super( AppState()) {
    on<GetData>(_mapGetDataEventToState);
  }

  final DaoRepository repository;

  void _mapGetDataEventToState(
      GetData event, Emitter<AppState> emit) async {
    try {
      emit(state.copyWith(status: AppStateStatus.loading));
      final data = await repository.getData();
      emit(
        state.copyWith(
          status: AppStateStatus.success,
          data: data,
        ),
      );
    } catch (error) {
      emit(state.copyWith(status: AppStateStatus.error));
    }
  }
}
