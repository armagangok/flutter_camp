import 'iss_position_model.dart';

class LocationModel {
  String? message;
  IssPosition? issPosition;
  int? timestamp;

  LocationModel({this.message, this.issPosition, this.timestamp});

  LocationModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    issPosition = json['iss_position'] != null
        ? IssPosition.fromJson(json['iss_position'])
        : null;
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (issPosition != null) {
      data['iss_position'] = issPosition!.toJson();
    }
    data['timestamp'] = timestamp;
    return data;
  }
}
