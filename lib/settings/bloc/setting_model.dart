class SettingItem {
  final int port;
  final String name;
  final bool showSensor;
  final bool showObject;

  SettingItem({
    required this.port,
    required this.name,
    this.showSensor = false,
    this.showObject = false
  });


  SettingItem copyWith({
    int? port,
    String? name,
    bool? showSensor,
    bool? showObject,
  }) {
    return SettingItem(
      port: port ?? this.port,
      name: name ?? this.name,
      showSensor: showSensor ?? this.showSensor,
      showObject: showObject ?? this.showObject
    );
  }
}