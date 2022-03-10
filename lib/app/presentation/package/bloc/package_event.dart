part of 'package_bloc.dart';

abstract class PackageEvent extends Equatable {
  const PackageEvent();

  @override
  List<Object> get props => [];
}

class GetTrackInfoEvent extends PackageEvent {
  final String trackId;
  const GetTrackInfoEvent(this.trackId);
}

class ClearTrackInfoEvent extends PackageEvent {}
