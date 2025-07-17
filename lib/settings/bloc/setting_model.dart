class SettingItem {
  final int port;
  final bool showSensor;
  final bool showObject;

  SettingItem({
    required this.port,
    this.showSensor = true,
    this.showObject = true
  });


  SettingItem copyWith({
    int? port,
    bool? showSensor,
    bool? showObject,
  }) {
    return SettingItem(
      port: port ?? this.port,
      showSensor: showSensor ?? this.showSensor,
      showObject: showObject ?? this.showObject
    );
  }
}