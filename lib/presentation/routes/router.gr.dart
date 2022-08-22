// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'dart:io' as _i70;

import 'package:auto_route/auto_route.dart' as _i62;
import 'package:camera/camera.dart' as _i64;
import 'package:flutter/material.dart' as _i63;
import 'package:screenshot/screenshot.dart' as _i66;

import '../../domain/calls/call_model.dart' as _i71;
import '../../domain/chats/message_select_model.dart' as _i72;
import '../../domain/core/image_with_caption_model.dart' as _i65;
import '../../domain/groups/group_chat_model.dart' as _i69;
import '../../domain/stories/stories_model.dart' as _i68;
import '../../domain/user/kahochat_user.dart' as _i67;
import '../base/base_page.dart' as _i2;
import '../base/calls/pages/call_info_page.dart' as _i56;
import '../base/calls/pages/call_receiver_page.dart' as _i27;
import '../base/calls/pages/video_call_page.dart' as _i58;
import '../base/calls/pages/voice_call_page.dart' as _i57;
import '../base/chats/pages/chat_details_page.dart' as _i60;
import '../base/chats/pages/chatting_page.dart' as _i28;
import '../base/chats/pages/new_chat_page.dart' as _i25;
import '../base/chats/pages/new_chat_page_2.dart' as _i26;
import '../base/groups/pages/group_chatting_page.dart' as _i29;
import '../base/groups/pages/group_details_page.dart' as _i59;
import '../base/groups/pages/invite_page.dart' as _i32;
import '../base/stories/pages/creator/story_choose_duration_page.dart' as _i55;
import '../base/stories/pages/creator/story_creator_image_editor_page.dart'
    as _i54;
import '../base/stories/pages/creator/story_creator_page.dart' as _i52;
import '../base/stories/pages/creator/story_video_trim_page.dart' as _i53;
import '../base/stories/pages/type_a_status_page.dart' as _i50;
import '../base/stories/pages/view_story.dart' as _i51;
import '../core/pages/app_overview_page.dart' as _i13;
import '../core/pages/camera_page.dart' as _i3;
import '../core/pages/contact_permission_page.dart' as _i7;
import '../core/pages/display_captured_image_page.dart' as _i4;
import '../core/pages/fingerprint_verification_page.dart' as _i5;
import '../core/pages/image_view_page.dart' as _i6;
import '../core/pages/image_view_page_2.dart' as _i61;
import '../core/pages/profile_photo_page.dart' as _i14;
import '../core/pages/splash_page.dart' as _i1;
import '../core/pages/terms_and_policy_page.dart' as _i16;
import '../core/pages/verify_fingerprint_page.dart' as _i15;
import '../core/pages/welcome_screen_page.dart' as _i17;
import '../drawer/contacts/contacts_page.dart' as _i22;
import '../drawer/help/app_info.dart' as _i31;
import '../drawer/help/help_page.dart' as _i30;
import '../drawer/invite_friends/invite_friends.dart' as _i19;
import '../drawer/new_group/create_group_page.dart' as _i23;
import '../drawer/new_group/pages/select_members_page.dart' as _i24;
import '../drawer/notifications/notifications_page.dart' as _i20;
import '../drawer/profile/pages/edit_profile_page.dart' as _i18;
import '../drawer/profile/pages/view_profile_page.dart' as _i21;
import '../drawer/settings/pages/blocked_contacts_page.dart' as _i40;
import '../drawer/settings/pages/change_number_page.dart' as _i38;
import '../drawer/settings/pages/change_number_verify_page.dart' as _i48;
import '../drawer/settings/pages/change_wallpaper_init_page.dart' as _i43;
import '../drawer/settings/pages/chat_history_page.dart' as _i36;
import '../drawer/settings/pages/chat_wallpaper_page.dart' as _i42;
import '../drawer/settings/pages/chat_wallpaper_picture_page.dart' as _i44;
import '../drawer/settings/pages/delete_account_page.dart' as _i39;
import '../drawer/settings/pages/fingerprint_lock_page.dart' as _i37;
import '../drawer/settings/pages/freeup_space_page.dart' as _i45;
import '../drawer/settings/pages/privacy_page.dart' as _i41;
import '../drawer/settings/pages/status_and_group_privacy_page.dart' as _i35;
import '../drawer/settings/pages/user_filegridview_page.dart' as _i46;
import '../drawer/settings/pages/verify_number_delete_account_page.dart'
    as _i47;
import '../drawer/settings/pages/verify_second_number_page.dart' as _i49;
import '../drawer/settings/settings_page.dart' as _i34;
import '../drawer/settings/widgets/display_contacts.dart' as _i33;
import '../onboarding/pages/choose_language_page.dart' as _i11;
import '../onboarding/pages/otp_verification_page.dart' as _i8;
import '../onboarding/pages/phone_verification_page.dart' as _i9;
import '../onboarding/pages/phone_verified.dart' as _i10;
import '../onboarding/pages/setup_profile_page.dart' as _i12;

