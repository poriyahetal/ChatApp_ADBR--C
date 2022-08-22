// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i40;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i48;
import 'application/broadcast/broadcast_bloc.dart' as _i49;
import 'application/calls/call_log/call_log_bloc.dart' as _i50;
import 'application/calls/call_screen/call_screen_bloc.dart' as _i4;
import 'application/calls/calls_bloc.dart' as _i51;
import 'application/chat_select/chat_select_bloc.dart' as _i6;
import 'application/chats/chats_bloc.dart' as _i64;
import 'application/contacts/contacts_bloc.dart' as _i52;
import 'application/core/camera/camera_bloc.dart' as _i63;
import 'application/filehandling/filehandling_bloc.dart' as _i53;
import 'application/groups/groups_bloc.dart' as _i65;
import 'application/list_and_grid/list_and_grid_bloc.dart' as _i36;
import 'application/local_auth/local_auth_bloc.dart' as _i37;
import 'application/message_select/message_select_bloc.dart' as _i38;
import 'application/notification/notification_bloc.dart' as _i39;
import 'application/settings/settings_bloc.dart' as _i42;
import 'application/SQLite/sqlite_bloc.dart' as _i41;
import 'application/stories/creator/ar/ar_for_story_cubit.dart' as _i3;
import 'application/stories/creator/caption/caption_text_for_story_cubit.dart'
    as _i5;
import 'application/stories/creator/file/file_for_story_cubit.dart' as _i7;
import 'application/stories/creator/freehand/freehand_for_story_cubit.dart'
    as _i10;
import 'application/stories/creator/giphy/giphy_for_story_cubit.dart' as _i11;
import 'application/stories/creator/recorder/video_recorder_for_story_cubit.dart'
    as _i45;
import 'application/stories/creator/trimmer/video_trimmer_for_story_cubit.dart'
    as _i47;
import 'application/stories/creator/video_player/video_player_for_story_cubit.dart'
    as _i44;
import 'application/stories/creator/video_status/video_status_for_story_cubit.dart'
    as _i46;
