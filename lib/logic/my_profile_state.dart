part of 'my_profile_cubit.dart';

@immutable
abstract class MyProfileState {}

class MyProfileInitial extends MyProfileState {}

class MyProfileLoading extends MyProfileState {}

class MyProfileSuccess extends MyProfileState {}

class MyProfileError extends MyProfileState {}
