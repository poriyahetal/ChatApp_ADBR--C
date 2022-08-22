class StoryEffect {
  StoryEffect({required this.img, required this.path});

  final String img;
  final String path;

  // Data
  static final List<StoryEffect> _effects = [
    StoryEffect(img: "none", path: "none"),
    StoryEffect(
      img: "assets/masks/img/aviators.png",
      path: "assets/masks/aviators",
    ),
    StoryEffect(
      img: "assets/masks/img/beard.png",
      path: "assets/masks/beard",
    ),
    StoryEffect(
      img: "assets/masks/img/bigmouth.png",
      path: "assets/masks/bigmouth",
    ),
    StoryEffect(
      img: "assets/masks/img/dalmatian.png",
      path: "assets/masks/dalmatian",
    ),
    StoryEffect(
      img: "assets/masks/img/fatify.png",
      path: "assets/masks/fatify",
    ),
    StoryEffect(
      img: "assets/masks/img/flowers.png",
      path: "assets/masks/flowers",
    ),
    StoryEffect(
      img: "assets/masks/img/grumpycat.png",
      path: "assets/masks/grumpycat",
    ),
    StoryEffect(
      img: "assets/masks/img/koala.png",
      path: "assets/masks/koala",
    ),
    StoryEffect(
      img: "assets/masks/img/lion.png",
      path: "assets/masks/lion",
    ),
    StoryEffect(
      img: "assets/masks/img/mudmask.png",
      path: "assets/masks/mudmask",
    ),
    StoryEffect(
      img: "assets/masks/img/obama.png",
      path: "assets/masks/obama",
    ),
    StoryEffect(
      img: "assets/masks/img/pug.png",
      path: "assets/masks/pug",
    ),
    StoryEffect(
      img: "assets/masks/img/sleepingmask.png",
      path: "assets/masks/sleepingmask",
    ),
    StoryEffect(
      img: "assets/masks/img/smallface.png",
      path: "assets/masks/smallface",
    ),
    StoryEffect(
      img: "assets/masks/img/teddycigar.png",
      path: "assets/masks/teddycigar",
    ),
    StoryEffect(
      img: "assets/masks/img/tripleface.png",
      path: "assets/masks/tripleface",
    ),
    StoryEffect(
      img: "assets/masks/img/twistedface.png",
      path: "assets/masks/twistedface",
    )
  ];
  static final List<StoryEffect> _filters = [
    StoryEffect(img: 'none', path: 'none'),
    StoryEffect(
        img: 'assets/filters/img/bleachbypass.png',
        path: 'assets/filters/bleachbypass'),
    StoryEffect(
        img: 'assets/filters/img/drawingmanga.png',
        path: 'assets/filters/drawingmanga'),
    StoryEffect(
        img: 'assets/filters/img/filmcolorpefection.png',
        path: 'assets/filters/filmcolorperfection'),
    StoryEffect(
        img: 'assets/filters/img/realvhs.png', path: 'assets/filters/realvhs'),
    StoryEffect(
        img: 'assets/filters/img/sepia.png', path: 'assets/filters/sepia'),
    StoryEffect(
        img: 'assets/filters/img/tv80.png', path: 'assets/filters/tv80'),
  ];

  // Getter Data
  static List<StoryEffect> get effects => _effects;
  static List<StoryEffect> get filters => _filters;
}
