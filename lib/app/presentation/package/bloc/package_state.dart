part of 'package_bloc.dart';

abstract class PackageState extends Equatable {
  const PackageState();

  @override
  List<Object> get props => [];
}

class InitialState extends PackageState {}

class LoadingState extends PackageState {}

class LoadedState extends PackageState {
  final PackageEntity package;
  LoadedState({
    required this.package,
  });

  @override
  List<Object> get props => [package];
}

class ErrorState extends PackageState {
  final String message;
  ErrorState({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
