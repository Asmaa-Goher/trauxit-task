import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trauxit_task/Task3/widgets/posts_screen/posts_appbar.dart';
import 'package:trauxit_task/Task3/widgets/posts_screen/posts_listview.dart';

import '../blocs/posts_bloc/posts_bloc.dart';
import '../utilities/ui_utilities.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PostsBloc, PostsState>(
      listenWhen: (_, current) => current is PostsGetError,
      builder: (context, state) {
        return Scaffold(
          appBar: postsAppBar(),
          body: state is PostsGetLoading
              ? UiUtilities.showLoader()
              : const PostsListView(),
        );
      },
      listener: (BuildContext context, PostsState state) {
        UiUtilities.showSnackBar(txt: "txt", context: context);
      },
    );
  }
}
