part of 'package_bloc.dart';

abstract class PackageEvent extends Equatable {
  const PackageEvent();

  @override
  List<Object> get props => [];
}

class GetTrackInfoEvent extends PackageEvent {
  final String trackId;
  final String packageTitle;
  const GetTrackInfoEvent(this.trackId, this.packageTitle);
}

class ClearTrackInfoEvent extends PackageEvent {}