class AppRouter extends _i62.RootStackRouter {
  AppRouter([_i63.GlobalKey<_i63.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i62.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    BaseRoute.name: (routeData) {
      final args = routeData.argsAs<BaseRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i2.BasePage(key: args.key, selectedIndex: args.selectedIndex));
    },
    CameraRoute.name: (routeData) {
      final args = routeData.argsAs<CameraRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.CameraPage(
              key: args.key, camera: args.camera, onCapture: args.onCapture));
    },
    DisplayCapturedImageRoute.name: (routeData) {
      final args = routeData.argsAs<DisplayCapturedImageRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.DisplayCapturedImagePage(
              key: args.key,
              imagePath: args.imagePath,
              onCapture: args.onCapture,
              onEditCapture: args.onEditCapture,
              screenshotController: args.screenshotController));
    },
    FingerprintVerificationRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.FingerprintVerificationPage());
    },
    ImageViewRoute.name: (routeData) {
      final args = routeData.argsAs<ImageViewRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ImageViewPage(key: args.key, imageUrl: args.imageUrl));
    },
    ContactPermissionRoute.name: (routeData) {
      final args = routeData.argsAs<ContactPermissionRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.ContactPermissionPage(
              key: args.key, onPressed: args.onPressed));
    },
    OtpVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<OtpVerificationRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i8.OtpVerificationPage(
              key: args.key,
              route: args.route,
              phoneNumber: args.phoneNumber,
              countryCode: args.countryCode));
    },
    PhoneVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.PhoneVerificationPage(key: args.key, route: args.route));
    },
    PhoneVerifiedRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerifiedRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.PhoneVerifiedPage(
              key: args.key, countryCode: args.countryCode));
    },
    ChooseLanguageRoute.name: (routeData) {
      final args = routeData.argsAs<ChooseLanguageRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.ChooseLanguagePage(
              key: args.key, countryCode: args.countryCode));
    },
    SetupProfileRoute.name: (routeData) {
      final args = routeData.argsAs<SetupProfileRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.SetupProfilePage(
              key: args.key, countryCode: args.countryCode));
    },
    AppPreviewRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: _i13.AppPreviewPage());
    },
    ProfilePhotoRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: _i14.ProfilePhotoPage());
    },
    VerifyFingerprintRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: _i15.VerifyFingerprintPage());
    },
    TermsAndPolicyRoute.name: (routeData) {
      final args = routeData.argsAs<TermsAndPolicyRouteArgs>(
          orElse: () => const TermsAndPolicyRouteArgs());
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i16.TermsAndPolicyPage(
              key: args.key, accessedFromLogin: args.accessedFromLogin));
    },
    WelcomeScreenRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.WelcomeScreenPage());
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i18.EditProfilePage(
              key: args.key, user: args.user, userStory: args.userStory));
    },
    InviteFriendsRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.InviteFriendsPage());
    },
    NotificationsRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.NotificationsPage());
    },
    ViewProfileRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.ViewProfilePage());
    },
    ContactsRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.ContactsPage());
    },
    CreateGroupRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.CreateGroupPage());
    },
    SelectMembersRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.SelectMembersPage());
    },
    NewChatRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.NewChatPage());
    },
    NewChatRoute2.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.NewChatPage2());
    },
    CallReceiverRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.CallReceiverPage());
    },
    ChattingRoute.name: (routeData) {
      final args = routeData.argsAs<ChattingRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i28.ChattingPage(key: args.key, peerUser: args.peerUser));
    },
    GroupChattingRoute.name: (routeData) {
      final args = routeData.argsAs<GroupChattingRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i29.GroupChattingPage(key: args.key, groupUid: args.groupUid));
    },
    HelpRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.HelpPage());
    },
    AppInfoRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.AppInfoPage());
    },
    InviteLinkRoute.name: (routeData) {
      final args = routeData.argsAs<InviteLinkRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i32.InviteLinkPage(
              key: args.key, groupChat: args.groupChat, groupId: args.groupId));
    },
    DisplayContacts.name: (routeData) {
      final args = routeData.argsAs<DisplayContactsArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i33.DisplayContacts(privacyType: args.privacyType));
    },
    SettingsRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.SettingsPage());
    },
    StatusAndGroupPrivacyRoute.name: (routeData) {
      final args = routeData.argsAs<StatusAndGroupPrivacyRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i35.StatusAndGroupPrivacyPage(
              key: args.key,
              pageTitle: args.pageTitle,
              firstTitle: args.firstTitle,
              OnChangedFunctions: args.OnChangedFunctions,
              listTileCount: args.listTileCount));
    },
    ChatHistoryRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i36.ChatHistoryPage());
    },
    FingerprintLockRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i37.FingerprintLockPage());
    },
    ChangeNumberRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i38.ChangeNumberPage());
    },
    DeleteAccountRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i39.DeleteAccountPage());
    },
    BlockedContactsRoute.name: (routeData) {
      final args = routeData.argsAs<BlockedContactsRouteArgs>(
          orElse: () => const BlockedContactsRouteArgs());
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: _i40.BlockedContactsPage(key: args.key));
    },
    PrivacyRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i41.PrivacyPage());
    },
    ChatWallpaperRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i42.ChatWallpaperPage());
    },
    ChangeWallPaperRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.ChangeWallPaperPage());
    },
    ChatWallpaperPictureRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i44.ChatWallpaperPicturePage());
    },
    FreeUpSpaceRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i45.FreeUpSpacePage());
    },
    UserFileGridViewRoute.name: (routeData) {
      final args = routeData.argsAs<UserFileGridViewRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i46.UserFileGridViewPage(
              key: args.key, userName: args.userName));
    },
    VerNumDeleteAccountRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i47.VerNumDeleteAccountPage());
    },
    ChangeNumberVerifyRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i48.ChangeNumberVerifyPage());
    },
    VerifySecondNumberRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i49.VerifySecondNumberPage());
    },
    TypeAStatusRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: _i50.TypeAStatusPage());
    },
    ViewStoryRoute.name: (routeData) {
      final args = routeData.argsAs<ViewStoryRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i51.ViewStoryPage(storiesModel: args.storiesModel));
    },
    StoryCreatorRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i52.StoryCreatorPage());
    },
    VideoTrimRoute.name: (routeData) {
      final args = routeData.argsAs<VideoTrimRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i53.VideoTrimPage(key: args.key, file: args.file));
    },
    StoryEditorImageRoute.name: (routeData) {
      final args = routeData.argsAs<StoryEditorImageRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i54.StoryEditorImagePage(key: args.key, image: args.image));
    },
    StoryChooseDurationRoute.name: (routeData) {
      final args = routeData.argsAs<StoryChooseDurationRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i55.StoryChooseDurationPage(
              key: args.key,
              indexDuration: args.indexDuration,
              video: args.video));
    },
    CallInfoRoute.name: (routeData) {
      final args = routeData.argsAs<CallInfoRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i56.CallInfoPage(
              key: args.key,
              callDocumentId: args.callDocumentId,
              peerUser: args.peerUser,
              callLogs: args.callLogs));
    },
    VoiceCallRoute.name: (routeData) {
      final args = routeData.argsAs<VoiceCallRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i57.VoiceCallPage(key: args.key, initalize: args.initalize));
    },
    VideoCallRoute.name: (routeData) {
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i58.VideoCallPage());
    },
    GroupDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<GroupDetailsRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i59.GroupDetailsPage(key: args.key, groupId: args.groupId));
    },
    ChatDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ChatDetailsRouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i60.ChatDetailsPage(
              key: args.key,
              peerUser: args.peerUser,
              displayNameOrNumber: args.displayNameOrNumber));
    },
    ImageView2Route.name: (routeData) {
      final args = routeData.argsAs<ImageView2RouteArgs>();
      return _i62.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i61.ImageView2Page(
              key: args.key,
              imageUrl: args.imageUrl,
              messageModel: args.messageModel,
              chatId: args.chatId,
              peerUser: args.peerUser));
    }
  };

  @override
  List<_i62.RouteConfig> get routes => [
        _i62.RouteConfig(SplashRoute.name, path: '/'),
        _i62.RouteConfig(BaseRoute.name, path: '/base-page'),
        _i62.RouteConfig(CameraRoute.name, path: '/camera-page'),
        _i62.RouteConfig(DisplayCapturedImageRoute.name,
            path: '/display-captured-image-page'),
        _i62.RouteConfig(FingerprintVerificationRoute.name,
            path: '/fingerprint-verification-page'),
        _i62.RouteConfig(ImageViewRoute.name, path: '/image-view-page'),
        _i62.RouteConfig(ContactPermissionRoute.name,
            path: '/contact-permission-page'),
        _i62.RouteConfig(OtpVerificationRoute.name,
            path: '/otp-verification-page'),
        _i62.RouteConfig(PhoneVerificationRoute.name,
            path: '/phone-verification-page'),
        _i62.RouteConfig(PhoneVerifiedRoute.name, path: '/phone-verified-page'),
        _i62.RouteConfig(ChooseLanguageRoute.name,
            path: '/choose-language-page'),
        _i62.RouteConfig(SetupProfileRoute.name, path: '/setup-profile-page'),
        _i62.RouteConfig(AppPreviewRoute.name, path: '/app-preview-page'),
        _i62.RouteConfig(ProfilePhotoRoute.name, path: '/profile-photo-page'),
        _i62.RouteConfig(VerifyFingerprintRoute.name,
            path: '/verify-fingerprint-page'),
        _i62.RouteConfig(TermsAndPolicyRoute.name,
            path: '/terms-and-policy-page'),
        _i62.RouteConfig(WelcomeScreenRoute.name, path: '/welcome-screen-page'),
        _i62.RouteConfig(EditProfileRoute.name, path: '/edit-profile-page'),
        _i62.RouteConfig(InviteFriendsRoute.name, path: '/invite-friends-page'),
        _i62.RouteConfig(NotificationsRoute.name, path: '/notifications-page'),
        _i62.RouteConfig(ViewProfileRoute.name, path: '/view-profile-page'),
        _i62.RouteConfig(NotificationsRoute.name, path: '/notifications-page'),
        _i62.RouteConfig(ContactsRoute.name, path: '/contacts-page'),
        _i62.RouteConfig(CreateGroupRoute.name, path: '/create-group-page'),
        _i62.RouteConfig(SelectMembersRoute.name, path: '/select-members-page'),
        _i62.RouteConfig(NewChatRoute.name, path: '/new-chat-page'),
        _i62.RouteConfig(NewChatRoute2.name, path: '/new-chat-page2'),
        _i62.RouteConfig(CallReceiverRoute.name, path: '/call-receiver-page'),
        _i62.RouteConfig(ChattingRoute.name, path: '/chatting-page'),
        _i62.RouteConfig(GroupChattingRoute.name, path: '/group-chatting-page'),
        _i62.RouteConfig(HelpRoute.name, path: '/help-page'),
        _i62.RouteConfig(AppInfoRoute.name, path: '/app-info-page'),
        _i62.RouteConfig(InviteLinkRoute.name, path: '/invite-link-page'),
        _i62.RouteConfig(DisplayContacts.name, path: '/display-contacts'),
        _i62.RouteConfig(SettingsRoute.name, path: '/settings-page'),
        _i62.RouteConfig(StatusAndGroupPrivacyRoute.name,
            path: '/status-and-group-privacy-page'),
        _i62.RouteConfig(ChatHistoryRoute.name, path: '/chat-history-page'),
        _i62.RouteConfig(FingerprintLockRoute.name,
            path: '/fingerprint-lock-page'),
        _i62.RouteConfig(ChangeNumberRoute.name, path: '/change-number-page'),
        _i62.RouteConfig(DeleteAccountRoute.name, path: '/delete-account-page'),
        _i62.RouteConfig(BlockedContactsRoute.name,
            path: '/blocked-contacts-page'),
        _i62.RouteConfig(PrivacyRoute.name, path: '/privacy-page'),
        _i62.RouteConfig(ChatWallpaperRoute.name, path: '/chat-wallpaper-page'),
        _i62.RouteConfig(ChangeWallPaperRoute.name,
            path: '/change-wall-paper-page'),
        _i62.RouteConfig(ChatWallpaperPictureRoute.name,
            path: '/chat-wallpaper-picture-page'),
        _i62.RouteConfig(FreeUpSpaceRoute.name, path: '/free-up-space-page'),
        _i62.RouteConfig(UserFileGridViewRoute.name,
            path: '/user-file-grid-view-page'),
        _i62.RouteConfig(VerNumDeleteAccountRoute.name,
            path: '/ver-num-delete-account-page'),
        _i62.RouteConfig(ChangeNumberVerifyRoute.name,
            path: '/change-number-verify-page'),
        _i62.RouteConfig(VerifySecondNumberRoute.name,
            path: '/verify-second-number-page'),
        _i62.RouteConfig(TypeAStatusRoute.name, path: '/type-astatus-page'),
        _i62.RouteConfig(ViewStoryRoute.name, path: '/view-story-page'),
        _i62.RouteConfig(StoryCreatorRoute.name, path: '/story-creator-page'),
        _i62.RouteConfig(VideoTrimRoute.name, path: '/video-trim-page'),
        _i62.RouteConfig(StoryEditorImageRoute.name,
            path: '/story-editor-image-page'),
        _i62.RouteConfig(StoryChooseDurationRoute.name,
            path: '/story-choose-duration-page'),
        _i62.RouteConfig(CallInfoRoute.name, path: '/call-info-page'),
        _i62.RouteConfig(VoiceCallRoute.name, path: '/voice-call-page'),
        _i62.RouteConfig(VideoCallRoute.name, path: '/video-call-page'),
        _i62.RouteConfig(CallReceiverRoute.name, path: '/call-receiver-page'),
        _i62.RouteConfig(GroupDetailsRoute.name, path: '/group-details-page'),
        _i62.RouteConfig(ChatDetailsRoute.name, path: '/chat-details-page'),
        _i62.RouteConfig(ImageView2Route.name, path: '/image-view2-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i62.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.BasePage]
class BaseRoute extends _i62.PageRouteInfo<BaseRouteArgs> {
  BaseRoute({_i63.Key? key, required int selectedIndex})
      : super(BaseRoute.name,
            path: '/base-page',
            args: BaseRouteArgs(key: key, selectedIndex: selectedIndex));

  static const String name = 'BaseRoute';
}

class BaseRouteArgs {
  const BaseRouteArgs({this.key, required this.selectedIndex});

  final _i63.Key? key;

  final int selectedIndex;

  @override
  String toString() {
    return 'BaseRouteArgs{key: $key, selectedIndex: $selectedIndex}';
  }
}

/// generated route for
/// [_i3.CameraPage]
class CameraRoute extends _i62.PageRouteInfo<CameraRouteArgs> {
  CameraRoute(
      {_i63.Key? key,
      required List<_i64.CameraDescription> camera,
      required dynamic Function(_i65.ImageWithCaptionModel) onCapture})
      : super(CameraRoute.name,
            path: '/camera-page',
            args: CameraRouteArgs(
                key: key, camera: camera, onCapture: onCapture));

  static const String name = 'CameraRoute';
}

class CameraRouteArgs {
  const CameraRouteArgs(
      {this.key, required this.camera, required this.onCapture});

  final _i63.Key? key;

  final List<_i64.CameraDescription> camera;

  final dynamic Function(_i65.ImageWithCaptionModel) onCapture;

  @override
  String toString() {
    return 'CameraRouteArgs{key: $key, camera: $camera, onCapture: $onCapture}';
  }
}

/// generated route for
/// [_i4.DisplayCapturedImagePage]
class DisplayCapturedImageRoute
    extends _i62.PageRouteInfo<DisplayCapturedImageRouteArgs> {
  DisplayCapturedImageRoute(
      {_i63.Key? key,
      required List<String> imagePath,
      required dynamic Function(List<_i65.ImageWithCaptionModel>) onCapture,
      dynamic Function(List<_i65.ImageWithCaptionModel>)? onEditCapture,
      required List<_i66.ScreenshotController> screenshotController})
      : super(DisplayCapturedImageRoute.name,
            path: '/display-captured-image-page',
            args: DisplayCapturedImageRouteArgs(
                key: key,
                imagePath: imagePath,
                onCapture: onCapture,
                onEditCapture: onEditCapture,
                screenshotController: screenshotController));

  static const String name = 'DisplayCapturedImageRoute';
}

class DisplayCapturedImageRouteArgs {
  const DisplayCapturedImageRouteArgs(
      {this.key,
      required this.imagePath,
      required this.onCapture,
      this.onEditCapture,
      required this.screenshotController});

  final _i63.Key? key;

  final List<String> imagePath;

  final dynamic Function(List<_i65.ImageWithCaptionModel>) onCapture;

  final dynamic Function(List<_i65.ImageWithCaptionModel>)? onEditCapture;

  final List<_i66.ScreenshotController> screenshotController;

  @override
  String toString() {
    return 'DisplayCapturedImageRouteArgs{key: $key, imagePath: $imagePath, onCapture: $onCapture, onEditCapture: $onEditCapture, screenshotController: $screenshotController}';
  }
}

/// generated route for
/// [_i5.FingerprintVerificationPage]
class FingerprintVerificationRoute extends _i62.PageRouteInfo<void> {
  const FingerprintVerificationRoute()
      : super(FingerprintVerificationRoute.name,
            path: '/fingerprint-verification-page');

  static const String name = 'FingerprintVerificationRoute';
}

/// generated route for
/// [_i6.ImageViewPage]
class ImageViewRoute extends _i62.PageRouteInfo<ImageViewRouteArgs> {
  ImageViewRoute({_i63.Key? key, required String imageUrl})
      : super(ImageViewRoute.name,
            path: '/image-view-page',
            args: ImageViewRouteArgs(key: key, imageUrl: imageUrl));

  static const String name = 'ImageViewRoute';
}

class ImageViewRouteArgs {
  const ImageViewRouteArgs({this.key, required this.imageUrl});

  final _i63.Key? key;

  final String imageUrl;

  @override
  String toString() {
    return 'ImageViewRouteArgs{key: $key, imageUrl: $imageUrl}';
  }
}

/// generated route for
/// [_i7.ContactPermissionPage]
class ContactPermissionRoute
    extends _i62.PageRouteInfo<ContactPermissionRouteArgs> {
  ContactPermissionRoute({_i63.Key? key, required dynamic Function() onPressed})
      : super(ContactPermissionRoute.name,
            path: '/contact-permission-page',
            args: ContactPermissionRouteArgs(key: key, onPressed: onPressed));

  static const String name = 'ContactPermissionRoute';
}

class ContactPermissionRouteArgs {
  const ContactPermissionRouteArgs({this.key, required this.onPressed});

  final _i63.Key? key;

  final dynamic Function() onPressed;

  @override
  String toString() {
    return 'ContactPermissionRouteArgs{key: $key, onPressed: $onPressed}';
  }
}

/// generated route for
/// [_i8.OtpVerificationPage]
class OtpVerificationRoute
    extends _i62.PageRouteInfo<OtpVerificationRouteArgs> {
  OtpVerificationRoute(
      {_i63.Key? key,
      required String route,
      required String phoneNumber,
      required String countryCode})
      : super(OtpVerificationRoute.name,
            path: '/otp-verification-page',
            args: OtpVerificationRouteArgs(
                key: key,
                route: route,
                phoneNumber: phoneNumber,
                countryCode: countryCode));

  static const String name = 'OtpVerificationRoute';
}

class OtpVerificationRouteArgs {
  const OtpVerificationRouteArgs(
      {this.key,
      required this.route,
      required this.phoneNumber,
      required this.countryCode});

  final _i63.Key? key;

  final String route;

  final String phoneNumber;

  final String countryCode;

  @override
  String toString() {
    return 'OtpVerificationRouteArgs{key: $key, route: $route, phoneNumber: $phoneNumber, countryCode: $countryCode}';
  }
}

/// generated route for
/// [_i9.PhoneVerificationPage]
class PhoneVerificationRoute
    extends _i62.PageRouteInfo<PhoneVerificationRouteArgs> {
  PhoneVerificationRoute({_i63.Key? key, required String route})
      : super(PhoneVerificationRoute.name,
            path: '/phone-verification-page',
            args: PhoneVerificationRouteArgs(key: key, route: route));

  static const String name = 'PhoneVerificationRoute';
}

class PhoneVerificationRouteArgs {
  const PhoneVerificationRouteArgs({this.key, required this.route});

  final _i63.Key? key;

  final String route;

  @override
  String toString() {
    return 'PhoneVerificationRouteArgs{key: $key, route: $route}';
  }
}

/// generated route for
/// [_i10.PhoneVerifiedPage]
class PhoneVerifiedRoute extends _i62.PageRouteInfo<PhoneVerifiedRouteArgs> {
  PhoneVerifiedRoute({_i63.Key? key, required String countryCode})
      : super(PhoneVerifiedRoute.name,
            path: '/phone-verified-page',
            args: PhoneVerifiedRouteArgs(key: key, countryCode: countryCode));

  static const String name = 'PhoneVerifiedRoute';
}

class PhoneVerifiedRouteArgs {
  const PhoneVerifiedRouteArgs({this.key, required this.countryCode});

  final _i63.Key? key;

  final String countryCode;

  @override
  String toString() {
    return 'PhoneVerifiedRouteArgs{key: $key, countryCode: $countryCode}';
  }
}

/// generated route for
/// [_i11.ChooseLanguagePage]
class ChooseLanguageRoute extends _i62.PageRouteInfo<ChooseLanguageRouteArgs> {
  ChooseLanguageRoute({_i63.Key? key, required String countryCode})
      : super(ChooseLanguageRoute.name,
            path: '/choose-language-page',
            args: ChooseLanguageRouteArgs(key: key, countryCode: countryCode));

  static const String name = 'ChooseLanguageRoute';
}

class ChooseLanguageRouteArgs {
  const ChooseLanguageRouteArgs({this.key, required this.countryCode});

  final _i63.Key? key;

  final String countryCode;

  @override
  String toString() {
    return 'ChooseLanguageRouteArgs{key: $key, countryCode: $countryCode}';
  }
}

/// generated route for
/// [_i12.SetupProfilePage]
class SetupProfileRoute extends _i62.PageRouteInfo<SetupProfileRouteArgs> {
  SetupProfileRoute({_i63.Key? key, required String countryCode})
      : super(SetupProfileRoute.name,
            path: '/setup-profile-page',
            args: SetupProfileRouteArgs(key: key, countryCode: countryCode));

  static const String name = 'SetupProfileRoute';
}

class SetupProfileRouteArgs {
  const SetupProfileRouteArgs({this.key, required this.countryCode});

  final _i63.Key? key;

  final String countryCode;

  @override
  String toString() {
    return 'SetupProfileRouteArgs{key: $key, countryCode: $countryCode}';
  }
}

/// generated route for
/// [_i13.AppPreviewPage]
class AppPreviewRoute extends _i62.PageRouteInfo<void> {
  const AppPreviewRoute()
      : super(AppPreviewRoute.name, path: '/app-preview-page');

  static const String name = 'AppPreviewRoute';
}

/// generated route for
/// [_i14.ProfilePhotoPage]
class ProfilePhotoRoute extends _i62.PageRouteInfo<void> {
  const ProfilePhotoRoute()
      : super(ProfilePhotoRoute.name, path: '/profile-photo-page');

  static const String name = 'ProfilePhotoRoute';
}

/// generated route for
/// [_i15.VerifyFingerprintPage]
class VerifyFingerprintRoute extends _i62.PageRouteInfo<void> {
  const VerifyFingerprintRoute()
      : super(VerifyFingerprintRoute.name, path: '/verify-fingerprint-page');

  static const String name = 'VerifyFingerprintRoute';
}

/// generated route for
/// [_i16.TermsAndPolicyPage]
class TermsAndPolicyRoute extends _i62.PageRouteInfo<TermsAndPolicyRouteArgs> {
  TermsAndPolicyRoute({_i63.Key? key, bool? accessedFromLogin = false})
      : super(TermsAndPolicyRoute.name,
            path: '/terms-and-policy-page',
            args: TermsAndPolicyRouteArgs(
                key: key, accessedFromLogin: accessedFromLogin));

  static const String name = 'TermsAndPolicyRoute';
}

class TermsAndPolicyRouteArgs {
  const TermsAndPolicyRouteArgs({this.key, this.accessedFromLogin = false});

  final _i63.Key? key;

  final bool? accessedFromLogin;

  @override
  String toString() {
    return 'TermsAndPolicyRouteArgs{key: $key, accessedFromLogin: $accessedFromLogin}';
  }
}

/// generated route for
/// [_i17.WelcomeScreenPage]
class WelcomeScreenRoute extends _i62.PageRouteInfo<void> {
  const WelcomeScreenRoute()
      : super(WelcomeScreenRoute.name, path: '/welcome-screen-page');

  static const String name = 'WelcomeScreenRoute';
}

/// generated route for
/// [_i18.EditProfilePage]
class EditProfileRoute extends _i62.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute(
      {_i63.Key? key,
      required _i67.KahoChatUser user,
      required _i68.StoriesModel userStory})
      : super(EditProfileRoute.name,
            path: '/edit-profile-page',
            args: EditProfileRouteArgs(
                key: key, user: user, userStory: userStory));

  static const String name = 'EditProfileRoute';
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs(
      {this.key, required this.user, required this.userStory});

  final _i63.Key? key;

  final _i67.KahoChatUser user;

  final _i68.StoriesModel userStory;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, user: $user, userStory: $userStory}';
  }
}

