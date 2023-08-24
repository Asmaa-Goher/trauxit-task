import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/post_model.dart';
import '../../repositories/posts_repository.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  List<PostModel> posts = [];
  PostsBloc() : super(PostsInitial()) {
    PostsRepository.init();
    on<PostsLoadEvent>(_getPostsData);
  }

  void _getPostsData(PostsLoadEvent event, Emitter<PostsState> emit) async {
    emit(PostsGetLoading());
    try {
      posts = List.from((await PostsRepository.getPosts())
          .data
          .map((post) => PostModel.fromJson(post)));
      emit(PostsGetSuccess());
    } catch (e) {
      emit(PostsGetError());
    }
  }
}
