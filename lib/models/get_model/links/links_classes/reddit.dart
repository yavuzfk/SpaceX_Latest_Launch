class Reddit {
  String? campaign;
  String? launch;
  String? media;
  String? recovery;

  Reddit({this.campaign, this.launch, this.media, this.recovery});

  Reddit.fromJson(Map<String, dynamic> json) {
    campaign = json['campaign'];
    launch = json['launch'];
    media = json['media'];
    recovery = json['recovery'];
  }

// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['campaign'] = this.campaign;
//   data['launch'] = this.launch;
//   data['media'] = this.media;
//   data['recovery'] = this.recovery;
//   return data;
// }
}