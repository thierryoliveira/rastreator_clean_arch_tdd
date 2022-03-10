import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:rastreator/app/domain/entities/package/package_entity.dart';
import 'package:rastreator/app/domain/usecases/package/get_package_track_usecase.dart';

import '../../../core/errors/failures.dart';

part 'package_event.dart';
part 'package_state.dart';

class PackageBloc extends Bloc<PackageEvent, PackageState> {
  final GetPackageTrackUsecase getPackageTrackUsecase;
  late String packageTitle;
  late String trackId;

  PackageBloc({
    required this.getPackageTrackUsecase,
  }) : super(InitialState()) {
    on<ClearTrackInfoEvent>(_onClearTrackInfoEvent);
    on<GetTrackInfoEvent>(_onGetTrackInfoEvent);
  }

  _onGetTrackInfoEvent(
      GetTrackInfoEvent event, Emitter<PackageState> emit) async {
    emit(LoadingState());
    final failureOrPackage = await getPackageTrackUsecase(event.trackId);
    var state = _getDataOrErrorState(failureOrPackage);
    emit(state);
  }

  PackageState _getDataOrErrorState(
      Either<Failure, PackageEntity> failureOrPackage) {
    final result = failureOrPackage.fold(
        (failure) => ErrorState(message: 'Ops... an error occurred'),
        (response) => LoadedState(package: response));
    return result;
  }

  _onClearTrackInfoEvent(
          ClearTrackInfoEvent event, Emitter<PackageState> emit) =>
      emit(InitialState());
}