/// generated route for
/// [_i19.InviteFriendsPage]
class InviteFriendsRoute extends _i62.PageRouteInfo<void> {
  const InviteFriendsRoute()
      : super(InviteFriendsRoute.name, path: '/invite-friends-page');

  static const String name = 'InviteFriendsRoute';
}

/// generated route for
/// [_i20.NotificationsPage]
class NotificationsRoute extends _i62.PageRouteInfo<void> {
  const NotificationsRoute()
      : super(NotificationsRoute.name, path: '/notifications-page');

  static const String name = 'NotificationsRoute';
}

/// generated route for
/// [_i21.ViewProfilePage]
class ViewProfileRoute extends _i62.PageRouteInfo<void> {
  const ViewProfileRoute()
      : super(ViewProfileRoute.name, path: '/view-profile-page');

  static const String name = 'ViewProfileRoute';
}

/// generated route for
/// [_i22.ContactsPage]
class ContactsRoute extends _i62.PageRouteInfo<void> {
  const ContactsRoute() : super(ContactsRoute.name, path: '/contacts-page');

  static const String name = 'ContactsRoute';
}

/// generated route for
/// [_i23.CreateGroupPage]
class CreateGroupRoute extends _i62.PageRouteInfo<void> {
  const CreateGroupRoute()
      : super(CreateGroupRoute.name, path: '/create-group-page');

