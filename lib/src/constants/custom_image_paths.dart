class CustomImagePaths {
  CustomImagePaths._();

  static final Map<int, String> pathsToMoodSphereImages = Map.fromIterable(
    List.generate(7, (index) => index),
    key: (index) => index + 1,
    value: (index) => 'assets/mood_spheres/${index+1}.png'
  );
}