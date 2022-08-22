// To parse this JSON data, do
//
//     final languageData = languageDataFromMap(jsonString);

import 'dart:convert';

class LanguageData {
  LanguageData({
    required this.Appearance,
    required this.Chatmute,
    required this.AlsoBlockThisUser,
    required this.YouHaveAcceptedThisChatInvitation,
    required this.SearchContacts,
    required this.CONTINUE,
    required this.Decline,
    required this.Share,
    required this.SearchContact,
    required this.week,
    required this.noProfilePictureUploadedYet,
    required this.called,
    required this.YouCalled,
    required this.Block,
    required this.add,
    required this.newContact,
    required this.newGroup,
    required this.newBroadcast,
    required this.notifications,
    required this.settings,
    required this.inviteFriends,
    required this.help,
    required this.logOut,
    required this.contacts,
    required this.phoneContacts,
    required this.invite,
    required this.createAGroup,
    required this.enterGroupName,
    required this.selectMembers,
    required this.createNewGroup,
    required this.chats,
    required this.groups,
    required this.calls,
    required this.chatTones,
    required this.groupTones,
    required this.callsTones,
    required this.notificationTone,
    required this.appLanguage,
    required this.theme,
    required this.blockedPeopleDonTAbleToCallOrSendMessageToYou,
    required this.cancel,
    required this.incoming,
    required this.call,
    required this.selectParticipant,
    required this.fontSize,
    required this.wallpaper,
    required this.chatHistory,
    required this.chatBackup,
    required this.account,
    required this.storage,
    required this.privacy,
    required this.deleteMyAccount,
    required this.changeMyNumber,
    required this.fingerprintLock,
    required this.lastSeen,
    required this.profilePhoto,
    required this.status,
    required this.aboutYou,
    required this.liveLocation,
    required this.doYouWantToShareYourLocation,
    required this.blockedContacts,
    required this.deleteAccountMessage,
    required this.deleteAccountConfirmation,
    required this.deleteTemporarily,
    required this.deletePermanently,
    required this.skip,
    required this.next,
    required this.selectParticipants,
    required this.participant,
    required this.inCallWith,
    required this.connecting,
    required this.participants,
    required this.ringing,
    required this.addParticipants,
    required this.hasBlockedYou,
    required this.stopRecording,
    required this.recordCall,
    required this.turnOnVideo,
    required this.missedCalls,
    required this.callNotAnswered,
    required this.incomingCalls,
    required this.outgoingCalls,
    required this.callLogNotFound,
    required this.noCallsYet,
    required this.clickOnAddCallIconToMake,
    required this.aNewCallWithYourContacts,
    required this.callIsBeingRecorded,
    required this.pinned,
    required this.userNotFound,
    required this.read,
    required this.unread,
    required this.unpin,
    required this.pin,
    required this.unmute,
    required this.select,
    required this.delete,
    required this.bio,
    required this.UnblockToSendAMessageOrMakeACall,
    required this.unblock,
    required this.sharedMedia,
    required this.noMediaSentYet,
    required this.viewAll,
    required this.disappearingMessages,
    required this.AreYouSureYouWantToDeclineThisChatInvitatation,
    required this.theLast10MessagesFromThisUserWillBeForwadedToKahoChatThisUserWillNotBeNotified,
    required this.report,
    required this.deleteMessage,
    required this.alsoDeleteFor,
    required this.YouHaveUnblockedThisUser,
    required this.youHaveBeenBlockedByThisContactYouCanNotCallOrMessage,
    required this.wantsToConnectWithYou,
    required this.accept,
    required this.sayHiTo,
    required this.withAWave,
    required this.sayHi,
    required this.waitingFor,
    required this.toAcceptInvitation,
    required this.selectParticipantsOrGroups,
    required this.forward,
    required this.newMessage,
    required this.InviteANewChat,
    required this.inviting,
    required this.inviteToChat,
    required this.searchThePhoneNumberToFindTheContactsAndStartChattingWithoutSavingTheContact,
    required this.selectCountry,
    required this.viewContact,
    required this.addToContact,
    required this.search,
    required this.deleteChat,
    required this.ThisPhoneNumberDoesnTExistInKahoChat,
    required this.deleteSelectedConversations,
    required this.thisWillDeleteSelectedConversationsPermanently,
    required this.noChatsYet,
    required this.startANewChatByMessagingWithAFriend,
    required this.message,
    required this.forwarded,
    required this.youDeletedThisMessage,
    required this.thisMessageWasDeleted,
    required this.groupNotFound,
    required this.image,
    required this.audio,
    required this.file,
    required this.mute,
    required this.reportUser,
    required this.areYouSureYouWantToDeleteThisMessage,
    required this.deleteForAllMembers,
    required this.onlyAdminCanSendMessageInThisGroup,
    required this.groupSharedMedia,
    required this.groupSettings,
    required this.doYouReallyWantToLeaveThisGroup,
    required this.leave,
    required this.reportGroup,
    required this.hasCreatedThisGroupOn,
    required this.addParticipant,
    required this.inviteViaGroupLink,
    required this.description,
    required this.thisGroupQrCodeIsPrivateIfItIsSharedWithSomeoneTheyCanScanItWithTheirCameraToJoinThisGroup,
    required this.recordingInProgress,
    required this.clickToStartRecording,
    required this.camera,
    required this.takeYourPicture,
    required this.media,
    required this.sharePhotosVideos,
    required this.contact,
    required this.shareFiles,
    required this.shareContacts,
    required this.sendAudioFiles,
    required this.groupName,
    required this.groupDescription,
    required this.save,
    required this.openPhotoGallery,
    required this.openCamera,
    required this.hasUnblockedYou,
    required this.viewPhoto,
    required this.removeAsAdmin,
    required this.remove,
    required this.removed,
    required this.admin,
    required this.YouHaveBlockedThisUser,
    required this.Verifying,
    required this.you,
    required this.languageDataOnlyAdmin,
    required this.allParticipants,
    required this.editGroupInfo,
    required this.sendMessages,
    required this.whoCanAddParticipants,
    required this.ok,
    required this.onlyAdmin,
    required this.allMembers,
    required this.whoCanChangeGroupInfo,
    required this.whoCanSendMessages,
    required this.leaveGroup,
    required this.clearChat,
    required this.thisWillPermanentlyDeleteSelectedConversations,
    required this.selected,
    required this.deleteSelectedFiles,
    required this.links,
    required this.stories,
    required this.mutedStories,
    required this.upload,
    required this.fromCamera,
    required this.fromGallery,
    required this.openVideo,
    required this.download,
    required this.noPhoneContactsPleaseAddAContactInYourPhonebook,
    required this.areYouSureWantToDeleteYourStatus,
    required this.anErrorOccuredWhileLoadingStories,
    required this.storiesViewedBy,
    required this.filterByTime,
    required this.hoursAgo,
    required this.Default,
    required this.filter,
    required this.myStories,
    required this.holdForCapturingVideo,
    required this.toggle,
    required this.allowNotifications,
    required this.ourAppWouldLikeToSendYouNotifications,
    required this.no,
    required this.yes,
    required this.halfSecond,
    required this.oneSecond,
    required this.oneAndHalfSecond,
    required this.vibrationDuration,
    required this.custom,
    required this.long,
    required this.medium,
    required this.short,
    required this.useTheFingerprint,
    required this.confirm,
    required this.learnMore,
    required this.securesYourConversationsWithEndToEndEncryptionThisMeansYourMessagesCallsAndStatusUpdatesStayBetweenYouAndThePeopleYouChooseNotEven,
    required this.canReadOrListenToThem,
    required this.encryption,
    required this.messagesAndCallsAreEndToEndEncryptedTap,
    required this.toLearnMore,
    required this.small,
    required this.closeFilter,
    required this.large,
    required this.language,
    required this.notNow,
    required this.Continue,
    required this.systemDefault,
    required this.lightMode,
    required this.darkMode,
    required this.light,
    required this.dark,
    required this.holdForVideoTapForPhoto,
    required this.whenEnabledNewMessagesSendAndReceivedInThisChatWillDisappearAfterTheyHaeBeenSeen,
    required this.off,
    required this.weeks,
    required this.day,
    required this.hours,
    required this.hour,
    required this.minutes,
    required this.seconds,
    required this.Notification,
    required this.done,
    required this.welcome,
    required this.tapToVerfiyYourIdentity,
    required this.touchTheFingerprintSensorToUnlock,
    required this.applicationLocked,
    required this.applicationUnlocked,
    required this.thisWillPermanentlyDeleteSelectedImage,
    required this.deleteSelectedImage,
    required this.selectContacts,
    required this.shareContact,
    required this.files,
    required this.deleteForMe,
    required this.enterBroadcastName,
    required this.nameThisGroup,
    required this.members,
    required this.youCanAddOrInviteParticipantsAfterCreatingTheGroup,
    required this.create,
    required this.profile,
    required this.editPhoto,
    required this.name,
    required this.firstName,
    required this.lastName,
    required this.optional,
    required this.writeAboutYourself,
    required this.VibrationalDuration,
    required this.removeProfilePhoto,
    required this.noBlockedContacts,
    required this.proceedToChangeNumber,
    required this.yourAccountContactsGroupsChatsAndSettingsWillBeMigratedToTheNewPhoneNumberAfterChangingYourCurrentPhoneNumber,
    required this.afterMigratingTheAccountToANewPhoneNumberTheOldPhoneNumberWillBeDeletedFromApplicationDatabase,
    required this.verify,
    required this.verifyYourself,
    required this.enterTheVerificationCode,
    required this.theOneTimePasswordHasBeenSentTo,
    required this.resendCode,
    required this.YouHaveDeclinedThisChatInvitation,
    required this.enterYourCurrentPhoneNumber,
    required this.solidColors,
    required this.customPhotos,
    required this.deleteAllChats,
    required this.areYouSureYouWantToDeleteAllChat,
    required this.alsoDeleteMedia,
    required this.CREATE,
    required this.contactName,
    required this.typeAMessage,
    required this.selectPicture,
    required this.changeWallpaper,
    required this.deleteAccountPermanently,
    required this.afterDeletingYourAccountYouWillNotBeAbleToAccessTheAppAndYouMayLooseYourAllContacts,
    required this.afterEnablingTheFingerprintYouWillBeAskedToUseFingerprintForUsingApplicationYouCanNotUseAnyFeaturesOfApplicationExceptCalls,
    required this.fingerprintWillBeEnabled,
    required this.immediately,
    required this.within30Seconds,
    required this.within1Minute,
    required this.within10Minutes,
    required this.touchTheFingerprintSensor,
    required this.manageStorage,
    required this.sorryNoDownloadsFound,
    required this.Doyouwanttovisitall,
    required this.ncheckYourPhotosAppForDownloadedVideoext,
    required this.chatsAndGroups,
    required this.everyone,
    required this.myContacts,
    required this.storiesPrivacy,
    required this.whoCanSeeMyStory,
    required this.myContactsExcept,
    required this.onlyShareWith,
    required this.areYouSureYouWantToDeleteFile,
    required this.onceDeletedItCanTBeRecovered,
    required this.areYouSureYouWantToDeleteYourAccount,
    required this.thisActionWillDeleteYourKahoChatAccountPermanently,
    required this.deletingAccount,
    required this.mediainyourgallery,
    required this.deletingUserDataAndResettingThe,
    required this.AreYouSureYouWantToDeleteThisCallLog,
    required this.app,
    required this.deleteAccount,
    required this.makeAsAdmin,
    required this.enterYourPhoneNumber,
    required this.areYouSureYouWantToMigrateYourPhoneNumber,
    required this.thisActionWillMigrateYourKahoChatAccountTo,
    required this.migrate,
    required this.areYouSureYouWantToCancelThisAction,
    required this.discard,
    required this.migratingAccount,
    required this.migratePhoneNumber,
    required this.migrateToNewPhoneNumber,
    required this.wrongNumber,
    required this.enterYourNewPhoneNumber,
    required this.setAsWallpaper,
    required this.changeMyPhoneNumber,
    required this.mobile,
    required this.onlyMyContact,
    required this.noOne,
    required this.freeUpSpace,
    required this.logingOut,
    required this.areYouSureYouWantToLogOut,
    required this.chooseLanguage,
    required this.hasAcceptedYourChatInvitation,
    required this.hasDeclinedYourChatInvitation,
    required this.RingTone,
    required this.Groupmute,
  });
  String RingTone;
  String Chatmute;
  String Block;
  String add;
  String called;
  String YouCalled;
  String noPhoneContactsPleaseAddAContactInYourPhonebook;
  String newContact;
  String newGroup;
  String newBroadcast;
  String notifications;
  String Verifying;
  String settings;
  String inviteFriends;
  String Notification;
  String help;
  String logOut;
  String contacts;
  String phoneContacts;
  String invite;
  String createAGroup;
  String enterGroupName;
  String Decline;
  String selectMembers;
  String createNewGroup;
  String chats;
  String groups;
  String calls;
  String chatTones;
  String groupTones;
  String callsTones;
  String notificationTone;
  String appLanguage;
  String theme;
  String fontSize;
  String wallpaper;
  String chatHistory;
  String chatBackup;
  String account;
  String storage;
  String privacy;
  String deleteMyAccount;
  String changeMyNumber;
  String fingerprintLock;
  String lastSeen;
  String profilePhoto;
  String Appearance;
  String status;
  String Share;
  String aboutYou;
  String liveLocation;
  String doYouWantToShareYourLocation;
  String blockedContacts;
  String deleteAccountMessage;
  String deleteAccountConfirmation;
  String deleteTemporarily;
  String deletePermanently;
  String skip;
  String next;
  String selectParticipants;
  String participant;
  String inCallWith;
  String connecting;
  String hasAcceptedYourChatInvitation;
  String hasDeclinedYourChatInvitation;
  String hasBlockedYou;
  String participants;
  String ringing;
  String addParticipants;
  String stopRecording;
  String recordCall;
  String turnOnVideo;
  String missedCalls;
  String callNotAnswered;
  String incomingCalls;
  String CONTINUE;
  String outgoingCalls;
  String callLogNotFound;
  String noCallsYet;
  String clickOnAddCallIconToMake;
  String aNewCallWithYourContacts;
  String callIsBeingRecorded;
  String pinned;
  String userNotFound;
  String read;
  String unread;
  String unpin;
  String pin;
  String unmute;
  String select;
  String delete;
  String YouHaveBlockedThisUser;
  String bio;
  String UnblockToSendAMessageOrMakeACall;
  String unblock;
  String sharedMedia;
  String noMediaSentYet;
  String viewAll;
  String disappearingMessages;
  String blockedPeopleDonTAbleToCallOrSendMessageToYou;
  String cancel;
  String incoming;
  String call;
  String selectParticipant;

