part of 'app_bloc_bloc.dart';

enum AppStateStatus { initial, success, error, loading }

extension AppStateStatusX on AppStateStatus {
  bool get isInitial => this == AppStateStatus.initial;
  bool get isSuccess => this == AppStateStatus.success;
  bool get isError => this == AppStateStatus.error;
  bool get isLoading => this == AppStateStatus.loading;
}

class AppState extends Equatable {
   AppState({
    this.status = AppStateStatus.initial,
     List<SpaceXDataGetModel>? data,
  }) : data  = data ?? SpaceXDataGetModel.empty;

  final List<SpaceXDataGetModel>? data;
  final AppStateStatus status;

  @override
  List<Object?> get props => [status, data];

  AppState copyWith({
    List<SpaceXDataGetModel>? data,
    AppStateStatus? status,
  }) {
    return AppState(
      data: data ?? this.data,
      status: status ?? this.status,
    );
  }
}


