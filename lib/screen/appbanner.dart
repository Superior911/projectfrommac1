import 'package:flutter/material.dart';

class AppBanner {
    final int id;
    final String title;
    final String thumbnailUrl;

    AppBanner(this.id, this.title, this.thumbnailUrl);
}

List<AppBanner> appBannerList = [
    AppBanner(1, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/05/16.Poster-%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B8%94%E0%B8%B9%E0%B8%87%E0%B8%B2%E0%B8%99MOU.jpg'),
    AppBanner(2, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/05/13.Poster-Keynote-Speaker.jpg'),
    AppBanner(3, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/05/9.Poster-%E0%B8%9B%E0%B8%90%E0%B8%A1%E0%B8%99%E0%B8%B4%E0%B9%80%E0%B8%97%E0%B8%A8%E0%B8%99%E0%B8%B1%E0%B8%81%E0%B8%A8%E0%B8%B6%E0%B8%81%E0%B8%A9%E0%B8%B2%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%A3%E0%B9%88%E0%B8%A7%E0%B8%A1%E0%B8%A1%E0%B8%B7%E0%B8%AD%E0%B8%81%E0%B8%B1%E0%B8%9A%E0%B8%AA%E0%B8%96%E0%B8%B2%E0%B8%9A%E0%B8%B1%E0%B8%99%E0%B8%88%E0%B8%B4%E0%B8%87%E0%B8%8B%E0%B8%B7%E0%B9%88%E0%B8%AD.jpg'),
    AppBanner(4, 'Title', 'https://www.teched.rmutt.ac.th/wp-content/uploads/2023/05/11.Poster-%E0%B8%AD%E0%B8%9A%E0%B8%A3%E0%B8%A1%E0%B9%81%E0%B8%82%E0%B8%99%E0%B8%81%E0%B8%A5.jpg'),



];