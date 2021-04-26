import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:html/parser.dart';
import 'money_formater/flutter_money_formatter.dart';

/// createdby Daewu Bintara
/// Monday, 3/15/21

class Utilities {

  static String parseHtmlString(String htmlString) {
    final document = parse(htmlString);
    final String parsedString = parse(document.body.text).documentElement.text;

    return parsedString;
  }

  static void callPhoneNumber({String phone = "0"}) async {
    launch("tel://${phone}");
  }

  static void sendEmail({String email = "daewu1996@gmail.com"}) async {
    launch("mailto:${email}");
  }

  static void intentOpenUrl({String link = "https://google.com"}) async {
    final url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  static String rupiahFormater(String value) {
    if (value == null || value == 'null') {
      value = "0";
    }

    double amount = double.parse(value);
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: amount);
    String c = fmf.output.nonSymbol.toString().replaceAll(".00", "");
    String fix = "Rp " + c.replaceAll(",", ".");
    return fix;
  }

  static String moneyFormater(String value) {
    if (value == null || value == 'null') {
      value = "0";
    }

    double amount = double.parse(value);
    FlutterMoneyFormatter fmf = FlutterMoneyFormatter(amount: amount);
    String c = fmf.output.nonSymbol.toString().replaceAll(".00", "");
    String fix = "" + c.replaceAll(",", ".");
    return fix;
  }

  static String formattedDate({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = DateTime.parse(date);
    dateTime = dateTime.toLocal();

    String formattedDate = DateFormat('dd MMMM yyyy').format(dateTime);
    return formattedDate;
  }

  static String formattedDateManual({String resultFormat = 'dd MMMM yyyy', String date}) {
    if (date == 'null') {
      return "";
    }

    DateTime dateTime = DateTime.parse(date);

    dateTime = dateTime.toLocal();
    // dateTime = dateTime.toUtc();

    String formattedDate = DateFormat(resultFormat).format(dateTime);
    return formattedDate;
  }

  static String formattedDateGetDay({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(date);
    dateTime = dateTime.toLocal();

    String formattedDate = DateFormat('EEEE').format(dateTime);
    switch(formattedDate){
      case "Monday":
        formattedDate = "Senin";
        break;
      case "Tuesday":
        formattedDate = "Selasa";
        break;
      case "Wednesday":
        formattedDate = "Rabu";
        break;
      case "Thursday":
        formattedDate = "Kamis";
        break;
      case "Friday":
        formattedDate = "Jum'at";
        break;
      case "Saturday":
        formattedDate = "Sabtu";
        break;
      case "Sunday":
        formattedDate = "Minggu";
        break;
    }

    return formattedDate;
  }

  static String formattedDateGetMonth({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(date);
    dateTime = dateTime.toLocal();

    String formattedDate = DateFormat('MMMM').format(dateTime);
    switch(formattedDate){
      case "January":
        formattedDate = "Januari";
        break;
      case "February":
        formattedDate = "Februari";
        break;
      case "March":
        formattedDate = "Maret";
        break;
      case "April":
        formattedDate = "April";
        break;
      case "May":
        formattedDate = "Mei";
        break;
      case "June":
        formattedDate = "Juni";
        break;
      case "July":
        formattedDate = "Juli";
        break;
      case "August":
        formattedDate = "Agustus";
        break;
      case "September":
        formattedDate = "September";
        break;
      case "October":
        formattedDate = "Oktober";
        break;
      case "November":
        formattedDate = "November";
        break;
      case "December":
        formattedDate = "Desember";
        break;
    }

    return formattedDate;
  }

  static String formattedSimpleDate({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(date);
    dateTime = dateTime.toLocal();

    String formattedDate = DateFormat('dd MMM yyyy').format(dateTime);
    return formattedDate;
  }

  static String formattedSuperSimpleDate({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(date);
    dateTime = dateTime.toLocal();

    String formattedDate = DateFormat('dd MMM').format(dateTime);
    return formattedDate;
  }

  static String formattedDateTimeWithDay({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(date);
    dateTime = dateTime.toLocal();

    String day = formattedDateGetDay(format: format, date: date);

    String formattedDate = DateFormat('dd MMMM yyyy HH:mm').format(dateTime);
    return '${day}, ${formattedDate}';
  }

  static String formattedDateTime({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(date);
    dateTime = dateTime.toLocal();

    String formattedDate = DateFormat('dd MMMM yyyy HH:mm').format(dateTime);
    return formattedDate;
  }

  static String formattedTime({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(date);
    dateTime = dateTime.toLocal();

    String formattedDate = DateFormat('HH:mm').format(dateTime);
    return formattedDate;
  }

  static String formattedSimpleDateTime({String format, String date}) {
    if (date == 'null') {
      return "";
    }

    DateFormat dateFormat = DateFormat(format);
    DateTime dateTime = dateFormat.parse(date);
    dateTime = dateTime.toLocal();

    String formattedDate = DateFormat('dd MMM yyyy HH:mm').format(dateTime);
    return formattedDate;
  }


  static String stringCardFormated({String value = "", int splitOn = 3, String modelSplit = " "}) {
    String newValue  = "Error Formating";
    if(value.length < splitOn) {
      newValue = value;
    } else {
      int startIndex = 0;
      int endIndex = splitOn;
      newValue = _formating(startIndex, endIndex, value, "", splitOn, modelSplit);
    }
    return newValue;
  }

  static String _formating(int startIndex, int endIndex, String value, String temp, int splitOn, String modelSplit) {
    if(startIndex == 0 && endIndex >= value.length) {
      temp = value.substring(startIndex, endIndex);
      return temp;
    }
    if(startIndex == 0 && endIndex < value.length) {
      temp = value.substring(startIndex, endIndex);
      startIndex += splitOn;
      endIndex += splitOn;
      return _formating(startIndex, endIndex, value, temp, splitOn, modelSplit);
    }
    if(startIndex < value.length && endIndex < value.length) {
      temp += "$modelSplit"+value.substring(startIndex, endIndex);
      startIndex += splitOn;
      endIndex += splitOn;
      return _formating(startIndex, endIndex, value, temp, splitOn, modelSplit);
    } else {
      temp += "$modelSplit"+value.substring(startIndex, value.length);
      return temp;
    }
  }

  static Color colorConvert(String color) {
    color = color.replaceAll("#", "");
    if (color.length == 6) {
      return Color(int.parse("0xFF"+color));
    } else if (color.length == 8) {
      return Color(int.parse("0x"+color));
    }
  }

  static String stringSliptedConvertToSentence(String string, String splitter) {
    string = string.replaceAll("$splitter", " ");
    string = string.capitalizeFirstofEach;
  }

}

extension CapExtension on String {
  String get inCaps => '${this[0].toUpperCase()}${this.substring(1)}';
  String get allInCaps => this.toUpperCase();
  String get capitalizeFirstofEach => this.split(" ").map((str) => str.capitalize).join(" ");
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}