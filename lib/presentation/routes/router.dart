import 'package:auto_route/annotations.dart';
import 'package:flutter_template/presentation/base/base_page.dart';
import 'package:flutter_template/presentation/base/calls/pages/call_info_page.dart';
import 'package:flutter_template/presentation/base/calls/pages/call_receiver_page.dart';
import 'package:flutter_template/presentation/base/calls/pages/video_call_page.dart';
import 'package:flutter_template/presentation/base/calls/pages/voice_call_page.dart';
import 'package:flutter_template/presentation/base/chats/pages/chat_details_page.dart';
import 'package:flutter_template/presentation/base/chats/pages/chatting_page.dart';
import 'package:flutter_template/presentation/base/chats/pages/new_chat_page.dart';
import 'package:flutter_template/presentation/base/chats/pages/new_chat_page_2.dart';
import 'package:flutter_template/presentation/base/groups/pages/group_chatting_page.dart';
import 'package:flutter_template/presentation/base/groups/pages/group_details_page.dart';
import 'package:flutter_template/presentation/base/groups/pages/invite_page.dart';
import 'package:flutter_template/presentation/base/stories/pages/creator/story_choose_duration_page.dart';
import 'package:flutter_template/presentation/base/stories/pages/creator/story_creator_image_editor_page.dart';
import 'package:flutter_template/presentation/base/stories/pages/creator/story_creator_page.dart';
import 'package:flutter_template/presentation/base/stories/pages/creator/story_video_trim_page.dart';
import 'package:flutter_template/presentation/base/stories/pages/type_a_status_page.dart';
import 'package:flutter_template/presentation/base/stories/pages/view_story.dart';
import 'package:flutter_template/presentation/core/pages/app_overview_page.dart';
import 'package:flutter_template/presentation/core/pages/camera_page.dart';
import 'package:flutter_template/presentation/core/pages/contact_permission_page.dart';
import 'package:flutter_template/presentation/core/pages/display_captured_image_page.dart';
import 'package:flutter_template/presentation/core/pages/fingerprint_verification_page.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page.dart';
import 'package:flutter_template/presentation/core/pages/image_view_page_2.dart';
import 'package:flutter_template/presentation/core/pages/profile_photo_page.dart';
import 'package:flutter_template/presentation/core/pages/splash_page.dart';
import 'package:flutter_template/presentation/core/pages/terms_and_policy_page.dart';
import 'package:flutter_template/presentation/core/pages/verify_fingerprint_page.dart';
import 'package:flutter_template/presentation/core/pages/welcome_screen_page.dart';
import 'package:flutter_template/presentation/drawer/contacts/contacts_page.dart';
import 'package:flutter_template/presentation/drawer/help/app_info.dart';
import 'package:flutter_template/presentation/drawer/help/help_page.dart';
import 'package:flutter_template/presentation/drawer/invite_friends/invite_friends.dart';
import 'package:flutter_template/presentation/drawer/new_group/create_group_page.dart';
import 'package:flutter_template/presentation/drawer/new_group/pages/select_members_page.dart';
import 'package:flutter_template/presentation/drawer/notifications/notifications_page.dart';
import 'package:flutter_template/presentation/drawer/profile/pages/edit_profile_page.dart';
import 'package:flutter_template/presentation/drawer/profile/pages/view_profile_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/blocked_contacts_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/change_number_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/change_number_verify_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/change_wallpaper_init_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/chat_history_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/chat_wallpaper_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/chat_wallpaper_picture_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/delete_account_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/fingerprint_lock_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/freeup_space_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/privacy_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/status_and_group_privacy_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/user_filegridview_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/verify_number_delete_account_page.dart';
import 'package:flutter_template/presentation/drawer/settings/pages/verify_second_number_page.dart';
import 'package:flutter_template/presentation/drawer/settings/settings_page.dart';
import 'package:flutter_template/presentation/drawer/settings/widgets/display_contacts.dart';
import 'package:flutter_template/presentation/onboarding/pages/choose_language_page.dart';
import 'package:flutter_template/presentation/onboarding/pages/otp_verification_page.dart';
import 'package:flutter_template/presentation/onboarding/pages/phone_verification_page.dart';
import 'package:flutter_template/presentation/onboarding/pages/phone_verified.dart';
import 'package:flutter_template/presentation/onboarding/pages/setup_profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    ///[Core]
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: BasePage),
    AutoRoute(page: CameraPage),
    AutoRoute(page: DisplayCapturedImagePage),
    AutoRoute(page: FingerprintVerificationPage),
    AutoRoute(page: ImageViewPage),

    ///[Authentication]
    // AutoRoute(page: SignInPage),

    // AutoRoute(page: SignUpPage),
    //[Permission]
    AutoRoute(page: ContactPermissionPage),

    ///[Onboarding]
    AutoRoute(page: OtpVerificationPage),
    AutoRoute(page: PhoneVerificationPage),
    AutoRoute(page: PhoneVerifiedPage),
    AutoRoute(page: ChooseLanguagePage),
    AutoRoute(page: SetupProfilePage),
    AutoRoute(page: AppPreviewPage),
    AutoRoute(page: ProfilePhotoPage),
    AutoRoute(page: VerifyFingerprintPage),
    AutoRoute(page: TermsAndPolicyPage),
    AutoRoute(page: WelcomeScreenPage),

    ///[Drawer]
    AutoRoute(page: EditProfilePage),
    AutoRoute(page: InviteFriendsPage),
    AutoRoute(page: NotificationsPage),
    AutoRoute(page: ViewProfilePage),
    AutoRoute(page: NotificationsPage),
    AutoRoute(page: ContactsPage),
    // AutoRoute(page: NewBroadcastPage),
    AutoRoute(page: CreateGroupPage),
    AutoRoute(page: SelectMembersPage),
    AutoRoute(page: NewChatPage),
    AutoRoute(page: NewChatPage2),
    AutoRoute(page: CallReceiverPage),
    AutoRoute(page: ChattingPage),
    AutoRoute(page: GroupChattingPage),
    AutoRoute(page: HelpPage),
    AutoRoute(page: AppInfoPage),
    AutoRoute(page: InviteLinkPage),

    ///[Settings]
    AutoRoute(page: DisplayContacts),
    AutoRoute(page: SettingsPage),
    AutoRoute(page: StatusAndGroupPrivacyPage),
    AutoRoute(page: ChatHistoryPage),
    AutoRoute(page: FingerprintLockPage),
    AutoRoute(page: ChangeNumberPage),
    AutoRoute(page: DeleteAccountPage),
    AutoRoute(page: BlockedContactsPage),
    AutoRoute(page: PrivacyPage),
    AutoRoute(page: ChatWallpaperPage),
    AutoRoute(page: ChangeWallPaperPage),
    AutoRoute(page: ChatWallpaperPicturePage),
    AutoRoute(page: FreeUpSpacePage),
    AutoRoute(page: UserFileGridViewPage),
    AutoRoute(page: VerNumDeleteAccountPage),
    AutoRoute(page: ChangeNumberVerifyPage),
    AutoRoute(page: VerifySecondNumberPage),
    // AutoRoute(page: DisplayContacts),

    ///[Stories]
    AutoRoute(page: TypeAStatusPage),
    AutoRoute(page: ViewStoryPage),
    AutoRoute(page: StoryCreatorPage),
    AutoRoute(page: VideoTrimPage),
    AutoRoute(page: StoryEditorImagePage),
    AutoRoute(page: StoryChooseDurationPage),

    ///[Calls]
    AutoRoute(page: CallInfoPage),
    AutoRoute(page: VoiceCallPage),
    AutoRoute(page: VideoCallPage),
    AutoRoute(page: CallReceiverPage),
    // AutoRoute(page: CallPage),
    // AutoRoute(page: CallDetailPage),

    ///[Groups]
    AutoRoute(page: GroupDetailsPage),

    ///[Chats]
    AutoRoute(page: ChatDetailsPage),
    AutoRoute(page: ImageView2Page),

    ///[Broadcast]
    // AutoRoute(page: BroadcastPage),
    // AutoRoute(page: BroadcastDetailsPage),
  ],
)
class $AppRouter {}
