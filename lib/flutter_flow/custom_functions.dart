import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/custom_auth/auth_util.dart';

double ratingSummary(
  double totalRatings,
  double rating,
) {
  // get average rating to one decimal point from list of reviews
  if (totalRatings > 0) {
    return (rating +
            (totalRatings - rating) ~/ math.max((totalRatings ~/ 5), 1)) /
        2;
  } else {
    return rating;
  }
}

String ratingSummaryList(List<ReviewsRecord> rating) {
  if (rating.isEmpty) {
    return '-';
  }
  var ratingsSum = 0.0;
  for (final comment in rating) {
    ratingsSum += comment.rating!;
  }
  return (ratingsSum / rating.length).toStringAsFixed(1);
}

double calculPrice(List<CartItemsRecord>? cartItems) {
  double totalPrice = 0.0;
  if (cartItems != null) {
    for (var item in cartItems) {
      double price = item.price;
      int quantity = item.quantite;
      totalPrice += price * quantity;
    }
  }

  return totalPrice;
}

String? arrayToString(List<String>? liste) {
  return liste?.join(', ');
}

String getInitial(String username) {
// Divise le nom en une liste de mots
  List<String> mots = username.split(' ');

  // Initialise une variable pour stocker les initiales
  String initiales = '';

  // Parcours chaque mot pour récupérer la première lettre
  for (var mot in mots) {
    // Ajoute la première lettre du mot à la variable initiales
    initiales += mot[0];

    // Sort de la boucle si on a déjà deux initiales
    if (initiales.length == 2) {
      break;
    }
  }

  // Renvoie les initiales en majuscules
  return initiales.toUpperCase();
}

bool inFavoritesList(
  List<dynamic> productList,
  dynamic newProduct,
) {
  if (productList.isEmpty) {
    // Si la liste est vide, il n'y a aucun produit pour comparaison,
    // donc on peut considérer qu'ils sont du même magasin.
    return false;
  }

  // Compare l'ID du magasin du nouveau produit avec celui du premier produit
  return productList.any((product) => product['id'] == newProduct['id']);
}

List<LatLng> getLatLngList(
  List<String> lngList,
  List<String> latList,
) {
  if (lngList.length != latList.length) {
    throw Exception(
        'Les listes de longitudes et de latitudes doivent avoir la même longueur');
  }

  List<LatLng> latLngList = [];
  for (int i = 0; i < lngList.length; i++) {
    latLngList.add(LatLng(double.parse(latList[i]), double.parse(lngList[i])));
  }
  return latLngList;
}

LatLng parseGeoData(
  String long,
  String lat,
) {
  return LatLng(double.parse(long), double.parse(lat));
}

String phoneFormatter(String phoneNumber) {
// Supprimer les espaces
  String numeroSansEspace = phoneNumber.replaceAll(' ', '');

  // Supprimer le signe '+'
  String numeroSansPlus = numeroSansEspace.replaceAll('+', '');

  return numeroSansPlus;
}

bool verifiedPhone(String phoneNumber) {
  return phoneNumber.length >= 9 && phoneNumber.length < 12;
}

bool isSameStrore(
  List<dynamic> productList,
  dynamic product,
) {
  if (productList.isEmpty) {
    // Si la liste est vide, il n'y a aucun produit pour comparaison,
    // donc on peut considérer qu'ils sont du même magasin.
    return true;
  }

  String storeId = productList.first['store_id'].toString();
  String newProductStoreId = product['store_id'].toString();

  // Compare l'ID du magasin du nouveau produit avec celui du premier produit
  return newProductStoreId == storeId;
}

double toDouble(String? amount) {
  return double.parse(amount ?? "0");
}
