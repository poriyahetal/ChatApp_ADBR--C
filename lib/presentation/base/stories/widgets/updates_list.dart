import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/contacts/contacts_bloc.dart';
import 'package:flutter_template/domain/stories/stories_model.dart';
import 'package:flutter_template/domain/user/kahochat_user.dart';
import 'package:flutter_template/presentation/base/stories/widgets/update_list_tile.dart';
import 'package:flutter_template/presentation/core/layout_widgets/dividers.dart';
import 'package:flutter_template/presentation/core/layout_widgets/sized_boxes.dart';
import 'package:flutter_template/presentation/core/theme/colors.dart';

class UpdatesList extends StatefulWidget {
  UpdatesList({
    required this.isSearching,
    required this.isFiltering,
    Key? key,
  });
  bool isSearching;
  bool isFiltering;

  @override
  State<UpdatesList> createState() => _UpdatesListState();
}

class _UpdatesListState extends State<UpdatesList> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        // const Text(
        //   "Updates",
        //   style: TextStyle(
        //     fontSize: 18,
        //     fontWeight: FontWeight.w700,
        //     color: Kolors.grey,
        //   ),
        // ),
        // const SizedBoxH20(),
        BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, state) {
            return ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final StoriesModel user = widget.isSearching ? state.searchedContacts[index] : widget.isFiltering ? state.filteredStories[index] : state.unmutedStories[index] ;
                final _storys = user.stories.where((ee) => (ee.created!.toDate().add(const Duration(hours: 24))).microsecondsSinceEpoch >= DateTime.now().microsecondsSinceEpoch).toList();
                user.copyWith(stories: _storys);
                if (_storys.isNotEmpty) {
                  return UpdateListTile(
                    user: StoriesModel(
                      uid: user.uid, 
                      mute: user.mute, 
                      name: user.name, 
                      phoneNumber: user.phoneNumber, 
                      profilePictureUrl: user.profilePictureUrl, 
                      stories: _storys, 
                      storiesPrivacy: user.storiesPrivacy,
                      unseenStories: user.unseenStories
                    ),
                  );
                }
                return Container();
              },
              separatorBuilder: (_, __) =>const SizedBox(height: 6,),
              itemCount: widget.isSearching ? state.searchedContacts.length : widget.isFiltering ? state.filteredStories.length : state.unmutedStories.length,
            );
          },
        ),
      ],
    );
  }
}
