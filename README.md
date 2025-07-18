# sensor_if_viewer

## functions
- 設定機能
  - 受信ポート
  - 識別名称
  - 表示項目
- 受信機能
  - 受信したメッセージをパース
- 表示機能
  - マップ上に受信したメッセージから以下の情報を描画
    - センサ設置位置
    - 各種センサ情報
      - エラー情報
      - センサ種別
      - 検知可能種別
      - センサステータス
    - 検出オブジェクト
      - 位置
      - 速度
      - 角度
      - トラッキングステータス
    - 監視範囲

## Generate protobuf code
```
flutter pub global activate protoc_plugin
protoc --dart_out=./lib/message -I protobuf protobuf/cool4_sensor_interface_specification_v1.1.0.proto
```