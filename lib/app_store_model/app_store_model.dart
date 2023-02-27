import 'package:json_annotation/json_annotation.dart';
part 'app_store_model.g.dart';

typedef JsonType = Map<String, dynamic>;

@JsonSerializable()
class AppStoreModel {
  AppStoreModel({
    this.resultCount,
    this.results,
  });

  final int? resultCount;
  final List<AppStoreResult>? results;

  factory AppStoreModel.fromJson(JsonType json) =>
      _$AppStoreModelFromJson(json);

  JsonType toJson() => _$AppStoreModelToJson(this);
}

@JsonSerializable()
class AppStoreResult {
  AppStoreResult({
    this.artistViewUrl,
    this.artworkUrl60,
    this.artworkUrl100,
    this.artworkUrl512,
    this.screenshotUrls,
    this.ipadScreenshotUrls,
    this.appletvScreenshotUrls,
    this.features,
    this.advisories,
    this.supportedDevices,
    this.isGameCenterEnabled,
    this.kind,
    this.averageUserRating,
    this.trackViewUrl,
    this.contentAdvisoryRating,
    this.trackCensoredName,
    this.releaseNotes,
    this.minimumOsVersion,
    this.languageCodesIso2A,
    this.fileSizeBytes,
    this.sellerUrl,
    this.formattedPrice,
    this.averageUserRatingForCurrentVersion,
    this.userRatingCountForCurrentVersion,
    this.trackContentRating,
    this.artistId,
    this.artistName,
    this.genres,
    this.price,
    this.description,
    this.releaseDate,
    this.primaryGenreName,
    this.primaryGenreId,
    this.bundleId,
    this.sellerName,
    this.trackId,
    this.trackName,
    this.isVppDeviceBasedLicensingEnabled,
    this.genreIds,
    this.currentVersionReleaseDate,
    this.currency,
    this.version,
    this.wrapperType,
    this.userRatingCount,
  });

  final String? artistViewUrl;
  final String? artworkUrl60;
  final String? artworkUrl100;
  final String? artworkUrl512;
  final List<String>? screenshotUrls;
  final List<String>? ipadScreenshotUrls;
  final List<dynamic>? appletvScreenshotUrls;
  final List<String>? features;
  final List<dynamic>? advisories;
  final List<String>? supportedDevices;
  final bool? isGameCenterEnabled;
  final String? kind;
  final int? averageUserRating;
  final String? trackViewUrl;
  final String? contentAdvisoryRating;
  final String? trackCensoredName;
  final String? releaseNotes;
  final String? minimumOsVersion;
  final List<String>? languageCodesIso2A;
  final String? fileSizeBytes;
  final String? sellerUrl;
  final String? formattedPrice;
  final int? averageUserRatingForCurrentVersion;
  final int? userRatingCountForCurrentVersion;
  final String? trackContentRating;
  final int? artistId;
  final String? artistName;
  final List<String>? genres;
  final double? price;
  final String? description;
  final DateTime? releaseDate;
  final String? primaryGenreName;
  final int? primaryGenreId;
  final String? bundleId;
  final String? sellerName;
  final int? trackId;
  final String? trackName;
  final bool? isVppDeviceBasedLicensingEnabled;
  final List<String>? genreIds;
  final DateTime? currentVersionReleaseDate;
  final String? currency;
  final String? version;
  final String? wrapperType;
  final int? userRatingCount;

  factory AppStoreResult.fromJson(JsonType json) =>
      _$AppStoreResultFromJson(json);

  JsonType toJson() => _$AppStoreResultToJson(this);
}
