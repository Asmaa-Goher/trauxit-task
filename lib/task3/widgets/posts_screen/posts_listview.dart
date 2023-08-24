import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trauxit_task/task3/models/post_model.dart';
import 'package:trauxit_task/task3/utilities/colors.dart';

import '../../blocs/posts_bloc/posts_bloc.dart';
import '../shared_widgets/build_text.dart';

class PostsListView extends StatelessWidget {
  const PostsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<PostModel> posts = context.read<PostsBloc>().posts;
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) => Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        elevation: 0,
        child: ListTile(
          dense: true,
          leading: BuildText(
            text: "Post ${index + 1}",
            color: App3Colors.secondColor,
            fontWeight: FontWeight.bold,
          ),
          title: BuildText(
            text: posts[index].title,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.bold,
            color: App3Colors.thirdColor,
            height: 1.5,
          ),
          subtitle: BuildText(
            text: posts[index].body,
            textAlign: TextAlign.start,
            fontWeight: FontWeight.bold,
            height: 1.6,
          ),
        ),
      ),
    );
  }
}