  static const String name = 'CreateGroupRoute';
}

/// generated route for
/// [_i24.SelectMembersPage]
class SelectMembersRoute extends _i62.PageRouteInfo<void> {
  const SelectMembersRoute()
      : super(SelectMembersRoute.name, path: '/select-members-page');

  static const String name = 'SelectMembersRoute';
}

/// generated route for
/// [_i25.NewChatPage]
class NewChatRoute extends _i62.PageRouteInfo<void> {
  const NewChatRoute() : super(NewChatRoute.name, path: '/new-chat-page');

  static const String name = 'NewChatRoute';
}

/// generated route for
/// [_i26.NewChatPage2]
class NewChatRoute2 extends _i62.PageRouteInfo<void> {
  const NewChatRoute2() : super(NewChatRoute2.name, path: '/new-chat-page2');

  static const String name = 'NewChatRoute2';
}

/// generated route for
/// [_i27.CallReceiverPage]
class CallReceiverRoute extends _i62.PageRouteInfo<void> {
  const CallReceiverRoute()
      : super(CallReceiverRoute.name, path: '/call-receiver-page');

  static const String name = 'CallReceiverRoute';
}

/// generated route for
/// [_i28.ChattingPage]
class ChattingRoute extends _i62.PageRouteInfo<ChattingRouteArgs> {
  ChattingRoute({_i63.Key? key, required _i67.KahoChatUser peerUser})
      : super(ChattingRoute.name,
            path: '/chatting-page',
            args: ChattingRouteArgs(key: key, peerUser: peerUser));

