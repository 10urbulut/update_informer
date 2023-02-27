library update_informer;

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:update_informer/src/app_store_model/app_store_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_redirect/store_redirect.dart';

part 'src/api_service.dart';
part 'src/update_informer.dart';
part 'src/update_informer_manager.dart';

typedef JsonType = Map<String, dynamic>;
