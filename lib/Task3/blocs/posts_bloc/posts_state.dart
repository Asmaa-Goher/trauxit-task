part of 'posts_bloc.dart';

@immutable
abstract class PostsState {}

class PostsInitial extends PostsState {}

class PostsGetLoading extends PostsState {}

class PostsGetSuccess extends PostsState {}

class PostsGetError extends PostsState {}

