class Flickr {
  List<Null>? small;
  List<Null>? original;

  Flickr({this.small, this.original});

  Flickr.fromJson(Map<String, dynamic> json) {
    if (json['small'] != null) {
      small = List<dynamic>.from(json["small"].map((x) => x)).cast<Null>() ;
    }
    if (json['original'] != null) {
      original =  List<dynamic>.from(json["original"].map((x) => x)).cast<Null>();
    }
  }

// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   if (this.small != null) {
//     data['small'] = this.small!.map((v) => v.toJson()).toList();
//   }
//   if (this.original != null) {
//     data['original'] = this.original!.map((v) => v.toJson()).toList();
//   }
//   return data;
// }
}