  static const String name = 'ChattingRoute';
}

class ChattingRouteArgs {
  const ChattingRouteArgs({this.key, required this.peerUser});

  final _i63.Key? key;

  final _i67.KahoChatUser peerUser;

  @override
  String toString() {
    return 'ChattingRouteArgs{key: $key, peerUser: $peerUser}';
  }
}

/// generated route for
/// [_i29.GroupChattingPage]
class GroupChattingRoute extends _i62.PageRouteInfo<GroupChattingRouteArgs> {
  GroupChattingRoute({_i63.Key? key, required String groupUid})
      : super(GroupChattingRoute.name,
            path: '/group-chatting-page',
            args: GroupChattingRouteArgs(key: key, groupUid: groupUid));

  static const String name = 'GroupChattingRoute';
}

class GroupChattingRouteArgs {
  const GroupChattingRouteArgs({this.key, required this.groupUid});

  final _i63.Key? key;

  final String groupUid;

  @override
  String toString() {
    return 'GroupChattingRouteArgs{key: $key, groupUid: $groupUid}';
  }
}

/// generated route for
/// [_i30.HelpPage]
class HelpRoute extends _i62.PageRouteInfo<void> {
  const HelpRoute() : super(HelpRoute.name, path: '/help-page');

  static const String name = 'HelpRoute';
}

