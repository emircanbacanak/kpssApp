import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssAnayasaHukuku/KpssAnayasaHukukuPage.dart';
import '../screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssCezaHukuku/KpssCezaHukukuPage.dart';
import '../screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssEkonomiPage/KpssEkonomiPage.dart';
import '../screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssIdareHukuku/KpssIdareHukuku.dart';
import '../screens/GuncelKonularScreens/kpssAlanBilgisiSayfalar/kpssMedeniHukuk/KpssMedeniHukukPage.dart';
import '../screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssCebir/KpssCebirPage.dart';
import '../screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssFonksiyonlar/KpssFonksiyonlarPage.dart';
import '../screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssGeometri/KpssGeometriPage.dart';
import '../screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssProblemler/KpssProblemlerPage.dart';
import '../screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssSayilar/KpssSayilarPage.dart';
import '../screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssTemelKavramlar/KpssTemelKavramlarPage.dart';
import '../screens/GuncelKonularScreens/kpssMatematikSayfalar/kpssTemelKavramlar/temelKavramlarPages/KpssTamSayilarPage.dart';
import '../screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssCumleBilgisi/KpssCumleBilgisiPage.dart';
import '../screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssDilBilgisi/KpssDilBilgisiPage.dart';
import '../screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssEdebiTerimler/KpssEdebiTerimlerPage.dart';
import '../screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssOkumaAnlama/KpssOkumaAnlamaPage.dart';
import '../screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssParagraf/KpssParagrafPage.dart';
import '../screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssSozSanatları/KpssSozSanatlariPage.dart';
import '../screens/GuncelKonularScreens/kpssTurkceSayfalar/kpssYazimKurallari/KpssYazimKurallariPage.dart';

class FavoriteTopics {
  static const String _favoritesKey = 'favorite_topics';
  static List<Map<String, dynamic>> _favorites = [];

  // Getter: Favori konuları döndür
  static List<Map<String, dynamic>> get favorites => _favorites;

  /// Favorileri cihaz hafızasından yükle
  static Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final String? favoritesString = prefs.getString(_favoritesKey);
    if (favoritesString != null) {
      final List<dynamic> favoritesJson = jsonDecode(favoritesString);
      _favorites = favoritesJson.cast<Map<String, dynamic>>();
    }
  }

  /// Favorileri cihaz hafızasına kaydet
  static Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final String favoritesString = jsonEncode(_favorites);
    await prefs.setString(_favoritesKey, favoritesString);
  }

  /// Bir konuyu favorilere ekleme veya çıkarma
  static Future<void> toggleFavorite(Map<String, dynamic> topic) async {
    final String title = topic['title'];
    if (_favorites.any((fav) => fav['title'] == title)) {
      _favorites.removeWhere((fav) => fav['title'] == title);
    } else {
      _favorites.add(topic);
    }
    await saveFavorites();
  }

  /// Konunun favori olup olmadığını kontrol et
  static bool isFavorite(String title) {
    return _favorites.any((topic) => topic['title'] == title);
  }

  /// `pageName` değerine göre ilgili widget'ı döndür
  static Widget getPageWidget(String pageName) {
    switch (pageName) {
      // Türkçe sayfalar
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

      // Matematik sayfaları
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

      // Alan bilgisi sayfaları
      case 'KpssAnayasaHukukuPage':
        return const KpssAnayasaHukukuPage();
      case 'KpssIdareHukukuPage':
        return KpssIdareHukukuPage();
      case 'KpssCezaHukukuPage':
        return KpssCezaHukukuPage();
      case 'KpssMedeniHukukPage':
        return KpssMedeniHukukPage();
      case 'EkonomiPage':
        return EkonomiPage();

      // Sayfa bulunamadığında
      default:
        return const Scaffold(
          body: Center(
            child: Text('Sayfa bulunamadı', style: TextStyle(fontSize: 16)),
          ),
        );
    }
  }
}