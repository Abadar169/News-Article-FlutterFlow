import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String? convertToUpperCase(String? inputString) {
  // Convert strring to uppercase and return if not null
  if (inputString != null) {
    return inputString.toUpperCase();
  }
  return null;
}

String? formatTimeAgo(String isoDate) {
  DateTime date = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parseUtc(isoDate);
  String timeAgo = timeago.format(date, locale: 'en_short');
  return timeAgo.replaceAll(' ', '') + ' ago';
}