/// generated route for
/// [_i31.AppInfoPage]
class AppInfoRoute extends _i62.PageRouteInfo<void> {
  const AppInfoRoute() : super(AppInfoRoute.name, path: '/app-info-page');

  static const String name = 'AppInfoRoute';
}

/// generated route for
/// [_i32.InviteLinkPage]
class InviteLinkRoute extends _i62.PageRouteInfo<InviteLinkRouteArgs> {
  InviteLinkRoute(
      {_i63.Key? key,
      required _i69.GroupChatRoomModel groupChat,
      required String groupId})
      : super(InviteLinkRoute.name,
            path: '/invite-link-page',
            args: InviteLinkRouteArgs(
                key: key, groupChat: groupChat, groupId: groupId));

  static const String name = 'InviteLinkRoute';
}

class InviteLinkRouteArgs {
  const InviteLinkRouteArgs(
      {this.key, required this.groupChat, required this.groupId});

  final _i63.Key? key;

  final _i69.GroupChatRoomModel groupChat;

  final String groupId;

  @override
  String toString() {
    return 'InviteLinkRouteArgs{key: $key, groupChat: $groupChat, groupId: $groupId}';
  }
}

/// generated route for
/// [_i33.DisplayContacts]
class DisplayContacts extends _i62.PageRouteInfo<DisplayContactsArgs> {
  DisplayContacts({required String privacyType})
      : super(DisplayContacts.name,
            path: '/display-contacts',
            args: DisplayContactsArgs(privacyType: privacyType));

  static const String name = 'DisplayContacts';
}

class DisplayContactsArgs {
  const DisplayContactsArgs({required this.privacyType});

  final String privacyType;

  @override
  String toString() {
    return 'DisplayContactsArgs{privacyType: $privacyType}';
  }
}

/// generated route for
/// [_i34.SettingsPage]
class SettingsRoute extends _i62.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '/settings-page');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i35.StatusAndGroupPrivacyPage]
class StatusAndGroupPrivacyRoute
    extends _i62.PageRouteInfo<StatusAndGroupPrivacyRouteArgs> {
  StatusAndGroupPrivacyRoute(
      {_i63.Key? key,
      required String pageTitle,
      required String firstTitle,
      required List<Function> OnChangedFunctions,
      required int listTileCount})
      : super(StatusAndGroupPrivacyRoute.name,
            path: '/status-and-group-privacy-page',
            args: StatusAndGroupPrivacyRouteArgs(
                key: key,
                pageTitle: pageTitle,
                firstTitle: firstTitle,
                OnChangedFunctions: OnChangedFunctions,
                listTileCount: listTileCount));

  static const String name = 'StatusAndGroupPrivacyRoute';
}

class StatusAndGroupPrivacyRouteArgs {
  const StatusAndGroupPrivacyRouteArgs(
      {this.key,
      required this.pageTitle,
      required this.firstTitle,
      required this.OnChangedFunctions,
      required this.listTileCount});

  final _i63.Key? key;

  final String pageTitle;

  final String firstTitle;

  final List<Function> OnChangedFunctions;

  final int listTileCount;

  @override
  String toString() {
    return 'StatusAndGroupPrivacyRouteArgs{key: $key, pageTitle: $pageTitle, firstTitle: $firstTitle, OnChangedFunctions: $OnChangedFunctions, listTileCount: $listTileCount}';
  }
}

/// generated route for
/// [_i36.ChatHistoryPage]
class ChatHistoryRoute extends _i62.PageRouteInfo<void> {
  const ChatHistoryRoute()
      : super(ChatHistoryRoute.name, path: '/chat-history-page');

  static const String name = 'ChatHistoryRoute';
}

/// generated route for
/// [_i37.FingerprintLockPage]
class FingerprintLockRoute extends _i62.PageRouteInfo<void> {
  const FingerprintLockRoute()
      : super(FingerprintLockRoute.name, path: '/fingerprint-lock-page');

  static const String name = 'FingerprintLockRoute';
}

/// generated route for
/// [_i38.ChangeNumberPage]
class ChangeNumberRoute extends _i62.PageRouteInfo<void> {
  const ChangeNumberRoute()
      : super(ChangeNumberRoute.name, path: '/change-number-page');

