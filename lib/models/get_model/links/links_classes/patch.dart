class Patch {
  String? small;
  String? large;

  Patch({this.small, this.large});

  Patch.fromJson(Map<String, dynamic> json) {
    small = json['small'];
    large = json['large'];
  }

// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data =  <String, dynamic>{};
//   data['small'] = small;
//   data['large'] = large;
//   return data;
// }
}