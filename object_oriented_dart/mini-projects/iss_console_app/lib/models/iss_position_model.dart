
class IssPositionModel {
  String? longitude;
  String? latitude;

  IssPositionModel({this.longitude, this.latitude});

  IssPositionModel.fromJson(Map<String, dynamic> json) {
    longitude = json['longitude'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    return data;
  }
}