  static const String name = 'ChangeNumberRoute';
}

/// generated route for
/// [_i39.DeleteAccountPage]
class DeleteAccountRoute extends _i62.PageRouteInfo<void> {
  const DeleteAccountRoute()
      : super(DeleteAccountRoute.name, path: '/delete-account-page');

  static const String name = 'DeleteAccountRoute';
}

/// generated route for
/// [_i40.BlockedContactsPage]
class BlockedContactsRoute
    extends _i62.PageRouteInfo<BlockedContactsRouteArgs> {
  BlockedContactsRoute({_i63.Key? key})
      : super(BlockedContactsRoute.name,
            path: '/blocked-contacts-page',
            args: BlockedContactsRouteArgs(key: key));

  static const String name = 'BlockedContactsRoute';
}

class BlockedContactsRouteArgs {
  const BlockedContactsRouteArgs({this.key});

  final _i63.Key? key;

  @override
  String toString() {
    return 'BlockedContactsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i41.PrivacyPage]
class PrivacyRoute extends _i62.PageRouteInfo<void> {
  const PrivacyRoute() : super(PrivacyRoute.name, path: '/privacy-page');

  static const String name = 'PrivacyRoute';
}

/// generated route for
/// [_i42.ChatWallpaperPage]
class ChatWallpaperRoute extends _i62.PageRouteInfo<void> {
  const ChatWallpaperRoute()
      : super(ChatWallpaperRoute.name, path: '/chat-wallpaper-page');

  static const String name = 'ChatWallpaperRoute';
}

/// generated route for
/// [_i43.ChangeWallPaperPage]
class ChangeWallPaperRoute extends _i62.PageRouteInfo<void> {
  const ChangeWallPaperRoute()
      : super(ChangeWallPaperRoute.name, path: '/change-wall-paper-page');

  static const String name = 'ChangeWallPaperRoute';
}

/// generated route for
/// [_i44.ChatWallpaperPicturePage]
class ChatWallpaperPictureRoute extends _i62.PageRouteInfo<void> {
  const ChatWallpaperPictureRoute()
      : super(ChatWallpaperPictureRoute.name,
            path: '/chat-wallpaper-picture-page');

  static const String name = 'ChatWallpaperPictureRoute';
}

/// generated route for
/// [_i45.FreeUpSpacePage]
class FreeUpSpaceRoute extends _i62.PageRouteInfo<void> {
  const FreeUpSpaceRoute()
      : super(FreeUpSpaceRoute.name, path: '/free-up-space-page');

  static const String name = 'FreeUpSpaceRoute';
}

/// generated route for
/// [_i46.UserFileGridViewPage]
class UserFileGridViewRoute
    extends _i62.PageRouteInfo<UserFileGridViewRouteArgs> {
  UserFileGridViewRoute({_i63.Key? key, required String userName})
      : super(UserFileGridViewRoute.name,
            path: '/user-file-grid-view-page',
            args: UserFileGridViewRouteArgs(key: key, userName: userName));

  static const String name = 'UserFileGridViewRoute';
}

class UserFileGridViewRouteArgs {
  const UserFileGridViewRouteArgs({this.key, required this.userName});

  final _i63.Key? key;

  final String userName;

  @override
  String toString() {
    return 'UserFileGridViewRouteArgs{key: $key, userName: $userName}';
  }
}

/// generated route for
/// [_i47.VerNumDeleteAccountPage]
class VerNumDeleteAccountRoute extends _i62.PageRouteInfo<void> {
  const VerNumDeleteAccountRoute()
      : super(VerNumDeleteAccountRoute.name,
            path: '/ver-num-delete-account-page');

  static const String name = 'VerNumDeleteAccountRoute';
}

/// generated route for
/// [_i48.ChangeNumberVerifyPage]
class ChangeNumberVerifyRoute extends _i62.PageRouteInfo<void> {
  const ChangeNumberVerifyRoute()
      : super(ChangeNumberVerifyRoute.name, path: '/change-number-verify-page');

  static const String name = 'ChangeNumberVerifyRoute';
}

/// generated route for
/// [_i49.VerifySecondNumberPage]
class VerifySecondNumberRoute extends _i62.PageRouteInfo<void> {
  const VerifySecondNumberRoute()
      : super(VerifySecondNumberRoute.name, path: '/verify-second-number-page');

  static const String name = 'VerifySecondNumberRoute';
}

/// generated route for
/// [_i50.TypeAStatusPage]
class TypeAStatusRoute extends _i62.PageRouteInfo<void> {
  const TypeAStatusRoute()
      : super(TypeAStatusRoute.name, path: '/type-astatus-page');

  static const String name = 'TypeAStatusRoute';
}

/// generated route for
/// [_i51.ViewStoryPage]
class ViewStoryRoute extends _i62.PageRouteInfo<ViewStoryRouteArgs> {
  ViewStoryRoute({required _i68.StoriesModel storiesModel})
      : super(ViewStoryRoute.name,
            path: '/view-story-page',
            args: ViewStoryRouteArgs(storiesModel: storiesModel));

  static const String name = 'ViewStoryRoute';
}

class ViewStoryRouteArgs {
  const ViewStoryRouteArgs({required this.storiesModel});

  final _i68.StoriesModel storiesModel;

  @override
  String toString() {
    return 'ViewStoryRouteArgs{storiesModel: $storiesModel}';
  }
}

/// generated route for
/// [_i52.StoryCreatorPage]
class StoryCreatorRoute extends _i62.PageRouteInfo<void> {
  const StoryCreatorRoute()
      : super(StoryCreatorRoute.name, path: '/story-creator-page');

  static const String name = 'StoryCreatorRoute';
}

/// generated route for
/// [_i53.VideoTrimPage]
class VideoTrimRoute extends _i62.PageRouteInfo<VideoTrimRouteArgs> {
  VideoTrimRoute({_i63.Key? key, required _i70.File file})
      : super(VideoTrimRoute.name,
            path: '/video-trim-page',
            args: VideoTrimRouteArgs(key: key, file: file));

  static const String name = 'VideoTrimRoute';
}

class VideoTrimRouteArgs {
  const VideoTrimRouteArgs({this.key, required this.file});

  final _i63.Key? key;

  final _i70.File file;

  @override
  String toString() {
    return 'VideoTrimRouteArgs{key: $key, file: $file}';
  }
}

/// generated route for
/// [_i54.StoryEditorImagePage]
class StoryEditorImageRoute
    extends _i62.PageRouteInfo<StoryEditorImageRouteArgs> {
  StoryEditorImageRoute({_i63.Key? key, required String image})
      : super(StoryEditorImageRoute.name,
            path: '/story-editor-image-page',
            args: StoryEditorImageRouteArgs(key: key, image: image));

  static const String name = 'StoryEditorImageRoute';
}

class StoryEditorImageRouteArgs {
  const StoryEditorImageRouteArgs({this.key, required this.image});

  final _i63.Key? key;

  final String image;

  @override
  String toString() {
    return 'StoryEditorImageRouteArgs{key: $key, image: $image}';
  }
}

/// generated route for
/// [_i55.StoryChooseDurationPage]
class StoryChooseDurationRoute
    extends _i62.PageRouteInfo<StoryChooseDurationRouteArgs> {
  StoryChooseDurationRoute(
      {_i63.Key? key, required int indexDuration, required _i70.File video})
      : super(StoryChooseDurationRoute.name,
            path: '/story-choose-duration-page',
            args: StoryChooseDurationRouteArgs(
                key: key, indexDuration: indexDuration, video: video));

  static const String name = 'StoryChooseDurationRoute';
}

class StoryChooseDurationRouteArgs {
  const StoryChooseDurationRouteArgs(
      {this.key, required this.indexDuration, required this.video});

  final _i63.Key? key;

  final int indexDuration;

  final _i70.File video;

  @override
  String toString() {
    return 'StoryChooseDurationRouteArgs{key: $key, indexDuration: $indexDuration, video: $video}';
  }
}

/// generated route for
/// [_i56.CallInfoPage]
class CallInfoRoute extends _i62.PageRouteInfo<CallInfoRouteArgs> {
  CallInfoRoute(
      {_i63.Key? key,
      required String callDocumentId,
      required _i67.KahoChatUser peerUser,
      required List<_i71.CallModel> callLogs})
      : super(CallInfoRoute.name,
            path: '/call-info-page',
            args: CallInfoRouteArgs(
                key: key,
                callDocumentId: callDocumentId,
                peerUser: peerUser,
                callLogs: callLogs));

  static const String name = 'CallInfoRoute';
}

class CallInfoRouteArgs {
  const CallInfoRouteArgs(
      {this.key,
      required this.callDocumentId,
      required this.peerUser,
      required this.callLogs});

  final _i63.Key? key;

  final String callDocumentId;

  final _i67.KahoChatUser peerUser;

  final List<_i71.CallModel> callLogs;

  @override
  String toString() {
    return 'CallInfoRouteArgs{key: $key, callDocumentId: $callDocumentId, peerUser: $peerUser, callLogs: $callLogs}';
  }
}

/// generated route for
/// [_i57.VoiceCallPage]
class VoiceCallRoute extends _i62.PageRouteInfo<VoiceCallRouteArgs> {
  VoiceCallRoute({_i63.Key? key, required bool initalize})
      : super(VoiceCallRoute.name,
            path: '/voice-call-page',
            args: VoiceCallRouteArgs(key: key, initalize: initalize));

  static const String name = 'VoiceCallRoute';
}

class VoiceCallRouteArgs {
  const VoiceCallRouteArgs({this.key, required this.initalize});

  final _i63.Key? key;

  final bool initalize;

  @override
  String toString() {
    return 'VoiceCallRouteArgs{key: $key, initalize: $initalize}';
  }
}

/// generated route for
/// [_i58.VideoCallPage]
class VideoCallRoute extends _i62.PageRouteInfo<void> {
  const VideoCallRoute() : super(VideoCallRoute.name, path: '/video-call-page');

  static const String name = 'VideoCallRoute';
}

/// generated route for
/// [_i59.GroupDetailsPage]
class GroupDetailsRoute extends _i62.PageRouteInfo<GroupDetailsRouteArgs> {
  GroupDetailsRoute({_i63.Key? key, required String groupId})
      : super(GroupDetailsRoute.name,
            path: '/group-details-page',
            args: GroupDetailsRouteArgs(key: key, groupId: groupId));

  static const String name = 'GroupDetailsRoute';
}

class GroupDetailsRouteArgs {
  const GroupDetailsRouteArgs({this.key, required this.groupId});

  final _i63.Key? key;

  final String groupId;

  @override
  String toString() {
    return 'GroupDetailsRouteArgs{key: $key, groupId: $groupId}';
  }
}

/// generated route for
/// [_i60.ChatDetailsPage]
class ChatDetailsRoute extends _i62.PageRouteInfo<ChatDetailsRouteArgs> {
  ChatDetailsRoute(
      {_i63.Key? key,
      required _i67.KahoChatUser peerUser,
      required String displayNameOrNumber})
      : super(ChatDetailsRoute.name,
            path: '/chat-details-page',
            args: ChatDetailsRouteArgs(
                key: key,
                peerUser: peerUser,
                displayNameOrNumber: displayNameOrNumber));

  static const String name = 'ChatDetailsRoute';
}

class ChatDetailsRouteArgs {
  const ChatDetailsRouteArgs(
      {this.key, required this.peerUser, required this.displayNameOrNumber});

  final _i63.Key? key;

  final _i67.KahoChatUser peerUser;

  final String displayNameOrNumber;

  @override
  String toString() {
    return 'ChatDetailsRouteArgs{key: $key, peerUser: $peerUser, displayNameOrNumber: $displayNameOrNumber}';
  }
}

/// generated route for
/// [_i61.ImageView2Page]
class ImageView2Route extends _i62.PageRouteInfo<ImageView2RouteArgs> {
  ImageView2Route(
      {_i63.Key? key,
      required String imageUrl,
      required _i72.MessageSelectModel messageModel,
      required String chatId,
      required _i67.KahoChatUser peerUser})
      : super(ImageView2Route.name,
            path: '/image-view2-page',
            args: ImageView2RouteArgs(
                key: key,
                imageUrl: imageUrl,
                messageModel: messageModel,
                chatId: chatId,
                peerUser: peerUser));

  static const String name = 'ImageView2Route';
}

class ImageView2RouteArgs {
  const ImageView2RouteArgs(
      {this.key,
      required this.imageUrl,
      required this.messageModel,
      required this.chatId,
      required this.peerUser});

  final _i63.Key? key;

  final String imageUrl;

  final _i72.MessageSelectModel messageModel;

  final String chatId;

  final _i67.KahoChatUser peerUser;

  @override
  String toString() {
    return 'ImageView2RouteArgs{key: $key, imageUrl: $imageUrl, messageModel: $messageModel, chatId: $chatId, peerUser: $peerUser}';
  }
}
