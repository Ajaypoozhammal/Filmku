part of 'movie_bloc.dart';

@immutable
sealed class MovieState {}

final class MovieInitial extends MovieState {}
class MovieBlocLoading extends MovieState {}
class MovieBlocLoaded extends MovieState {}
class MovieBlocError extends MovieState {}