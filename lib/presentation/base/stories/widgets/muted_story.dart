import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/base/stories/widgets/muted_list_tile.dart';
import 'package:flutter_template/presentation/base/stories/widgets/update_list_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/dividers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class MutedStories extends StatefulWidget {
  MutedStories({
    required this.isSearching,
    required this.isFiltering,
    Key? key,
  });
  bool isSearching;
  bool isFiltering;

  @override
  State<MutedStories> createState() => _MutedStoriesState();
}

class _MutedStoriesState extends State<MutedStories> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, state) {

            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final StoriesModel user = widget.isSearching ? state.searchedContacts[index] : widget.isFiltering ? state.filteredStories[index] : state.muteStories[index] ;
                if (user.stories.isNotEmpty) {
                  return MutedListTile(
                    user: user,
                  );
                }
                return Container();
              },
              separatorBuilder: (_, __) =>const SizedBox(height: 6,),
              itemCount: widget.isSearching ? state.searchedContacts.length : widget.isFiltering ? state.filteredStories.length : state.muteStories.length,
            );
          },
        ),
      ],
    );
  }
}
