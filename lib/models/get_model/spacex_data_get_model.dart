

import 'package:spacex_latest_launch/models/get_model/cores/cores.dart';
import 'package:spacex_latest_launch/models/get_model/failures/failures.dart';
import 'package:spacex_latest_launch/models/get_model/fairings/fairings.dart';
import 'package:spacex_latest_launch/models/get_model/links/links.dart';

class SpaceXDataGetModel {
  Fairings? fairings;
  Links? links;
  String? staticFireDateUtc;
  int? staticFireDateUnix;
  bool? net;
  int? window;
  String? rocket;
  bool? success;
  List<Failures>? failures;
  String? details;
  List<Null>? crew;
  List<String>? ships;
  List<String>? capsules;
  List<String>? payloads;
  String? launchpad;
  int? flightNumber;
  String? name;
  String? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  bool? autoUpdate;
  bool? tbd;
  String? launchLibraryId;
  String? id;

  static var empty;

  SpaceXDataGetModel(
      {this.fairings,
        this.links,
        this.staticFireDateUtc,
        this.staticFireDateUnix,
        this.net,
        this.window,
        this.rocket,
        this.success,
        this.failures,
        this.details,
        this.crew,
        this.ships,
        this.capsules,
        this.payloads,
        this.launchpad,
        this.flightNumber,
        this.name,
        this.dateUtc,
        this.dateUnix,
        this.dateLocal,
        this.datePrecision,
        this.upcoming,
        this.cores,
        this.autoUpdate,
        this.tbd,
        this.launchLibraryId,
        this.id});

  SpaceXDataGetModel.fromJson(Map<String, dynamic> json) {
    fairings = json['fairings'] != null
        ?  Fairings.fromJson(json['fairings'])
        : null;
    links = json['links'] != null ?  Links.fromJson(json['links']) : null;
    staticFireDateUtc = json['static_fire_date_utc'];
    staticFireDateUnix = json['static_fire_date_unix'];
    net = json['net'];
    window = json['window'];
    rocket = json['rocket'];
    success = json['success'];
    if (json['failures'] != null) {
      failures = <Failures>[];
      json['failures'].forEach((v) {
        failures!.add(Failures.fromJson(v));
      });
    }
    details = json['details'];

    if (json['crew'] != null) {
      crew = List<dynamic>.from(json["crew"].map((x) => x)).cast<Null>();
    }

    if (json['ships'] != null) {
      ships = List<dynamic>.from(json["ships"].map((x) => x)).cast<String>();
    }
    if (json['capsules'] != null) {
      capsules =  List<dynamic>.from(json["capsules"].map((x) => x)).cast<String>();
    }
    payloads = json['payloads'].cast<String>();
    launchpad = json['launchpad'];
    flightNumber = json['flight_number'];
    name = json['name'];
    dateUtc = json['date_utc'];
    dateUnix = json['date_unix'];
    dateLocal = json['date_local'];
    datePrecision = json['date_precision'];
    upcoming = json['upcoming'];

    if (json['cores'] != null) {
      cores = <Cores>[];
      json['cores'].forEach((v) {
        cores!.add(Cores.fromJson(v));
      });
    }
    autoUpdate = json['auto_update'];
    tbd = json['tbd'];
    launchLibraryId = json['launch_library_id'];
    id = json['id'];
  }

}