  String
      theLast10MessagesFromThisUserWillBeForwadedToKahoChatThisUserWillNotBeNotified;
  String report;
  String deleteMessage;
  String alsoDeleteFor;
  String youHaveBeenBlockedByThisContactYouCanNotCallOrMessage;
  String wantsToConnectWithYou;
  String accept;
  String sayHiTo;
  String withAWave;
  String sayHi;
  String waitingFor;
  String toAcceptInvitation;
  String selectParticipantsOrGroups;
  String forward;
  String newMessage;
  String InviteANewChat;
  String inviting;
  String inviteToChat;
  String YouHaveAcceptedThisChatInvitation;
  String hasUnblockedYou;

  String
      searchThePhoneNumberToFindTheContactsAndStartChattingWithoutSavingTheContact;
  String selectCountry;
  String viewContact;
  String addToContact;
  String search;
  String deleteChat;
  String deleteSelectedConversations;
  String thisWillDeleteSelectedConversationsPermanently;
  String noChatsYet;
  String startANewChatByMessagingWithAFriend;
  String message;
  String forwarded;
  String youDeletedThisMessage;
  String thisMessageWasDeleted;
  String groupNotFound;
  String image;
  String audio;
  String file;
  String mute;
  String reportUser;
  String areYouSureYouWantToDeleteThisMessage;
  String deleteForAllMembers;
  String onlyAdminCanSendMessageInThisGroup;
  String groupSharedMedia;
  String groupSettings;
  String doYouReallyWantToLeaveThisGroup;
  String leave;
  String reportGroup;
  String hasCreatedThisGroupOn;
  String addParticipant;
  String inviteViaGroupLink;
  String description;
  String makeAsAdmin;
  String
      thisGroupQrCodeIsPrivateIfItIsSharedWithSomeoneTheyCanScanItWithTheirCameraToJoinThisGroup;
  String recordingInProgress;
  String AreYouSureYouWantToDeclineThisChatInvitatation;
  String clickToStartRecording;
  String camera;
  String takeYourPicture;
  String media;
  String sharePhotosVideos;
  String contact;
  String shareFiles;
  String shareContacts;
  String sendAudioFiles;
  String groupName;
  String groupDescription;
  String save;
  String openPhotoGallery;
  String openCamera;
  String viewPhoto;
  String SearchContact;
  String removeAsAdmin;
  String remove;
  String VibrationalDuration;
  String removed;
  String admin;
  String you;
  String languageDataOnlyAdmin;
  String allParticipants;
  String editGroupInfo;
  String sendMessages;
  String whoCanAddParticipants;
  String ok;
  String onlyAdmin;
  String allMembers;
  String whoCanChangeGroupInfo;
  String whoCanSendMessages;
  String leaveGroup;
  String clearChat;
  String thisWillPermanentlyDeleteSelectedConversations;
  String selected;
  String deleteSelectedFiles;
  String links;
  String stories;
  String mutedStories;
  String upload;
  String fromCamera;
  String fromGallery;
  String openVideo;
  String download;
  String areYouSureWantToDeleteYourStatus;
  String anErrorOccuredWhileLoadingStories;
  String storiesViewedBy;
  String filterByTime;
  String AlsoBlockThisUser;
  String hoursAgo;
  String Default;
  String filter;
  String myStories;
  String holdForCapturingVideo;
  String toggle;
  String allowNotifications;
  String ourAppWouldLikeToSendYouNotifications;
  String no;
  String SearchContacts;
  String yes;
  String halfSecond;
  String oneSecond;
  String oneAndHalfSecond;
  String vibrationDuration;
  String custom;
  String long;
  String medium;
  String short;
  String useTheFingerprint;
  String confirm;
  String learnMore;
  String
      securesYourConversationsWithEndToEndEncryptionThisMeansYourMessagesCallsAndStatusUpdatesStayBetweenYouAndThePeopleYouChooseNotEven;
  String canReadOrListenToThem;
  String encryption;
  String messagesAndCallsAreEndToEndEncryptedTap;
  String toLearnMore;
  String small;
  String closeFilter;
  String large;
  String language;
  String notNow;
  String Continue;
  String systemDefault;
  String lightMode;
  String darkMode;
  String light;
  String dark;
  String holdForVideoTapForPhoto;
  String
      whenEnabledNewMessagesSendAndReceivedInThisChatWillDisappearAfterTheyHaeBeenSeen;
  String AreYouSureYouWantToDeleteThisCallLog;
  String off;
  String weeks;
  String day;
  String mediainyourgallery;
  String hours;
  String Doyouwanttovisitall;
  String hour;
  String minutes;
  String seconds;
  String done;
  String welcome;
  String tapToVerfiyYourIdentity;
  String touchTheFingerprintSensorToUnlock;
  String applicationLocked;
  String applicationUnlocked;
  String thisWillPermanentlyDeleteSelectedImage;
  String deleteSelectedImage;
  String selectContacts;
  String shareContact;
  String files;
  String deleteForMe;
  String enterBroadcastName;
  String nameThisGroup;
  String members;
  String youCanAddOrInviteParticipantsAfterCreatingTheGroup;
  String create;
  String profile;
  String editPhoto;
  String name;
  String firstName;
  String lastName;
  String Groupmute;
  String optional;
  String writeAboutYourself;
  String removeProfilePhoto;
  String noBlockedContacts;
  String proceedToChangeNumber;
  String
      yourAccountContactsGroupsChatsAndSettingsWillBeMigratedToTheNewPhoneNumberAfterChangingYourCurrentPhoneNumber;
  String
      afterMigratingTheAccountToANewPhoneNumberTheOldPhoneNumberWillBeDeletedFromApplicationDatabase;
  String verify;
  String verifyYourself;
  String enterTheVerificationCode;
  String theOneTimePasswordHasBeenSentTo;
  String resendCode;
  String enterYourCurrentPhoneNumber;
  String solidColors;
  String customPhotos;
  String deleteAllChats;
  String areYouSureYouWantToDeleteAllChat;
  String alsoDeleteMedia;
  String contactName;
  String typeAMessage;
  String selectPicture;
  String changeWallpaper;
  String deleteAccountPermanently;
  String noProfilePictureUploadedYet;
  String
      afterDeletingYourAccountYouWillNotBeAbleToAccessTheAppAndYouMayLooseYourAllContacts;
  String
      afterEnablingTheFingerprintYouWillBeAskedToUseFingerprintForUsingApplicationYouCanNotUseAnyFeaturesOfApplicationExceptCalls;
  String fingerprintWillBeEnabled;
  String immediately;
  String within30Seconds;
  String within1Minute;
  String within10Minutes;
  String touchTheFingerprintSensor;
  String manageStorage;
  String sorryNoDownloadsFound;
  String ncheckYourPhotosAppForDownloadedVideoext;
  String chatsAndGroups;
  String everyone;
  String myContacts;
  String storiesPrivacy;
  String whoCanSeeMyStory;
  String myContactsExcept;
  String onlyShareWith;
  String areYouSureYouWantToDeleteFile;
  String onceDeletedItCanTBeRecovered;
  String areYouSureYouWantToDeleteYourAccount;
  String thisActionWillDeleteYourKahoChatAccountPermanently;
  String deletingAccount;
  String deletingUserDataAndResettingThe;
  String app;
  String deleteAccount;
  String enterYourPhoneNumber;
  String areYouSureYouWantToMigrateYourPhoneNumber;
  String thisActionWillMigrateYourKahoChatAccountTo;
  String migrate;
  String areYouSureYouWantToCancelThisAction;
  String discard;
  String migratingAccount;
  String migratePhoneNumber;
  String migrateToNewPhoneNumber;
  String wrongNumber;
  String enterYourNewPhoneNumber;
  String setAsWallpaper;
  String changeMyPhoneNumber;
  String mobile;
  String onlyMyContact;
  String noOne;
  String freeUpSpace;
  String logingOut;
  String areYouSureYouWantToLogOut;
  String chooseLanguage;
  String week;
  String CREATE;
  String ThisPhoneNumberDoesnTExistInKahoChat;
  String YouHaveDeclinedThisChatInvitation;
  String YouHaveUnblockedThisUser;

