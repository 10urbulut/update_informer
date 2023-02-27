// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppStoreModel _$AppStoreModelFromJson(Map<String, dynamic> json) =>
    AppStoreModel(
      resultCount: json['resultCount'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => AppStoreResult.fromJson(e))
          .toList(),
    );

Map<String, dynamic> _$AppStoreModelToJson(AppStoreModel instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };

AppStoreResult _$AppStoreResultFromJson(Map<String, dynamic> json) =>
    AppStoreResult(
      artistViewUrl: json['artistViewUrl'] as String?,
      artworkUrl60: json['artworkUrl60'] as String?,
      artworkUrl100: json['artworkUrl100'] as String?,
      artworkUrl512: json['artworkUrl512'] as String?,
      screenshotUrls: (json['screenshotUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ipadScreenshotUrls: (json['ipadScreenshotUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      appletvScreenshotUrls: json['appletvScreenshotUrls'] as List<dynamic>?,
      features: (json['features'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      advisories: json['advisories'] as List<dynamic>?,
      supportedDevices: (json['supportedDevices'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isGameCenterEnabled: json['isGameCenterEnabled'] as bool?,
      kind: json['kind'] as String?,
      averageUserRating: json['averageUserRating'] as int?,
      trackViewUrl: json['trackViewUrl'] as String?,
      contentAdvisoryRating: json['contentAdvisoryRating'] as String?,
      trackCensoredName: json['trackCensoredName'] as String?,
      releaseNotes: json['releaseNotes'] as String?,
      minimumOsVersion: json['minimumOsVersion'] as String?,
      languageCodesIso2A: (json['languageCodesIso2A'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fileSizeBytes: json['fileSizeBytes'] as String?,
      sellerUrl: json['sellerUrl'] as String?,
      formattedPrice: json['formattedPrice'] as String?,
      averageUserRatingForCurrentVersion:
          json['averageUserRatingForCurrentVersion'] as int?,
      userRatingCountForCurrentVersion:
          json['userRatingCountForCurrentVersion'] as int?,
      trackContentRating: json['trackContentRating'] as String?,
      artistId: json['artistId'] as int?,
      artistName: json['artistName'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      primaryGenreName: json['primaryGenreName'] as String?,
      primaryGenreId: json['primaryGenreId'] as int?,
      bundleId: json['bundleId'] as String?,
      sellerName: json['sellerName'] as String?,
      trackId: json['trackId'] as int?,
      trackName: json['trackName'] as String?,
      isVppDeviceBasedLicensingEnabled:
          json['isVppDeviceBasedLicensingEnabled'] as bool?,
      genreIds: (json['genreIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      currentVersionReleaseDate: json['currentVersionReleaseDate'] == null
          ? null
          : DateTime.parse(json['currentVersionReleaseDate'] as String),
      currency: json['currency'] as String?,
      version: json['version'] as String?,
      wrapperType: json['wrapperType'] as String?,
      userRatingCount: json['userRatingCount'] as int?,
    );

Map<String, dynamic> _$AppStoreResultToJson(AppStoreResult instance) =>
    <String, dynamic>{
      'artistViewUrl': instance.artistViewUrl,
      'artworkUrl60': instance.artworkUrl60,
      'artworkUrl100': instance.artworkUrl100,
      'artworkUrl512': instance.artworkUrl512,
      'screenshotUrls': instance.screenshotUrls,
      'ipadScreenshotUrls': instance.ipadScreenshotUrls,
      'appletvScreenshotUrls': instance.appletvScreenshotUrls,
      'features': instance.features,
      'advisories': instance.advisories,
      'supportedDevices': instance.supportedDevices,
      'isGameCenterEnabled': instance.isGameCenterEnabled,
      'kind': instance.kind,
      'averageUserRating': instance.averageUserRating,
      'trackViewUrl': instance.trackViewUrl,
      'contentAdvisoryRating': instance.contentAdvisoryRating,
      'trackCensoredName': instance.trackCensoredName,
      'releaseNotes': instance.releaseNotes,
      'minimumOsVersion': instance.minimumOsVersion,
      'languageCodesIso2A': instance.languageCodesIso2A,
      'fileSizeBytes': instance.fileSizeBytes,
      'sellerUrl': instance.sellerUrl,
      'formattedPrice': instance.formattedPrice,
      'averageUserRatingForCurrentVersion':
          instance.averageUserRatingForCurrentVersion,
      'userRatingCountForCurrentVersion':
          instance.userRatingCountForCurrentVersion,
      'trackContentRating': instance.trackContentRating,
      'artistId': instance.artistId,
      'artistName': instance.artistName,
      'genres': instance.genres,
      'price': instance.price,
      'description': instance.description,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'primaryGenreName': instance.primaryGenreName,
      'primaryGenreId': instance.primaryGenreId,
      'bundleId': instance.bundleId,
      'sellerName': instance.sellerName,
      'trackId': instance.trackId,
      'trackName': instance.trackName,
      'isVppDeviceBasedLicensingEnabled':
          instance.isVppDeviceBasedLicensingEnabled,
      'genreIds': instance.genreIds,
      'currentVersionReleaseDate':
          instance.currentVersionReleaseDate?.toIso8601String(),
      'currency': instance.currency,
      'version': instance.version,
      'wrapperType': instance.wrapperType,
      'userRatingCount': instance.userRatingCount,
    };
