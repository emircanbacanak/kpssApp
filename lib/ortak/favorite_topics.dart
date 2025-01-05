import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssAnayasaHukuku/KpssAnayasaHukukuPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssCezaHukuku/KpssCezaHukukuPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssEkonomiPage/KpssEkonomiPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssIdareHukuku/KpssIdareHukuku.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssMedeniHukuk/KpssMedeniHukukPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssCebir/KpssCebirPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssFonksiyonlar/KpssFonksiyonlarPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssGeometri/KpssGeometriPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssProblemler/KpssProblemlerPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssSayilar/KpssSayilarPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssTemelKavramlar/KpssTemelKavramlarPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssTemelKavramlar/temelKavramlarPages/KpssTamSayilarPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssCumleBilgisi/KpssCumleBilgisiPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssDilBilgisi/KpssDilBilgisiPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssEdebiTerimler/KpssEdebiTerimlerPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssOkumaAnlama/KpssOkumaAnlamaPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssParagraf/KpssParagrafPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssSozSanatlar%C4%B1/KpssSozSanatlariPage.dart';
import 'package:kpssapp/screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssYazimKurallari/KpssYazimKurallariPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteTopics {
  static const String _favoritesKey = 'favorite_topics';
  static List<Map<String, dynamic>> _favorites = [];
  static List<Map<String, dynamic>> get favorites => _favorites;

  static Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final String? favoritesString = prefs.getString(_favoritesKey);
    if (favoritesString != null) {
      final List<dynamic> favoritesJson = jsonDecode(favoritesString);
      _favorites = favoritesJson.cast<Map<String, dynamic>>();
    }
  }

  static Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final String favoritesString = jsonEncode(_favorites);
    await prefs.setString(_favoritesKey, favoritesString);
  }

  static Future<void> toggleFavorite(Map<String, dynamic> topic) async {
    final String title = topic['title'];
    if (_favorites.any((fav) => fav['title'] == title)) {
      _favorites.removeWhere((fav) => fav['title'] == title);
    } else {
      _favorites.add(topic);
    }
    await saveFavorites();
  }

  static bool isFavorite(String title) {
    return _favorites.any((topic) => topic['title'] == title);
  }

  static Widget getPageWidget(String pageName) {
    switch (pageName) {
      case 'KpssDilBilgisiPage':
        return const KpssDilBilgisiPage();
      case 'KpssParagrafPage':
        return const KpssParagrafPage();
      case 'KpssSozSanatlariPage':
        return const KpssSozSanatlariPage();
      case 'KpssEdebiTerimlerPage':
        return const KpssEdebiTerimlerPage();
      case 'KpssOkumaAnlamaPage':
        return const KpssOkumaAnlamaPage();
      case 'KpssYazimKurallariPage':
        return const KpssYazimKurallariPage();
      case 'KpssCumleBilgisiPage':
        return const KpssCumleBilgisiPage();

      case 'KpssSayilarPage':
        return const KpssSayilarPage();
      case 'KpssTemelKavramlarPage':
        return const KpssTemelKavramlarPage();
      case 'KpssCebirPage':
        return const KpssCebirPage();
      case 'KpssFonksiyonlarPage':
        return const KpssFonksiyonlarPage();
      case 'KpssGeometriPage':
        return const KpssGeometriPage();
      case 'KpssProblemlerPage':
        return const KpssProblemlerPage();
      case 'KpssTamSayilarPage':
        return const KpssTamSayilarPage();

      case 'KpssAnayasaHukukuPage':
        return const KpssAnayasaHukukuPage();
      case 'KpssIdareHukukuPage':
        return const KpssIdareHukukuPage();
      case 'KpssCezaHukukuPage':
        return const KpssCezaHukukuPage();
      case 'KpssMedeniHukukPage':
        return const KpssMedeniHukukPage();
      case 'EkonomiPage':
        return const EkonomiPage();

      default:
        return const Scaffold(
          body: Center(
            child: Text('Sayfa bulunamadı', style: TextStyle(fontSize: 16)),
          ),
        );
    }
  }
}
