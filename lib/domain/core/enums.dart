enum CallType {
  audio,
  video,
}

enum CallDropDownMenu {
  allCalls,
  incomingCalls,
  outgoingCalls,
  missedCalls,
}

enum CallStatus {
  declined,
  notAnswered,
  // cancelled,
  answered,
  missed,
  ended,
}

enum SendFrom { group, chat }

enum FingerPrintSupport {
  supported,
  notSupported,
}

enum FingerPrintStatus {
  enabled,
  disabled,
}

enum AppLock {
  enabled,
  disabled,
}

enum EnableSaveFileToGallery {
  enabled,
  disabled,
}

enum MessageType {
  text,
  image,
  audio,
  file,
  callInfo,
  contact,
  storyText,
  storyImage,
  invite,
  inviteDecline,
  inviteAccepted,
  video,
  link,
  forwarded,
  blocked,
  replay,
  deleted,
  deletedEveryone,
  note,
  edited,
  gif,
  sticker,
  groupNotification
}

enum StoryType {
  image,
  video,
  text,
  link,
}

enum Language {
  english,
  hindi,
  tamil,
  bangla,
  marathi,
  telugu,
  gujarati,
  punjabi,
  malayalam,
  kannada,
  assamese,
  urdu,
}

enum Fontsize {
  defaultt,
  fourteen,
  sixteen,
  eighteen,
}

enum Wallpaper {
  image,
  defaultt,
  blue,
  black,
  red,
  green,
  pink,
  yellow,
  darkGrey,
  darkRed,
  darkBlue,
}

enum ParticipantType {
  caller,
  receiver,
}

enum Privacy {
  No_one,
  Everyone,
  Only_my_contact,
}

enum StoryPrivacy {
  myContacts,
  myContactsExcept,
  onlyShareWith,
}

enum ActiveStatus {
  Online,
  Offline,
  Typing,
}

enum NotificationMuteStatus {
  enabled,
  disabled,
}

enum MuteGroupAndUser { mute, unmute }

enum NotificationToneType {
  nDefault,
  custom,
}

enum NotificationVibrationDuration {
  normal,
  medium,
  long,
}

enum ColorMatrix {
  noFilter,
  grayScale,
  sepium,
  oldTimes,
  purple,
}

enum GifSource { story, chat, group, other }

enum ImageEditMode {
  imageEdit,
  videoedit,
  imageFilter,
  stackItemDelete,
  noActivity,
}

enum ImageEditToolBarActiveItem {
  freehand,
  text,
  emoji,
  none,
}

enum CallingPage {
  chatDetailPage,
  chatAppBar,
  slidableWidget,
  recentCallList,
  callInfoPage,
  startNewCall,
}
