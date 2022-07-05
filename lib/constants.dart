import 'package:flutter/material.dart';

/* *************************** COLORS *************************** */

const kPrimaryColor = Color(0xFF363636);
const kPrimaryLightColor = Color(0xFFD3D3D3);
const kSilver = Color(0xFFC0C0C0);
const kSecondColor = Color(0xFF6B8E23);
const kSeaGreen = Color(0xFF2E8B57);
const kspringGreen = Color(0xFF00FF7F);
const kSteelBlue = Color(0xFF4682B4);
const kLightSeaGreen = Color(0xFF20B2AA);
const kTeal = Color(0xFF008B8B);
const kDarkOrange = Color(0xFFFF8C00);
const kGold = Color(0xFFFFD700);
const kDarkGolden = Color(0xFFB8860B);
const kFireBrick = Color(0xFFB22222);

const kBackgroundFirst = Color(0xFFD3D3D3);
const kBackgroundSecond = Color(0xFFffffff);
const kBackgroundThird = Color(0xFF);

/* *************************** SHARED_PREFS_KEYS *************************** */

const String TOKEN = "token";
const String EMAIL_LOGGED = "email";
const String PLAYER_ID_LOGGED = "playerId";

/* *************************** API *************************** */

const String API_URL = "cmontennis-api.herokuapp.com";
const String API_LOCAL = "192.168.18.8:8080";
const String API_URL_UPLOADER = "https://" + API_URL + "/v1/uploader?imageUrl=";
const String CONTENT_TYPE_JSON = "application/json; charset=UTF-8";
const String CONTENT_TYPE_MULTIPART = "multipart/form-data";
const String EMAIL_APP = "cmontennisapp@gmail.com";