import 'application/stories/stories_bloc.dart' as _i62;
import 'application/user/user_bloc.dart' as _i43;
import 'domain/auth/i_auth_facade.dart' as _i12;
import 'domain/broadcasts/i_broadcast_facade.dart' as _i14;
import 'domain/calls/i_call_log_facade.dart' as _i16;
import 'domain/calls/i_calls_facade.dart' as _i18;
import 'domain/chats/i_chat_facade.dart' as _i56;
import 'domain/contacts/i_contacts_facade.dart' as _i22;
import 'domain/core/camera/i_camera_facade.dart' as _i54;
import 'domain/filehandling/i_filehandling_facade.dart' as _i24;
import 'domain/groups/i_group_facade.dart' as _i58;
import 'domain/local_auth/i_local_auth_facade.dart' as _i26;
import 'domain/notification/i_notification_facade.dart' as _i28;
import 'domain/recording/i_cloud_recording_facade.dart' as _i20;
import 'domain/settings/i_settings_facade.dart' as _i30;
import 'domain/SQLite/i_sqlite_facade.dart' as _i32;
import 'domain/stories/i_stories_facade.dart' as _i60;
import 'domain/user/i_user_facade.dart' as _i34;
import 'infrastructure/auth/auth_facade.dart' as _i13;
import 'infrastructure/broadcasts/broadcast_facade.dart' as _i15;
import 'infrastructure/calls/call_log_facade.dart' as _i17;
import 'infrastructure/calls/calls_facade.dart' as _i19;
import 'infrastructure/chats/chat_facade.dart' as _i57;
import 'infrastructure/contacts/contacts_facade.dart' as _i23;
import 'infrastructure/core/camera/camera_facade.dart' as _i55;
import 'infrastructure/core/firebase_injectable_modules.dart' as _i66;
import 'infrastructure/filehandling/filehandling_facade.dart' as _i25;
import 'infrastructure/groups/group_facade.dart' as _i59;
import 'infrastructure/local_auth/local_auth_facade.dart' as _i27;
import 'infrastructure/notification/notification_facade.dart' as _i29;
import 'infrastructure/recording/cloud_recording_facade.dart' as _i21;
import 'infrastructure/settings/settings_facade.dart' as _i31;
import 'infrastructure/sqlite/sqlite_facade.dart' as _i33;
import 'infrastructure/stories/stories_facade.dart' as _i61;
import 'infrastructure/user/user_facade.dart'
    as _i35; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.ArForStoryCubit>(() => _i3.ArForStoryCubit());
  gh.lazySingleton<_i3.ArForStoryCubitEvent>(() => _i3.ArForStoryCubitEvent());
  gh.factory<_i4.CallScreenBloc>(() => _i4.CallScreenBloc());
  gh.factory<_i5.CaptionTextForStoryCubit>(
      () => _i5.CaptionTextForStoryCubit());
  gh.lazySingleton<_i5.CaptionTextForStoryCubitEvent>(
      () => _i5.CaptionTextForStoryCubitEvent());
  gh.factory<_i6.ChatSelectBloc>(() => _i6.ChatSelectBloc());
  gh.factory<_i7.FileForStoryCubit>(() => _i7.FileForStoryCubit());
  gh.lazySingleton<_i7.FileForStoryCubitEvent>(
      () => _i7.FileForStoryCubitEvent());
  gh.lazySingleton<_i8.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i9.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.factory<_i10.FreehandForStoryCubit>(() => _i10.FreehandForStoryCubit());
  gh.lazySingleton<_i10.FreehandForStoryCubitEvent>(
      () => _i10.FreehandForStoryCubitEvent());
  gh.factory<_i11.GiphyForStoryCubit>(() => _i11.GiphyForStoryCubit());
  gh.lazySingleton<_i11.GiphyForStoryCubitEvent>(
      () => _i11.GiphyForStoryCubitEvent());
  gh.lazySingleton<_i12.IAuthFacade>(() =>
      _i13.AuthFacade(get<_i8.FirebaseAuth>(), get<_i9.FirebaseFirestore>()));
  gh.lazySingleton<_i14.IBroadcastFacade>(
      () => _i15.BroadcastFacade(get<_i9.FirebaseFirestore>()));
  gh.lazySingleton<_i16.ICallLogFacade>(
      () => _i17.CallLogFacade(get<_i9.FirebaseFirestore>()));
  gh.lazySingleton<_i18.ICallsFacade>(
      () => _i19.CallsFacade(get<_i9.FirebaseFirestore>()));
  gh.lazySingleton<_i20.ICloudRecordingFacade>(
      () => _i21.CloudRecordingFacade(get<_i9.FirebaseFirestore>()));
  gh.lazySingleton<_i22.IContactsFacade>(() => _i23.ContactsFacade(
      get<_i9.FirebaseFirestore>(), get<_i8.FirebaseAuth>()));
  gh.lazySingleton<_i24.IFileHandlingFacade>(() => _i25.FileHandlingFacade());
  gh.lazySingleton<_i26.ILocalAuthFacade>(() => _i27.LocalAuthFacade());
  gh.lazySingleton<_i28.INotificationFacade>(() => _i29.NotificationFacade());
  gh.lazySingleton<_i30.ISettingsFacade>(() => _i31.SettingsFacade());
  gh.lazySingleton<_i32.ISqliteFacade>(() => _i33.SQLiteFacade());
  gh.lazySingleton<_i34.IUserFacade>(() =>
      _i35.UserFacade(get<_i9.FirebaseFirestore>(), get<_i8.FirebaseAuth>()));
  gh.factory<_i36.ListAndGridBloc>(() => _i36.ListAndGridBloc());
  gh.factory<_i37.LocalAuthBloc>(
      () => _i37.LocalAuthBloc(get<_i26.ILocalAuthFacade>()));
  gh.factory<_i38.MessageSelectBloc>(() => _i38.MessageSelectBloc());
  gh.factory<_i39.NotificationBloc>(
      () => _i39.NotificationBloc(get<_i28.INotificationFacade>()));
  gh.lazySingleton<_i40.Reference>(
      () => firebaseInjectableModule.storageReference);
  gh.factory<_i41.SQLiteBloc>(() => _i41.SQLiteBloc(get<_i32.ISqliteFacade>()));
  gh.factory<_i42.SettingsBloc>(
      () => _i42.SettingsBloc(get<_i30.ISettingsFacade>()));
  gh.factory<_i43.UserBloc>(() => _i43.UserBloc(get<_i34.IUserFacade>()));
  gh.factory<_i44.VideoPlayerForStoryCubit>(
      () => _i44.VideoPlayerForStoryCubit());
  gh.lazySingleton<_i44.VideoPlayerForStoryCubitEvent>(
      () => _i44.VideoPlayerForStoryCubitEvent());
  gh.factory<_i45.VideoRecorderForStoryCubit>(
      () => _i45.VideoRecorderForStoryCubit());
  gh.lazySingleton<_i45.VideoRecorderForStoryCubitEvent>(
      () => _i45.VideoRecorderForStoryCubitEvent());
  gh.factory<_i46.VideoStatusForStoryCubit>(
      () => _i46.VideoStatusForStoryCubit());
  gh.lazySingleton<_i46.VideoStatusForStoryCubitHandle>(
      () => _i46.VideoStatusForStoryCubitHandle());
  gh.factory<_i47.VideoTrimmerForStoryCubit>(
      () => _i47.VideoTrimmerForStoryCubit());
  gh.lazySingleton<_i47.VideoTrimmerForStoryCubitEvent>(
      () => _i47.VideoTrimmerForStoryCubitEvent());
  gh.factory<_i48.AuthBloc>(() => _i48.AuthBloc(get<_i12.IAuthFacade>()));
  gh.factory<_i49.BroadcastBloc>(
      () => _i49.BroadcastBloc(get<_i14.IBroadcastFacade>()));
  gh.factory<_i50.CallLogBloc>(
      () => _i50.CallLogBloc(get<_i16.ICallLogFacade>()));
  gh.factory<_i51.CallsBloc>(() => _i51.CallsBloc(get<_i18.ICallsFacade>(),
      get<_i16.ICallLogFacade>(), get<_i20.ICloudRecordingFacade>()));
  gh.factory<_i52.ContactsBloc>(
      () => _i52.ContactsBloc(get<_i22.IContactsFacade>()));
  gh.factory<_i53.FilehandlingBloc>(
      () => _i53.FilehandlingBloc(get<_i24.IFileHandlingFacade>()));
  gh.lazySingleton<_i54.ICameraFacade>(() =>
      _i55.CameraFacade(get<_i40.Reference>(), get<_i9.FirebaseFirestore>()));
  gh.lazySingleton<_i56.IChatFacade>(() =>
      _i57.ChatFacade(get<_i9.FirebaseFirestore>(), get<_i40.Reference>()));
  gh.lazySingleton<_i58.IGroupFacade>(() =>
      _i59.GroupFacade(get<_i9.FirebaseFirestore>(), get<_i40.Reference>()));
  gh.lazySingleton<_i60.IStoriesFacade>(() => _i61.StoriesFacade(
      get<_i40.Reference>(),
      get<_i9.FirebaseFirestore>(),
      get<_i8.FirebaseAuth>()));
  gh.factory<_i62.StoriesBloc>(
      () => _i62.StoriesBloc(get<_i60.IStoriesFacade>()));
  gh.factory<_i63.CameraBloc>(() => _i63.CameraBloc(get<_i54.ICameraFacade>()));
  gh.factory<_i64.ChatsBloc>(() => _i64.ChatsBloc(get<_i56.IChatFacade>()));
  gh.factory<_i65.GroupsBloc>(() => _i65.GroupsBloc(get<_i58.IGroupFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i66.FirebaseInjectableModule {}
