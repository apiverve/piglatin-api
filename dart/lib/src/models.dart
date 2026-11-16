/// Response models for the Pig Latin API.

/// API Response wrapper.
class PiglatinResponse {
  final String status;
  final dynamic error;
  final PiglatinData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PiglatinResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PiglatinResponse.fromJson(Map<String, dynamic> json) => PiglatinResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PiglatinData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Pig Latin API.

class PiglatinData {
  String? text;
  List<String>? exclusions;

  PiglatinData({
    this.text,
    this.exclusions,
  });

  factory PiglatinData.fromJson(Map<String, dynamic> json) => PiglatinData(
      text: json['text'],
      exclusions: (json['exclusions'] as List?)?.cast<String>(),
    );
}

class PiglatinRequest {
  String text;
  List<String>? exclusions;

  PiglatinRequest({
    required this.text,
    this.exclusions,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (exclusions != null) 'exclusions': exclusions,
    };
}