  factory LanguageData.fromJson(String str) =>
      LanguageData.fromMap(json.decode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory LanguageData.empty() => LanguageData(
        aboutYou: '',
        accept: '',
        allParticipants: '',
        alsoDeleteFor: '',
        alsoDeleteMedia: '',
        anErrorOccuredWhileLoadingStories: '',
        appLanguage: '',
        app: '',
        aNewCallWithYourContacts: '',
        applicationLocked: '',
        applicationUnlocked: '',
        areYouSureWantToDeleteYourStatus: '',
        afterMigratingTheAccountToANewPhoneNumberTheOldPhoneNumberWillBeDeletedFromApplicationDatabase:
            '',
        allMembers: '',
        afterEnablingTheFingerprintYouWillBeAskedToUseFingerprintForUsingApplicationYouCanNotUseAnyFeaturesOfApplicationExceptCalls:
            '',
        areYouSureYouWantToCancelThisAction: '',
        allowNotifications: '',
        areYouSureYouWantToDeleteAllChat: '',
        addParticipant: '',
        areYouSureYouWantToLogOut: '',
        areYouSureYouWantToDeleteYourAccount: '',
        areYouSureYouWantToDeleteThisMessage: '',
        audio: '',
        areYouSureYouWantToMigrateYourPhoneNumber: '',
        bio: '',
        afterDeletingYourAccountYouWillNotBeAbleToAccessTheAppAndYouMayLooseYourAllContacts:
            '',
        blockedContacts: '',
        callLogNotFound: '',
        calls: '',
        callNotAnswered: '',
        camera: '',
        canReadOrListenToThem: '',
        changeMyNumber: '',
        callsTones: '',
        changeWallpaper: '',
        chatBackup: '',
        chatHistory: '',
        changeMyPhoneNumber: '',
        chatsAndGroups: '',
        chatTones: '',
        chooseLanguage: '',
        clearChat: '',
        chats: '',
        clickToStartRecording: '',
        closeFilter: '',
        confirm: '',
        connecting: '',
        contact: '',
        clickOnAddCallIconToMake: '',
        contactName: '',
        contacts: '',
        create: '',
        createAGroup: '',
        createNewGroup: '',
        custom: '',
        customPhotos: '',
        dark: '',
        darkMode: '',
        day: '',
        delete: '',
        deleteAccount: '',
        deleteAccountConfirmation: '',
        deleteAccountMessage: '',
        deleteAllChats: '',
        deleteAccountPermanently: '',
        deleteChat: '',
        deleteForAllMembers: '',
        deleteForMe: '',
        deleteMessage: '',
        deleteMyAccount: '',
        editGroupInfo: '',
        discard: '',
        done: '',
        description: '',
        disappearingMessages: '',
        download: '',
        doYouWantToShareYourLocation: '',
        encryption: '',
        editPhoto: '',
        enterGroupName: '',
        enterBroadcastName: '',
        enterYourCurrentPhoneNumber: '',
        enterYourPhoneNumber: '',
        enterYourNewPhoneNumber: '',
        everyone: '',
        enterTheVerificationCode: '',
        doYouReallyWantToLeaveThisGroup: '',
        file: '',
        filter: '',
        fingerprintWillBeEnabled: '',
        firstName: '',
        fingerprintLock: '',
        fontSize: '',
        forward: '',
        forwarded: '',
        freeUpSpace: '',
        deletingAccount: '',
        fromGallery: '',
        groupDescription: '',
        groupName: '',
        groupNotFound: '',
        fromCamera: '',
        filterByTime: '',
        groups: '',
        groupSettings: '',
        groupSharedMedia: '',
        help: '',
        holdForCapturingVideo: '',
        holdForVideoTapForPhoto: '',
        hour: '',
        hours: '',
        hoursAgo: '',
        immediately: '',
        image: '',
        inCallWith: '',
        incomingCalls: '',
        hasCreatedThisGroupOn: '',
        inviteFriends: '',
        invite: '',
        inviteToChat: '',
        inviteViaGroupLink: '',
        language: '',
        Continue: '',
        inviting: '',
        languageDataOnlyAdmin: '',
        large: '',
        Default: '',
        groupTones: '',
        files: '',
        learnMore: '',
        leave: '',
        lastSeen: '',
        leaveGroup: '',
        light: '',
        links: '',
        lightMode: '',
        liveLocation: '',
        logingOut: '',
        logOut: '',
        lastName: '',
        manageStorage: '',
        deleteTemporarily: '',
        media: '',
        message: '',
        messagesAndCallsAreEndToEndEncryptedTap: '',
        migrate: '',
        migratePhoneNumber: '',
        migrateToNewPhoneNumber: '',
        migratingAccount: '',
        minutes: '',
        missedCalls: '',
        mobile: '',
        mute: '',
        mutedStories: '',
        myContacts: '',
        myContactsExcept: '',
        myStories: '',
        name: '',
        nameThisGroup: '',
        ncheckYourPhotosAppForDownloadedVideoext: '',
        newBroadcast: '',
        InviteANewChat: '',
        newContact: '',
        newGroup: '',
        newMessage: '',
        next: '',
        no: '',
        noBlockedContacts: '',
        noCallsYet: '',
        noChatsYet: '',
        noMediaSentYet: '',
        noOne: '',
        notifications: '',
        notificationTone: '',
        notNow: '',
        off: '',
        ok: '',
        onceDeletedItCanTBeRecovered: '',
        oneAndHalfSecond: '',
        oneSecond: '',
        onlyAdmin: '',
        onlyAdminCanSendMessageInThisGroup: '',
        onlyShareWith: '',
        openCamera: '',
        openPhotoGallery: '',
        openVideo: '',
        optional: '',
        ourAppWouldLikeToSendYouNotifications: '',
        outgoingCalls: '',
        participant: '',
        participants: '',
        phoneContacts: '',
        pin: '',
        pinned: '',
        privacy: '',
        proceedToChangeNumber: '',
        profile: '',
        onlyMyContact: '',
        profilePhoto: '',
        read: '',
        recordCall: '',
        recordingInProgress: '',
        remove: '',
        removeAsAdmin: '',
        removed: '',
        removeProfilePhoto: '',
        reportGroup: '',
        report: '',
        reportUser: '',
        resendCode: '',
        ringing: '',
        save: '',
        sayHi: '',
        sayHiTo: '',
        search: '',
        searchThePhoneNumberToFindTheContactsAndStartChattingWithoutSavingTheContact:
            '',
        seconds: '',
        securesYourConversationsWithEndToEndEncryptionThisMeansYourMessagesCallsAndStatusUpdatesStayBetweenYouAndThePeopleYouChooseNotEven:
            '',
        select: '',
        selectContacts: '',
        selectCountry: '',
        selected: '',
        selectMembers: '',
        selectParticipants: '',
        selectParticipantsOrGroups: '',
        selectPicture: '',
        sendAudioFiles: '',
        sendMessages: '',
        setAsWallpaper: '',
        settings: '',
        shareContact: '',
        shareContacts: '',
        sharedMedia: '',
        shareFiles: '',
        sharePhotosVideos: '',
        short: '',
        skip: '',
        small: '',
        solidColors: '',
        sorryNoDownloadsFound: '',
        startANewChatByMessagingWithAFriend: '',
        status: '',
        stopRecording: '',
        storage: '',
        stories: '',
        storiesPrivacy: '',
        storiesViewedBy: '',
        systemDefault: '',
        takeYourPicture: '',
        tapToVerfiyYourIdentity: '',
        theLast10MessagesFromThisUserWillBeForwadedToKahoChatThisUserWillNotBeNotified:
            '',
        theme: '',
        theOneTimePasswordHasBeenSentTo: '',
        thisActionWillDeleteYourKahoChatAccountPermanently: '',
        thisActionWillMigrateYourKahoChatAccountTo: '',
        thisGroupQrCodeIsPrivateIfItIsSharedWithSomeoneTheyCanScanItWithTheirCameraToJoinThisGroup:
            '',
        thisMessageWasDeleted: '',
        thisWillDeleteSelectedConversationsPermanently: '',
        thisWillPermanentlyDeleteSelectedConversations: '',
        thisWillPermanentlyDeleteSelectedImage: '',
        toAcceptInvitation: '',
        toggle: '',
        toLearnMore: '',
        touchTheFingerprintSensor: '',
        touchTheFingerprintSensorToUnlock: '',
        turnOnVideo: '',
        typeAMessage: '',
        unblock: '',
        UnblockToSendAMessageOrMakeACall: '',
        unmute: '',
        unpin: '',
        unread: '',
        upload: '',
        userNotFound: '',
        useTheFingerprint: '',
        verify: '',
        verifyYourself: '',
        vibrationDuration: '',
        viewAll: '',
        viewContact: '',
        viewPhoto: '',
        waitingFor: '',
        wallpaper: '',
        wantsToConnectWithYou: '',
        weeks: '',
        welcome: '',
        whenEnabledNewMessagesSendAndReceivedInThisChatWillDisappearAfterTheyHaeBeenSeen:
            '',
        whoCanAddParticipants: '',
        whoCanChangeGroupInfo: '',
        whoCanSeeMyStory: '',
        whoCanSendMessages: '',
        withAWave: '',
        within10Minutes: '',
        within1Minute: '',
        within30Seconds: '',
        members: '',
        medium: '',
        long: '',
        halfSecond: '',
        deletingUserDataAndResettingThe: '',
        deleteSelectedImage: '',
        deleteSelectedFiles: '',
        deleteSelectedConversations: '',
        deletePermanently: '',
        callIsBeingRecorded: '',
        areYouSureYouWantToDeleteFile: '',
        admin: '',
        addToContact: '',
        account: '',
        addParticipants: '',
        writeAboutYourself: '',
        wrongNumber: '',
        yes: '',
        you: '',
        youCanAddOrInviteParticipantsAfterCreatingTheGroup: '',
        youDeletedThisMessage: '',
        youHaveBeenBlockedByThisContactYouCanNotCallOrMessage: '',
        yourAccountContactsGroupsChatsAndSettingsWillBeMigratedToTheNewPhoneNumberAfterChangingYourCurrentPhoneNumber:
            '',
        noPhoneContactsPleaseAddAContactInYourPhonebook: '',
        add: '',
        Block: '',
        blockedPeopleDonTAbleToCallOrSendMessageToYou: '',
        call: '',
        cancel: '',
        incoming: '',
        selectParticipant: '',
        called: '',
        YouCalled: '',
        makeAsAdmin: '',
        noProfilePictureUploadedYet: '',
        week: '',
        Share: '',
        SearchContact: '',
        Verifying: '',
        CONTINUE: '',
        CREATE: '',
        AreYouSureYouWantToDeleteThisCallLog: '',
        Decline: '',
        SearchContacts: '',
        ThisPhoneNumberDoesnTExistInKahoChat: '',
        YouHaveAcceptedThisChatInvitation: '',
        YouHaveDeclinedThisChatInvitation: '',
        hasAcceptedYourChatInvitation: '',
        hasDeclinedYourChatInvitation: '',
        hasUnblockedYou: '',
        hasBlockedYou: '',
        YouHaveUnblockedThisUser: '',
        YouHaveBlockedThisUser: '',
        AreYouSureYouWantToDeclineThisChatInvitatation: '',
        AlsoBlockThisUser: '',
        Chatmute: '',
        VibrationalDuration: '',
        RingTone: '',
        Groupmute: '',
        Notification: '',
        Appearance: '',
        Doyouwanttovisitall: '',
        mediainyourgallery: '',
      );
  //    LanguageData copyWith({
  //     String? blockedPeopleDonTAbleToCallOrSendMessageToYou,
  //     String? cancel,
  //     String? incoming,
  //     String? call,
  //     String? selectParticipant,
  // }) =>
  //     LanguageData(
  //         blockedPeopleDonTAbleToCallOrSendMessageToYou: blockedPeopleDonTAbleToCallOrSendMessageToYou ?? this.blockedPeopleDonTAbleToCallOrSendMessageToYou,
  //         cancel: cancel ?? this.cancel,
  //         incoming: incoming ?? this.incoming,
  //         call: call ?? this.call,
  //         selectParticipant: selectParticipant ?? this.selectParticipant,
  //     );

  factory LanguageData.fromMap(Map<String, dynamic> json) => LanguageData(
        Appearance: json["Appearance"] as String,
        Notification: json["Notification"] as String,
        RingTone: json["Ring Tone"] as String,
        Chatmute: json["Chat mute"] as String,
        VibrationalDuration: json["Vibrational Duration"] as String,
        Decline: json["Decline"] as String,
        CREATE: json["CREATE"] as String,
        CONTINUE: json['CONTINUE'] as String,
        week: json["week"] as String,
        Share: json["Share"] as String,
        SearchContact: json["Search Contact"] as String,
        noProfilePictureUploadedYet:
            json["No profile picture uploaded yet"] as String,
        makeAsAdmin: json["Make as admin"] as String,
        blockedPeopleDonTAbleToCallOrSendMessageToYou:
            json["Blocked people don't able to call or send message to you"]
                as String,
        cancel: json["Cancel"] as String,
        incoming: json["Incoming"] as String,
        call: json["call"] as String,
        selectParticipant: json["Select participant"] as String,
        Block: json["Block"] as String,
        noPhoneContactsPleaseAddAContactInYourPhonebook:
            json["No phone contacts. Please add a contact in your phonebook"]
                as String,
        newContact: json["New Contact"] as String,
        add: json["Add"] as String,
        newGroup: json["New Group"] as String,
        newBroadcast: json["New Broadcast"] as String,
        notifications: json["Notifications"] as String,
        settings: json["Settings"] as String,
        inviteFriends: json["Invite Friends"] as String,
        help: json["Help"] as String,
        logOut: json["Log Out"] as String,
        contacts: json["Contacts"] as String,
        phoneContacts: json["Phone Contacts"] as String,
        invite: json["Invite"] as String,
        createAGroup: json["Create A Group"] as String,
        enterGroupName: json["Enter Group Name"] as String,
        selectMembers: json["Select Members"] as String,
        createNewGroup: json["Create New Group"] as String,
        chats: json["Chats"] as String,
        groups: json["Groups"] as String,
        calls: json["Calls"] as String,
        chatTones: json["Chat Tones"] as String,
        groupTones: json["Group Tones"] as String,
        callsTones: json["Calls Tones"] as String,
        notificationTone: json["Notification Tone"] as String,
        appLanguage: json["App Language"] as String,
        theme: json["Theme"] as String,
        fontSize: json["Font Size"] as String,
        wallpaper: json["Wallpaper"] as String,
        chatBackup: json["Chat Backup"] as String,
        account: json["Account"] as String,
        storage: json["Storage"] as String,
        privacy: json["Privacy"] as String,
        changeMyNumber: json["Change My Number"] as String,
        fingerprintLock: json["Fingerprint Lock"] as String,
        lastSeen: json["Last Seen"] as String,
        profilePhoto: json["Profile Photo"] as String,
        status: json["Status"] as String,
        aboutYou: json["About You"] as String,
        liveLocation: json["Live Location"] as String,
        doYouWantToShareYourLocation:
            json["Do you want to share your location"] as String,
        blockedContacts: json["Blocked Contacts"] as String,
        deleteAccountMessage: json["Delete account message"] as String,
        deleteAccountConfirmation:
            json["Delete account confirmation"] as String,
        deleteTemporarily: json["Delete Temporarily"] as String,
        deletePermanently: json["Delete Permanently"] as String,
        skip: json["Skip"] as String,
        next: json["Next"] as String,
        selectParticipants: json["Select Participants"] as String,
        participant: json["participant"] as String,
        inCallWith: json["In call with"] as String,
        connecting: json["Connecting"] as String,
        participants: json["participants"] as String,
        ringing: json["Ringing"] as String,
        addParticipants: json["Add Participants"] as String,
        stopRecording: json["Stop Recording"] as String,
        recordCall: json["Record Call"] as String,
        turnOnVideo: json["Turn on video"] as String,
        missedCalls: json["Missed calls"] as String,
        callNotAnswered: json["Call not answered"] as String,
        incomingCalls: json["Incoming calls"] as String,
        outgoingCalls: json["Outgoing calls"] as String,
        callLogNotFound: json["Call Log Not Found"] as String,
        noCallsYet: json["No calls yet !"] as String,
        clickOnAddCallIconToMake:
            json["Click on 'Add Call'  icon to make"] as String,
        aNewCallWithYourContacts:
            json["a new call with your contacts"] as String,
        callIsBeingRecorded: json["Call is being recorded"] as String,
        pinned: json["Pinned"] as String,
        userNotFound: json["User Not Found"] as String,
        read: json["read"] as String,
        unread: json["Unread"] as String,
        unpin: json["Unpin"] as String,
        pin: json["Pin"] as String,
        unmute: json["Unmute"] as String,
        select: json["Select"] as String,
        delete: json["Delete"] as String,
        bio: json["Bio"] as String,
        UnblockToSendAMessageOrMakeACall:
            json["Unblock to send a message or make a call"] as String,
        unblock: json["Unblock"] as String,
        sharedMedia: json["Shared Media"] as String,
        noMediaSentYet: json["No media sent yet"] as String,
        viewAll: json["View all"] as String,
        disappearingMessages: json["Disappearing Messages"] as String,
        theLast10MessagesFromThisUserWillBeForwadedToKahoChatThisUserWillNotBeNotified:
            json["The last 10 messages from this user will be forwaded to kahoChat. This user will not be notified"]
                as String,
        report: json["Report"] as String,
        deleteMessage: json["Delete message"] as String,
        alsoDeleteFor: json["Also delete for"] as String,
        youHaveBeenBlockedByThisContactYouCanNotCallOrMessage: json[
                "You have been blocked by this contact you can not call or message"]
            as String,
        wantsToConnectWithYou: json["wants to connect with you"] as String,
        accept: json["Accept"] as String,
        sayHiTo: json["Say hi to"] as String,
        withAWave: json["with a wave"] as String,
        sayHi: json["Say hi"] as String,
        waitingFor: json["Waiting for"] as String,
        toAcceptInvitation: json["to accept invitation"] as String,
        selectParticipantsOrGroups:
            json["Select Participants or Groups"] as String,
        forward: json["Forward"] as String,
        newMessage: json["New message"] as String,
        InviteANewChat: json["Invite a new chat"] as String,
        inviting: json["Inviting"] as String,
        inviteToChat: json["INVITE TO CHAT"] as String,
        searchThePhoneNumberToFindTheContactsAndStartChattingWithoutSavingTheContact:
            json["Search the phone number to find a contact and start chatting without saving the contact in the phone"]
                as String,
        selectCountry: json["Select Country"] as String,
        viewContact: json["View contact"] as String,
        addToContact: json["Add to contact"] as String,
        search: json["Search"] as String,
        deleteChat: json["Delete chat"] as String,
        deleteSelectedConversations:
            json["Delete selected conversations"] as String,
        thisWillDeleteSelectedConversationsPermanently:
            json["This will delete selected conversations permanently"]
                as String,
        noChatsYet: json["No chats yet"] as String,
        startANewChatByMessagingWithAFriend:
            json["Start a new chat by messaging with a friend"] as String,
        message: json["message"] as String,
        forwarded: json["Forwarded"] as String,
        youDeletedThisMessage: json["You deleted this message"] as String,
        thisMessageWasDeleted: json["This message was deleted"] as String,
        groupNotFound: json["Group Not Found"] as String,
        image: json["Image"] as String,
        audio: json["Audio"] as String,
        file: json["File"] as String,
        mute: json["Mute"] as String,
        reportUser: json["Report user"] as String,
        areYouSureYouWantToDeleteThisMessage:
            json["Are you sure you want to delete this message"] as String,
        deleteForAllMembers: json["Delete for all members"] as String,
        onlyAdminCanSendMessageInThisGroup:
            json["Only Admin can send message in this group"] as String,
        groupSharedMedia: json["Group Shared Media"] as String,
        groupSettings: json["Group Settings"] as String,
        doYouReallyWantToLeaveThisGroup:
            json["Do you really want to leave this group"] as String,
        leave: json["Leave"] as String,
        reportGroup: json["Report group"] as String,
        hasCreatedThisGroupOn: json["has created this group on"] as String,
        addParticipant: json["Add participant"] as String,
        inviteViaGroupLink: json["Invite via group link"] as String,
        description: json["Description"] as String,
        thisGroupQrCodeIsPrivateIfItIsSharedWithSomeoneTheyCanScanItWithTheirCameraToJoinThisGroup:
            json["This group QR code is private. If it is shared with someone, they can scan it with their camera to join this group"]
                as String,
        recordingInProgress: json["Recording in progress"] as String,
        clickToStartRecording: json["Click To Start Recording"] as String,
        camera: json["Camera"] as String,
        takeYourPicture: json["Take your picture"] as String,
        media: json["Media"] as String,
        sharePhotosVideos: json["Share photos & videos"] as String,
        contact: json["Contact"] as String,
        shareFiles: json["Share files"] as String,
        shareContacts: json["Share contacts"] as String,
        sendAudioFiles: json["Send audio files"] as String,
        groupName: json["Group Name"] as String,
        groupDescription: json["Group Description"] as String,
        save: json["Save"] as String,
        openPhotoGallery: json["Open Photo Gallery"] as String,
        openCamera: json["Open Camera"] as String,
        viewPhoto: json["View Photo"] as String,
        removeAsAdmin: json["Remove as admin"] as String,
        remove: json["Remove"] as String,
        removed: json["removed"] as String,
        admin: json["Admin"] as String,
        you: json["You"] as String,
        languageDataOnlyAdmin: json["Only admin"] as String,
        allParticipants: json["All participants"] as String,
        editGroupInfo: json["Edit Group Info"] as String,
        sendMessages: json["Send Messages"] as String,
        whoCanAddParticipants: json["Who can add participants"] as String,
        ok: json["OK"] as String,
        onlyAdmin: json["Only Admin"] as String,
        allMembers: json["All members"] as String,
        whoCanChangeGroupInfo: json["Who can change group info"] as String,
        whoCanSendMessages: json["Who can send messages"] as String,
        leaveGroup: json["Leave Group"] as String,
        clearChat: json["Clear chat"] as String,
        thisWillPermanentlyDeleteSelectedConversations:
            json["This will permanently delete selected conversations"]
                as String,
        selected: json["Selected"] as String,
        deleteSelectedFiles: json["Delete selected files"] as String,
        links: json["Links"] as String,
        stories: json["Stories"] as String,
        mutedStories: json["Muted Stories"] as String,
        upload: json["Upload"] as String,
        fromCamera: json["From Camera"] as String,
        fromGallery: json["From Gallery"] as String,
        openVideo: json["Open Video"] as String,
        download: json["Download"] as String,
        areYouSureWantToDeleteYourStatus:
            json["Are you sure want to delete your status"] as String,
        anErrorOccuredWhileLoadingStories:
            json["An error occured while loading stories"] as String,
        storiesViewedBy: json["Stories viewed by"] as String,
        filterByTime: json["Filter by Time"] as String,
        hoursAgo: json["hours ago"] as String,
        Default: json["Default"] as String,
        filter: json["Filter"] as String,
        myStories: json["My Stories"] as String,
        holdForCapturingVideo: json["Hold for Capturing Video"] as String,
        toggle: json["Toggle"] as String,
        allowNotifications: json["Allow Notifications"] as String,
        ourAppWouldLikeToSendYouNotifications:
            json["Our app would like to send you notifications"] as String,
        no: json["No"] as String,
        yes: json["Yes"] as String,
        halfSecond: json["Half second"] as String,
        oneSecond: json["One second"] as String,
        oneAndHalfSecond: json["One and half second"] as String,
        vibrationDuration: json["Vibration Duration"] as String,
        custom: json["Custom"] as String,
        long: json["long"] as String,
        medium: json["medium"] as String,
        short: json["short"] as String,
        useTheFingerprint: json["Use the fingerprint"] as String,
        confirm: json["Confirm"] as String,
        learnMore: json["Learn more"] as String,
        securesYourConversationsWithEndToEndEncryptionThisMeansYourMessagesCallsAndStatusUpdatesStayBetweenYouAndThePeopleYouChooseNotEven:
            json["secures your conversations with end-to-end encryption. This means your messages, calls and status updates stay between you and the people you choose. Not even"]
                as String,
        canReadOrListenToThem: json["can read or listen to them"] as String,
        encryption: json["Encryption"] as String,
        messagesAndCallsAreEndToEndEncryptedTap:
            json["Messages and calls are end-to-end encrypted. Tap"] as String,
        toLearnMore: json["to learn more"] as String,
        small: json["small"] as String,
        closeFilter: json["Close Filter"] as String,
        large: json["large"] as String,
        language: json["Language"] as String,
        notNow: json["Not now"] as String,
        Continue: json["Continue"] as String,
        systemDefault: json["System default"] as String,
        lightMode: json["Light mode"] as String,
        darkMode: json["dark mode"] as String,
        light: json["Light"] as String,
        dark: json["Dark"] as String,
        holdForVideoTapForPhoto:
            json["Hold for video, tap for photo"] as String,
        whenEnabledNewMessagesSendAndReceivedInThisChatWillDisappearAfterTheyHaeBeenSeen:
            json["When enabled, new messages send and received in this chat will disappear after they hae been seen"]
                as String,
        off: json["Off"] as String,
        weeks: json["Weeks"] as String,
        day: json["Day"] as String,
        hours: json["Hours"] as String,
        hour: json["Hour"] as String,
        minutes: json["minutes"] as String,
        seconds: json["seconds"] as String,
        done: json["Done"] as String,
        welcome: json["Welcome"] as String,
        tapToVerfiyYourIdentity: json["Tap to verfiy your identity"] as String,
        touchTheFingerprintSensorToUnlock:
            json["Touch the fingerprint sensor to unlock"] as String,
        applicationLocked: json["Application Locked"] as String,
        applicationUnlocked: json["Application Unlocked"] as String,
        thisWillPermanentlyDeleteSelectedImage:
            json["This will permanently delete selected image"] as String,
        deleteSelectedImage: json["Delete selected image"] as String,
        selectContacts: json["Select Contacts"] as String,
        shareContact: json["Share Contact"] as String,
        files: json["Files"] as String,
        deleteForMe: json["Delete for me"] as String,
        enterBroadcastName: json["Enter broadcast name"] as String,
        nameThisGroup: json["Name this Group"] as String,
        members: json["Members"] as String,
        youCanAddOrInviteParticipantsAfterCreatingTheGroup:
            json["You can add or invite participants after creating the group"]
                as String,
        create: json["Create"] as String,
        profile: json["Profile"] as String,
        editPhoto: json["Edit photo"] as String,
        name: json["Name"] as String,
        firstName: json["First Name"] as String,
        lastName: json["Last Name"] as String,
        optional: json["Optional"] as String,
        writeAboutYourself: json["Write about yourself"] as String,
        removeProfilePhoto: json["Remove profile photo"] as String,
        noBlockedContacts: json["No Blocked Contacts"] as String,
        proceedToChangeNumber: json["Proceed to Change Number"] as String,
        yourAccountContactsGroupsChatsAndSettingsWillBeMigratedToTheNewPhoneNumberAfterChangingYourCurrentPhoneNumber:
            json["Your account, contacts, groups, chats and settings will be migrated to the new phone number after changing your current phone number"]
                as String,
        afterMigratingTheAccountToANewPhoneNumberTheOldPhoneNumberWillBeDeletedFromApplicationDatabase:
            json["After migrating the account to a new phone number the old phone number will be deleted from Application Database"]
                as String,
        verify: json["Verify"] as String,
        verifyYourself: json["Verify yourself"] as String,
        Verifying: json["Verifying"] as String,
        enterTheVerificationCode: json["Enter the verification code"] as String,
        theOneTimePasswordHasBeenSentTo:
            json["The One Time Password has been sent to"] as String,
        resendCode: json["Resend code"] as String,
        enterYourCurrentPhoneNumber:
            json["Enter your current phone number"] as String,
        solidColors: json["Solid Colors"] as String,
        customPhotos: json["Custom Photos"] as String,
        deleteAllChats: json["Delete all chats"] as String,
        areYouSureYouWantToDeleteAllChat:
            json["Are you sure you want to delete all chat"] as String,
        alsoDeleteMedia: json["Also delete media"] as String,
        contactName: json["Contact name"] as String,
        typeAMessage: json["Type a message"] as String,
        selectPicture: json["Select Picture"] as String,
        changeWallpaper: json["Change Wallpaper"] as String,
        deleteAccountPermanently: json["Delete account permanently"] as String,
        afterDeletingYourAccountYouWillNotBeAbleToAccessTheAppAndYouMayLooseYourAllContacts:
            json["After deleting your account, you will not be able to access the App and you may loose your all contacts"]
                as String,
        afterEnablingTheFingerprintYouWillBeAskedToUseFingerprintForUsingApplicationYouCanNotUseAnyFeaturesOfApplicationExceptCalls:
            json["After enabling the fingerprint, you will be asked to use fingerprint for using Application. You can not use any features of application except calls"]
                as String,
        fingerprintWillBeEnabled: json["Fingerprint will be enabled"] as String,
        immediately: json["Immediately"] as String,
        within30Seconds: json["Within 30 seconds"] as String,
        within1Minute: json["Within 1 minute"] as String,
        within10Minutes: json["Within 10 minutes"] as String,
        touchTheFingerprintSensor:
            json["Touch the fingerprint sensor"] as String,
        manageStorage: json["Manage storage"] as String,
        sorryNoDownloadsFound: json["Sorry, No Downloads Found"] as String,
        ncheckYourPhotosAppForDownloadedVideoext:
            json["Ncheck your photos app for downloaded videoext"] as String,
        chatsAndGroups: json["Chats and groups"] as String,
        everyone: json["Everyone"] as String,
        myContacts: json["My Contacts"] as String,
        storiesPrivacy: json["Stories privacy"] as String,
        whoCanSeeMyStory: json["Who can see my Story"] as String,
        myContactsExcept: json["My contacts except"] as String,
        onlyShareWith: json["Only share with"] as String,
        areYouSureYouWantToDeleteFile:
            json["Are you sure you want to delete file"] as String,
        onceDeletedItCanTBeRecovered:
            json["Once deleted it can't be recovered"] as String,
        areYouSureYouWantToDeleteYourAccount:
            json["Are you sure you want to delete your account"] as String,
        thisActionWillDeleteYourKahoChatAccountPermanently:
            json["This action will delete your KahoChat account permanently"]
                as String,
        deletingAccount: json["Deleting account"] as String,
        deletingUserDataAndResettingThe:
            json["Deleting user data and resetting the"] as String,
        app: json["app"] as String,
        deleteAccount: json["Delete account"] as String,
        enterYourPhoneNumber: json["Enter your phone number"] as String,
        areYouSureYouWantToMigrateYourPhoneNumber:
            json["Are you sure you want to migrate your phone number"]
                as String,
        thisActionWillMigrateYourKahoChatAccountTo:
            json["This action will migrate your KahoChat account to"] as String,
        migrate: json["Migrate"] as String,
        areYouSureYouWantToCancelThisAction:
            json["Are you sure you want to cancel this action"] as String,
        discard: json["Discard"] as String,
        migratingAccount: json["Migrating account"] as String,
        migratePhoneNumber: json["Migrate phone number"] as String,
        migrateToNewPhoneNumber: json["Migrate to new phone number"] as String,
        wrongNumber: json["Wrong number"] as String,
        enterYourNewPhoneNumber: json["Enter your new phone number"] as String,
        setAsWallpaper: json["Set as wallpaper"] as String,
        deleteMyAccount: json["Delete my account"] as String,
        changeMyPhoneNumber: json["Change my phone number"] as String,
        mobile: json["Mobile"] as String,
        chatHistory: json["Chat history"] as String,
        onlyMyContact: json["Only my contact"] as String,
        noOne: json["No one"] as String,
        freeUpSpace: json["Free up space"] as String,
        logingOut: json["Loging out"] as String,
        areYouSureYouWantToLogOut:
            json["Are you sure you want to Log out"] as String,
        chooseLanguage: json["Choose Language"] as String,
        called: json["called"] as String,
        YouCalled: json["You Called"] as String,
        AreYouSureYouWantToDeleteThisCallLog:
            json["Are you sure you want to delete this call log"] as String,
        SearchContacts: json["Search Contacts"] as String,
        ThisPhoneNumberDoesnTExistInKahoChat:
            json["This phone number doesn't exist in KahoChat"] as String,
        YouHaveAcceptedThisChatInvitation:
            json["You have accepted this chat invitation"] as String,
        YouHaveDeclinedThisChatInvitation:
            json["You have declined this chat invitation"] as String,
        hasAcceptedYourChatInvitation:
            json["has accepted your chat invitation"] as String,
        hasDeclinedYourChatInvitation:
            json["has declined your chat invitation"] as String,
        hasUnblockedYou: json["has unblocked you"] as String,
        hasBlockedYou: json["has blocked you"] as String,
        YouHaveUnblockedThisUser:
            json["You have unblocked this user"] as String,
        YouHaveBlockedThisUser: json["You have blocked this user"] as String,
        AreYouSureYouWantToDeclineThisChatInvitatation:
            json["Are you sure you want to decline this chat invitatation"]
                as String,
        AlsoBlockThisUser: json["Also block this user"] as String,
        Groupmute: json["Group mute"] as String,
        Doyouwanttovisitall: json["Do you want to visit all"] as String,
        mediainyourgallery: json["media in your gallery"] as String,
      );

  Map<String, dynamic> toMap() => {
        "media in your gallery": mediainyourgallery,
        "Do you want to visit all": Doyouwanttovisitall,
        "Group mute": Groupmute,
        "Ring Tone": RingTone,
        "Vibrational Duration": VibrationalDuration,
        "Add": add,
        "Also block this user": AlsoBlockThisUser,
        "Are you sure you want to decline this chat invitatation":
            AreYouSureYouWantToDeclineThisChatInvitatation,
        "You have blocked this user": YouHaveBlockedThisUser,
        "You have unblocked this user": YouHaveUnblockedThisUser,
        "has blocked you": hasBlockedYou,
        "has unblocked you": hasUnblockedYou,
        "has declined your chat invitation": hasDeclinedYourChatInvitation,
        "has accepted your chat invitation": hasAcceptedYourChatInvitation,
        "You have declined this chat invitation":
            YouHaveDeclinedThisChatInvitation,
        "You have accepted this chat invitation":
            YouHaveAcceptedThisChatInvitation,
        "Decline": Decline,
        "Block": Block,
        "New Contact": newContact,
        "New Group": newGroup,
        "New Broadcast": newBroadcast,
        "Notifications": notifications,
        "Settings": settings,
        "Invite Friends": inviteFriends,
        "Notification": Notification,
        "Help": help,
        "Log Out": logOut,
        "Contacts": contacts,
        "Phone Contacts": phoneContacts,
        "Invite": invite,
        "Create A Group": createAGroup,
        "Enter Group Name": enterGroupName,
        "Select Members": selectMembers,
        "Create New Group": createNewGroup,
        "Chats": chats,
        "Chat mute": Chatmute,
        "Groups": groups,
        "Calls": calls,
        "Chat Tones": chatTones,
        "Group Tones": groupTones,
        "Calls Tones": callsTones,
        "Notification Tone": notificationTone,
        "App Language": appLanguage,
        "Theme": theme,
        "Font Size": fontSize,
        "Wallpaper": wallpaper,
        "Chat Backup": chatBackup,
        "Account": account,
        "Storage": storage,
        "Privacy": privacy,
        "Change My Number": changeMyNumber,
        "Fingerprint Lock": fingerprintLock,
        "Profile Photo": profilePhoto,
        "Status": status,
        "About You": aboutYou,
        "Live Location": liveLocation,
        "Do you want to share your location": doYouWantToShareYourLocation,
        "Blocked Contacts": blockedContacts,
        "Delete account message": deleteAccountMessage,
        "Delete account confirmation": deleteAccountConfirmation,
        "Delete Temporarily": deleteTemporarily,
        "Delete Permanently": deletePermanently,
        "Skip": skip,
        "Next": next,
        "Select Participants": selectParticipants,
        "participant": participant,
        "In call with": inCallWith,
        "CONTINUE": CONTINUE,
        "Connecting": connecting,
        "Profile photo": profilePhoto,
        "participants": participants,
        "Ringing": ringing,
        "Add Participants": addParticipants,
        "Stop Recording": stopRecording,
        "Record Call": recordCall,
        "Turn on video": turnOnVideo,
        "Missed calls": missedCalls,
        "Call not answered": callNotAnswered,
        "Incoming calls": incomingCalls,
        "Outgoing calls": outgoingCalls,
        "Call Log Not Found": callLogNotFound,
        "No calls yet !": noCallsYet,
        "Click on 'Add Call'  icon to make": clickOnAddCallIconToMake,
        "a new call with your contacts": aNewCallWithYourContacts,
        "Call is being recorded": callIsBeingRecorded,
        "Pinned": pinned,
        "User Not Found": userNotFound,
        "read": read,
        "Make as admin": makeAsAdmin,
        "Unread": unread,
        "Unpin": unpin,
        "Pin": pin,
        "Unmute": unmute,
        "Select": select,
        "Delete": delete,
        "Bio": bio,
        "Unblock to send a message or make a call":
            UnblockToSendAMessageOrMakeACall,
        "Unblock": unblock,
        "Appearance": Appearance,
        "Shared Media": sharedMedia,
        "No media sent yet": noMediaSentYet,
        "View all": viewAll,
        "Disappearing Messages": disappearingMessages,
        "The last 10 messages from this user will be forwaded to kahoChat. This user will not be notified":
            theLast10MessagesFromThisUserWillBeForwadedToKahoChatThisUserWillNotBeNotified,
        "Report": report,
        "Delete message": deleteMessage,
        "Also delete for": alsoDeleteFor,
        "You have been blocked by this contact you can not call or message":
            youHaveBeenBlockedByThisContactYouCanNotCallOrMessage,
        "wants to connect with you": wantsToConnectWithYou,
        "Accept": accept,
        "Say hi to": sayHiTo,
        "with a wave": withAWave,
        "Say hi": sayHi,
        "Search Contacts": SearchContacts,
        "Waiting for": waitingFor,
        "to accept invitation": toAcceptInvitation,
        "Select Participants or Groups": selectParticipantsOrGroups,
        "Forward": forward,
        "New message": newMessage,
        "Invite a new chat": InviteANewChat,
        "Are you sure you want to delete this call log":
            AreYouSureYouWantToDeleteThisCallLog,
        "Inviting": inviting,
        "INVITE TO CHAT": inviteToChat,
        "Search the phone number to find a contact and start chatting without saving the contact in the phone":
            searchThePhoneNumberToFindTheContactsAndStartChattingWithoutSavingTheContact,
        "Select Country": selectCountry,
        "select": select,
        "View contact": viewContact,
        "Add to contact": addToContact,
        "Search": search,
        "Delete chat": deleteChat,
        "Delete selected conversations": deleteSelectedConversations,
        "This will delete selected conversations permanently":
            thisWillDeleteSelectedConversationsPermanently,
        "No chats yet": noChatsYet,
        "Start a new chat by messaging with a friend":
            startANewChatByMessagingWithAFriend,
        "status": status,
        "message": message,
        "Forwarded": forwarded,
        "Share": Share,
        "Search Contact": SearchContact,
        "You deleted this message": youDeletedThisMessage,
        "This message was deleted": thisMessageWasDeleted,
        "Group Not Found": groupNotFound,
        "Image": image,
        "Audio": audio,
        "File": file,
        "week": week,
        "Mute": mute,
        "Report user": reportUser,
        "Are you sure you want to delete this message":
            areYouSureYouWantToDeleteThisMessage,
        "Delete for all members": deleteForAllMembers,
        "Only Admin can send message in this group":
            onlyAdminCanSendMessageInThisGroup,
        "Group Shared Media": groupSharedMedia,
        "Group Settings": groupSettings,
        "Do you really want to leave this group":
            doYouReallyWantToLeaveThisGroup,
        "Leave": leave,
        "Report group": reportGroup,
        "has created this group on": hasCreatedThisGroupOn,
        "Participants": participants,
        "Add participant": addParticipant,
        "Invite via group link": inviteViaGroupLink,
        "Description": description,
        "This group QR code is private. If it is shared with someone, they can scan it with their camera to join this group":
            thisGroupQrCodeIsPrivateIfItIsSharedWithSomeoneTheyCanScanItWithTheirCameraToJoinThisGroup,
        "Recording in progress": recordingInProgress,
        "Click To Start Recording": clickToStartRecording,
        "Camera": camera,
        "Take your picture": takeYourPicture,
        "Media": media,
        "Share photos & videos": sharePhotosVideos,
        "Contact": contact,
        "Share files": shareFiles,
        "Share contacts": shareContacts,
        "Send audio files": sendAudioFiles,
        "Group Name": groupName,
        "Group Description": groupDescription,
        "Save": save,
        "Open Photo Gallery": openPhotoGallery,
        "Open Camera": openCamera,
        "View Photo": viewPhoto,
        "Message": message,
        "Remove as admin": removeAsAdmin,
        "Remove": remove,
        "removed": removed,
        "Admin": admin,
        "You": you,
        "Only admin": languageDataOnlyAdmin,
        "All participants": allParticipants,
        "Edit Group Info": editGroupInfo,
        "Send Messages": sendMessages,
        "Who can add participants": whoCanAddParticipants,
        "OK": ok,
        "Verifying": Verifying,
        "Only Admin": onlyAdmin,
        "All members": allMembers,
        "Who can change group info": whoCanChangeGroupInfo,
        "Who can send messages": whoCanSendMessages,
        "Leave Group": leaveGroup,
        "Clear chat": clearChat,
        "This will permanently delete selected conversations":
            thisWillPermanentlyDeleteSelectedConversations,
        "Selected": selected,
        "Delete selected files": deleteSelectedFiles,
        "Links": links,
        "Stories": stories,
        "Muted Stories": mutedStories,
        "Upload": upload,
        "From Camera": fromCamera,
        "From Gallery": fromGallery,
        "Open Video": openVideo,
        "Download": download,
        "Are you sure want to delete your status":
            areYouSureWantToDeleteYourStatus,
        "An error occured while loading stories":
            anErrorOccuredWhileLoadingStories,
        "Stories viewed by": storiesViewedBy,
        "Filter by Time": filterByTime,
        "hours ago": hoursAgo,
        "Default": Default,
        "Filter": filter,
        "My Stories": myStories,
        "Hold for Capturing Video": holdForCapturingVideo,
        "Toggle": toggle,
        "Allow Notifications": allowNotifications,
        "Our app would like to send you notifications":
            ourAppWouldLikeToSendYouNotifications,
        "No": no,
        "Yes": yes,
        "Half second": halfSecond,
        "One second": oneSecond,
        "One and half second": oneAndHalfSecond,
        "Vibration Duration": vibrationDuration,
        "Custom": custom,
        "long": long,
        "medium": medium,
        "short": short,
        "Use the fingerprint": useTheFingerprint,
        "Confirm": confirm,
        "Learn more": learnMore,
        "secures your conversations with end-to-end encryption. This means your messages, calls and status updates stay between you and the people you choose. Not even":
            securesYourConversationsWithEndToEndEncryptionThisMeansYourMessagesCallsAndStatusUpdatesStayBetweenYouAndThePeopleYouChooseNotEven,
        "can read or listen to them": canReadOrListenToThem,
        "Encryption": encryption,
        "Messages and calls are end-to-end encrypted. Tap":
            messagesAndCallsAreEndToEndEncryptedTap,
        "to learn more": toLearnMore,
        "small": small,
        "Close Filter": closeFilter,
        "large": large,
        "Language": language,
        "Not now": notNow,
        "Continue": Continue,
        "System default": systemDefault,
        "Light mode": lightMode,
        "dark mode": darkMode,
        "Light": light,
        "Dark": dark,
        "Hold for video, tap for photo": holdForVideoTapForPhoto,
        "When enabled, new messages send and received in this chat will disappear after they hae been seen":
            whenEnabledNewMessagesSendAndReceivedInThisChatWillDisappearAfterTheyHaeBeenSeen,
        "Off": off,
        "Weeks": weeks,
        "CREATE": CREATE,
        "Day": day,
        "Hours": hours,
        "Hour": hour,
        "minutes": minutes,
        "seconds": seconds,
        "Done": done,
        "Welcome": welcome,
        "Tap to verfiy your identity": tapToVerfiyYourIdentity,
        "Touch the fingerprint sensor to unlock":
            touchTheFingerprintSensorToUnlock,
        "Application Locked": applicationLocked,
        "Application Unlocked": applicationUnlocked,
        "This will permanently delete selected image":
            thisWillPermanentlyDeleteSelectedImage,
        "Delete selected image": deleteSelectedImage,
        "Select Contacts": selectContacts,
        "Share Contact": shareContact,
        "Files": files,
        "Delete for me": deleteForMe,
        "Enter broadcast name": enterBroadcastName,
        "Name this Group": nameThisGroup,
        "Members": members,
        "You can add or invite participants after creating the group":
            youCanAddOrInviteParticipantsAfterCreatingTheGroup,
        "Create": create,
        "Profile": profile,
        "Edit photo": editPhoto,
        "Name": name,
        "First Name": firstName,
        "Last Name": lastName,
        "Optional": optional,
        "Write about yourself": writeAboutYourself,
        "Remove profile photo": removeProfilePhoto,
        "No Blocked Contacts": noBlockedContacts,
        "Proceed to Change Number": proceedToChangeNumber,
        "Your account, contacts, groups, chats and settings will be migrated to the new phone number after changing your current phone number":
            yourAccountContactsGroupsChatsAndSettingsWillBeMigratedToTheNewPhoneNumberAfterChangingYourCurrentPhoneNumber,
        "After migrating the account to a new phone number the old phone number will be deleted from Application Database":
            afterMigratingTheAccountToANewPhoneNumberTheOldPhoneNumberWillBeDeletedFromApplicationDatabase,
        "Verify": verify,
        "Verify yourself": verifyYourself,
        "Enter the verification code": enterTheVerificationCode,
        "The One Time Password has been sent to":
            theOneTimePasswordHasBeenSentTo,
        "Resend code": resendCode,
        "Enter your current phone number": enterYourCurrentPhoneNumber,
        "Solid Colors": solidColors,
        "Custom Photos": customPhotos,
        "Delete all chats": deleteAllChats,
        "Are you sure you want to delete all chat":
            areYouSureYouWantToDeleteAllChat,
        "Also delete media": alsoDeleteMedia,
        "Contact name": contactName,
        "Type a message": typeAMessage,
        "Select Picture": selectPicture,
        "Change Wallpaper": changeWallpaper,
        "Delete account permanently": deleteAccountPermanently,
        "After deleting your account, you will not be able to access the App and you may loose your all contacts":
            afterDeletingYourAccountYouWillNotBeAbleToAccessTheAppAndYouMayLooseYourAllContacts,
        "After enabling the fingerprint, you will be asked to use fingerprint for using Application. You can not use any features of application except calls":
            afterEnablingTheFingerprintYouWillBeAskedToUseFingerprintForUsingApplicationYouCanNotUseAnyFeaturesOfApplicationExceptCalls,
        "Fingerprint will be enabled": fingerprintWillBeEnabled,
        "Immediately": immediately,
        "Within 30 seconds": within30Seconds,
        "Within 1 minute": within1Minute,
        "Within 10 minutes": within10Minutes,
        "Touch the fingerprint sensor": touchTheFingerprintSensor,
        "Manage storage": manageStorage,
        "Sorry, No Downloads Found": sorryNoDownloadsFound,
        "Ncheck your photos app for downloaded videoext":
            ncheckYourPhotosAppForDownloadedVideoext,
        "Chats and groups": chatsAndGroups,
        "Last seen": lastSeen,
        "Everyone": everyone,
        "My Contacts": myContacts,
        "Stories privacy": storiesPrivacy,
        "Who can see my Story": whoCanSeeMyStory,
        "My contacts except": myContactsExcept,
        "Only share with": onlyShareWith,
        "Are you sure you want to delete file": areYouSureYouWantToDeleteFile,
        "Once deleted it can't be recovered": onceDeletedItCanTBeRecovered,
        "Are you sure you want to delete your account":
            areYouSureYouWantToDeleteYourAccount,
        "This action will delete your KahoChat account permanently":
            thisActionWillDeleteYourKahoChatAccountPermanently,
        "Deleting account": deletingAccount,
        "Deleting user data and resetting the": deletingUserDataAndResettingThe,
        "app": app,
        "Delete account": deleteAccount,
        "Enter your phone number": enterYourPhoneNumber,
        "Are you sure you want to migrate your phone number":
            areYouSureYouWantToMigrateYourPhoneNumber,
        "No profile picture uploaded yet": noProfilePictureUploadedYet,
        "This action will migrate your KahoChat account to":
            thisActionWillMigrateYourKahoChatAccountTo,
        "Migrate": migrate,
        "Are you sure you want to cancel this action":
            areYouSureYouWantToCancelThisAction,
        "Discard": discard,
        "Migrating account": migratingAccount,
        "Migrate phone number": migratePhoneNumber,
        "Migrate to new phone number": migrateToNewPhoneNumber,
        "Wrong number": wrongNumber,
        "Enter your new phone number": enterYourNewPhoneNumber,
        "Set as wallpaper": setAsWallpaper,
        "Delete my account": deleteMyAccount,
        "Change my phone number": changeMyPhoneNumber,
        "Mobile": mobile,
        "Chat history": chatHistory,
        "Only my contact": onlyMyContact,
        "No one": noOne,
        "Free up space": freeUpSpace,
        "Loging out": logingOut,
        "Are you sure you want to Log out": areYouSureYouWantToLogOut,
        "Choose Language": chooseLanguage,
        "No phone contacts. Please add a contact in your phonebook":
            noPhoneContactsPleaseAddAContactInYourPhonebook,
        "Blocked people don't able to call or send message to you":
            blockedPeopleDonTAbleToCallOrSendMessageToYou,
        "Cancel": cancel,
        "Incoming": incoming,
        "call": call,
        "Select participant": selectParticipant,
        "You Called": YouCalled,
        "called": called,
        "This phone number doesn't exist in KahoChat":
            ThisPhoneNumberDoesnTExistInKahoChat,
      };
}
