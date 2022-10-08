class Fairings {
  bool? reused;
  bool? recoveryAttempt;
  bool? recovered;
  List<Null>? ships;

  Fairings({this.reused, this.recoveryAttempt, this.recovered, this.ships});

  Fairings.fromJson(Map<String, dynamic> json) {
    reused = json['reused'];
    recoveryAttempt = json['recovery_attempt'];
    recovered = json['recovered'];

    if (json['ships'] != null) {
      ships = List<dynamic>.from(json["ships"].map((x) => x)).cast<Null>();
    }
  }

// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['reused'] = this.reused;
//   data['recovery_attempt'] = this.recoveryAttempt;
//   data['recovered'] = this.recovered;
//   if (this.ships != null) {
//     data['ships'] = this.ships!.map((v) => v.toJson()).toList();
//   }
//   return data;
// }
}