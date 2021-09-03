class CustomImagePaths {
  CustomImagePaths._();

  static final String pathToEmptySphereImage = 'assets/images/other/empty_sphere.png';

  static final Map<int, String> pathsToMoodSphereImages = Map.fromIterable(
    List.generate(7, (index) => index),
    key: (index) => index + 1,
    value: (index) => 'assets/images/common/mood_spheres/${index+1}.png'
  );
}