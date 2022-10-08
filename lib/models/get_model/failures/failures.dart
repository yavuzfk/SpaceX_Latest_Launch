class Failures {
  int? time;
  int? altitude;
  String? reason;

  Failures({this.time, this.altitude, this.reason});

  Failures.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    altitude = json['altitude'];
    reason = json['reason'];
  }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['time'] = this.time;
//   data['altitude'] = this.altitude;
//   data['reason'] = this.reason;
//   return data;
// }
}