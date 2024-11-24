// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

 class Dummydb{
   static List bottomsheetcontainers=[
    {
      "icondata":Icons.margin_outlined,
      "text":"Manage apps and device"
    },
    {
      "icondata":Icons.notifications_outlined,
      "text":"Notifications and offers"
    },
    {
      "icondata":Icons.add_card_outlined,
      "text":"Payments and subscription"
    },
    {
      "icondata":Icons.shield_outlined,
      "text":"Play protect"
    },
    {
      "icondata":Icons.folder_outlined,
      "text":"Library"
    },
    {
      "icondata":Icons.local_play_outlined,
      "text":"Play pass"
    },
  
  ];
  static List bottomsheetcontainers2=[
   {
      "icondata":Icons.shield_outlined,
      "text":"Personalisation"
    },
    {
      "icondata":Icons.settings_outlined,
      "text":"Settings"
    },
    {
      "icondata":Icons.help_outline,
      "text":"Help and feedback"
    },
  ];
  static List<Map<String, String>> appName = [
  {
    "name": "Swiggy: Food Instamart Dineout",
    "desc": "Food and drinks",
    "devname": "Swiggy",
    "ratings": "4.3",
    "reviewNo": "26K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "26L+",
    "size": "43MB",
    "imageurl": "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_800,h_800/portal/m/logo_192x192.png"
  },
  {
    "name": "Zomato: Food Delivery",
    "desc": "Order food from local restaurants",
    "devname": "Zomato Ltd.",
    "ratings": "4.2",
    "reviewNo": "30K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "50L+",
    "size": "45MB",
    "imageurl": "https://upload.wikimedia.org/wikipedia/commons/7/75/Zomato_logo.png"
  },
  {
    "name": "Uber Eats: Food Delivery",
    "desc": "Fast and reliable food delivery",
    "devname": "Uber Technologies, Inc.",
    "ratings": "4.1",
    "reviewNo": "20K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "40L+",
    "size": "50MB",
    "imageurl": "https://cdn.prod.website-files.com/60414b21f1ffcdbb0d5ad688/63cecf750aa7463091b17adf_5310366-uber-eats-logo-png-and-vector-logo-download-uber-eats-png-3500_3500_preview.png"
  },
  {
    "name": "Domino's Pizza: Order Online",
    "desc": "Order your favorite pizzas",
    "devname": "Domino's Pizza, Inc.",
    "ratings": "4.0",
    "reviewNo": "15K reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "10L+",
    "size": "38MB",
    "imageurl": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6PrgQpnSP7eTrEroSncI3Joi1FN1hnMmXGw&s"
  },
  {
    "name": "Amazon: Shop Online",
    "desc": "Buy products from millions of items",
    "devname": "Amazon Mobile LLC",
    "ratings": "4.5",
    "reviewNo": "50K reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "100L+",
    "size": "60MB",
    "imageurl": "https://play-lh.googleusercontent.com/urVIq3KHpF9hAm7FJpE2I4YlGfqMFpUdb5GMtQcASC1ODbWe1zuQFrF99ZPTELfE8wA"
  },
  {
    "name": "Flipkart: Online Shopping",
    "desc": "Shop the latest gadgets and more",
    "devname": "Flipkart",
    "ratings": "4.4",
    "reviewNo": "35K reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "80L+",
    "size": "55MB",
    "imageurl": "https://play-lh.googleusercontent.com/q8hxnbpJCYfHipSOG_5tZe5jK_89T6QIsqrEklvGpMFKH8b98pDHJf2tPcn2bxEN96ON=s48-rw"
  },
  {
    "name": "Paytm: Payments & Shopping",
    "desc": "Secure payments and easy shopping",
    "devname": "Paytm",
    "ratings": "4.3",
    "reviewNo": "25K reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "60L+",
    "size": "48MB",
    "imageurl": "https://play-lh.googleusercontent.com/2tH3ybpe3Tb5y2vamr4s0IJ-ffW83ouOFl4qDeZ8qvKdil5OjMN5_kiQviniaIBz420=s48-rw"
  },
  {
    "name": "Google Maps: Navigation",
    "desc": "Navigate with ease",
    "devname": "Google LLC",
    "ratings": "4.7",
    "reviewNo": "100K reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "200L+",
    "size": "70MB",
    "imageurl": "https://play-lh.googleusercontent.com/Kf8WTct65hFJxBUDm5E-EpYsiDoLQiGGbnuyP6HBNax43YShXti9THPon1YKB6zPYpA=w240-h480-rw"
  },
  {
    "name": "Facebook: Connect with Friends",
    "desc": "Stay connected with your friends",
    "devname": "Meta Platforms, Inc.",
    "ratings": "4.1",
    "reviewNo": "90K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "200L+",
    "size": "65MB",
    "imageurl": "https://play-lh.googleusercontent.com/KCMTYuiTrKom4Vyf0G4foetVOwhKWzNbHWumV73IXexAIy5TTgZipL52WTt8ICL-oIo=s48-rw"
  },
  {
    "name": "Instagram: Photo & Video Sharing",
    "desc": "Share your moments",
    "devname": "Meta Platforms, Inc.",
    "ratings": "4.5",
    "reviewNo": "85K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "150L+",
    "size": "55MB",
    "imageurl": "https://play-lh.googleusercontent.com/VRMWkE5p3CkWhJs6nv-9ZsLAs1QOg5ob1_3qg-rckwYW7yp1fMrYZqnEFpk0IoVP4LM=s48-rw"
  },
  {
    "name": "X",
    "desc": "Join the conversation",
    "devname": "X Corp.",
    "ratings": "4.0",
    "reviewNo": "12K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "30L+",
    "size": "35MB",
    "imageurl": "https://play-lh.googleusercontent.com/YvIeFtcOu07BNT4gVRmcS9Lq82Tp7Fs2gnFY65T9KGFJDFDx8US7JRSerAoBkG0fDA=w240-h480-rw"
  },
  {
    "name": "WhatsApp: Messaging & Calling",
    "desc": "Secure messaging and calls",
    "devname": "Meta Platforms, Inc.",
    "ratings": "4.6",
    "reviewNo": "130K reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "300L+",
    "size": "45MB",
    "imageurl": "https://play-lh.googleusercontent.com/bYtqbOcTYOlgc6gqZ2rwb8lptHuwlNE75zYJu6Bn076-hTmvd96HH-6v7S0YUAAJXoJN=w240-h480-rw"
  },
  {
    "name": "Spotify: Music Streaming",
    "desc": "Stream your favorite music",
    "devname": "Spotify AB",
    "ratings": "4.4",
    "reviewNo": "75K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "50L+",
    "size": "80MB",
    "imageurl": "https://play-lh.googleusercontent.com/7ynvVIRdhJNAngCg_GI7i8TtH8BqkJYmffeUHsG-mJOdzt1XLvGmbsKuc5Q1SInBjDKN=w240-h480-rw"
  },
  {
    "name": "Netflix: Movies & TV Shows",
    "desc": "Watch unlimited movies and shows",
    "devname": "Netflix, Inc.",
    "ratings": "4.5",
    "reviewNo": "60K reviews",
    "ageRating": "Rated for 16+",
    "DownloadNo": "70L+",
    "size": "90MB",
    "imageurl": "https://play-lh.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI=w240-h480-rw"
  },
  {
    "name": "YouTube: Video Sharing",
    "desc": "Watch and share videos",
    "devname": "Google LLC",
    "ratings": "4.7",
    "reviewNo": "200K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "500L+",
    "size": "60MB",
    "imageurl": "https://play-lh.googleusercontent.com/6am0i3walYwNLc08QOOhRJttQENNGkhlKajXSERf3JnPVRQczIyxw2w3DxeMRTOSdsY=s48-rw"
  },
];



  static List<Map<String, String>> gameName = [
  {
    "name": "Efootball",
    "desc": "Sports",
    "devname": "Konami",
    "reviewNo": "200K reviews",
    "ratings": "4.3",
    "ageRating": "Rated for 12+",
    "DownloadNo": "500L+",
    "size": "1.5 GB",
    "price": "₹150",
    "imageurl": "https://play-lh.googleusercontent.com/wY8oHL1inV4rqShlIVDuQkTiM0a97aY37rkS45wz7kKr_7F1zc4dchMHHjF44bBmpIE=s48-rw"
  },
  {
    "name": "Call of Duty: Mobile",
    "desc": "Action",
    "devname": "Activision",
    "reviewNo": "300K reviews",
    "ratings": "4.5",
    "ageRating": "Rated for 16+",
    "DownloadNo": "750L+",
    "size": "2.0 GB",
    "price": "₹199",
    "imageurl": "https://play-lh.googleusercontent.com/dD68NPyT8VBow8rPOkg52ariyuGDTlnUYDOmru_ECcBGwpPlm2Whepi550Q04sJ7Sg=s48-rw"
  },
  {
    "name": "Battlegrounds Mobile India",
    "desc": "Battle Royale",
    "devname": "Krafton",
    "reviewNo": "1M reviews",
    "ratings": "4.4",
    "ageRating": "Rated for 16+",
    "DownloadNo": "1B+",
    "size": "1.8 GB",
    "price": "₹349",
    "imageurl": "https://play-lh.googleusercontent.com/vAIzxVSf9PHA_gf-RrwxP-eyjh0DV1EMYhdzRcme7KBBsXknQLic10I_KT2DzibtKPc=s48-rw"
  },
  {
    "name": "FreeFire Max",
    "desc": "Battle Royale",
    "devname": "Garena",
    "reviewNo": "500K reviews",
    "ratings": "4.1",
    "ageRating": "Rated for 12+",
    "DownloadNo": "500M+",
    "size": "3.5 GB",
    "price": "₹299",
    "imageurl": "https://play-lh.googleusercontent.com/gIm59dfFD6SfvzK_k6S1S8EJisoJwVsy-p_bfhb31gLdFWs1S4eKB9yJ41LRF1jIb5s=s48-rw"
  },
  {
    "name": "Among Us",
    "desc": "Party",
    "devname": "Innersloth",
    "reviewNo": "1M reviews",
    "ratings": "4.2",
    "ageRating": "Rated for 7+",
    "DownloadNo": "100M+",
    "size": "100 MB",
    "price": "₹50",
    "imageurl": "https://play-lh.googleusercontent.com/8ddL1kuoNUB5vUvgDVjYY3_6HwQcrg1K2fd_R8soD-e2QYj8fT9cfhfh3G0hnSruLKec=s48-rw"
  },
  {
    "name": "Genshin Impact",
    "desc": "Adventure",
    "devname": "miHoYo",
    "reviewNo": "2M reviews",
    "ratings": "4.6",
    "ageRating": "Rated for 12+",
    "DownloadNo": "300M+",
    "size": "2.5 GB",
    "price": "₹450",
    "imageurl": "https://play-lh.googleusercontent.com/iP2i_f23Z6I-5hoL2okPS4SxOGhj0q61Iyb0Y1m4xdTsbnaCmrjs7xKRnL6o5R4h-Yg=s48-rw"
  },
  {
    "name": "Minecraft",
    "desc": "Sandbox",
    "devname": "Mojang",
    "reviewNo": "500K reviews",
    "ratings": "4.5",
    "ageRating": "Rated for 7+",
    "DownloadNo": "200M+",
    "size": "500 MB",
    "price": "₹749",
    "imageurl": "https://play-lh.googleusercontent.com/27O5tpaYE82W6m30rJ_MX3-UvshlDM6O8oXDxb6GseYW2T7P8UNT19727MGmz-0q3w=s48-rw"
  },
  {
    "name": "Candy Crush Saga",
    "desc": "Puzzle",
    "devname": "King",
    "reviewNo": "1M reviews",
    "ratings": "4.4",
    "ageRating": "Rated for 3+",
    "DownloadNo": "1B+",
    "size": "300 MB",
    "price": "₹99",
    "imageurl": "https://play-lh.googleusercontent.com/TLUeelx8wcpEzf3hoqeLxPs3ai1tdGtAZTIFkNqy3gbDp1NPpNFTOzSFJDvZ9narFS0=s48-rw"
  },
  {
    "name": "Clash of Clans",
    "desc": "Strategy",
    "devname": "Supercell",
    "reviewNo": "2M reviews",
    "ratings": "4.3",
    "ageRating": "Rated for 7+",
    "DownloadNo": "500M+",
    "size": "200 MB",
    "price": "₹199",
    "imageurl": "https://play-lh.googleusercontent.com/LByrur1mTmPeNr0ljI-uAUcct1rzmTve5Esau1SwoAzjBXQUby6uHIfHbF9TAT51mgHm=s48-rw"
  },
  {
    "name": "League of Legends: Wild Rift",
    "desc": "MOBA",
    "devname": "Riot Games",
    "reviewNo": "1M reviews",
    "ratings": "4.5",
    "ageRating": "Rated for 12+",
    "DownloadNo": "100M+",
    "size": "1.8 GB",
    "price": "₹399",
    "imageurl": "https://play-lh.googleusercontent.com/mMlDm75bTphvVBGP9bW-JN-3ejks1yEv9rXlz9n0SRNvtS6h4tWZeULwoel-BiXOMJE=s48-rw"
  },
  {
    "name": "Brawl Stars",
    "desc": "Action",
    "devname": "Supercell",
    "reviewNo": "1M reviews",
    "ratings": "4.4",
    "ageRating": "Rated for 7+",
    "DownloadNo": "100M+",
    "size": "300 MB",
    "price": "₹249",
    "imageurl": "https://play-lh.googleusercontent.com/VUdLhkbTpT6nv1BxCV-c-YQiaiF_muL1o0h3BZ3LD0UnOU03YcaGBVZTnR82_RgtHXY=s48-rw"
  },
  {
    "name": "FIFA Mobile",
    "desc": "Sports",
    "devname": "EA Sports",
    "reviewNo": "800K reviews",
    "ratings": "4.2",
    "ageRating": "Rated for 12+",
    "DownloadNo": "200M+",
    "size": "1.2 GB",
    "price": "₹299",
    "imageurl": "https://play-lh.googleusercontent.com/2U1-z_G5_B08qpq2cEhIfauVWvQfK0pnMROpMmp1e67nXHWXj0Q1iR-PIWigwTKbZBFg=s48-rw"
  },
  {
    "name": "Roblox",
    "desc": "Sandbox",
    "devname": "Roblox Corporation",
    "reviewNo": "2M reviews",
    "ratings": "4.5",
    "ageRating": "Rated for 7+",
    "DownloadNo": "500M+",
    "size": "120 MB",
    "price": "₹129",
    "imageurl": "https://play-lh.googleusercontent.com/Oirqdrw3CsCN1M2QBrGdOqONlue6XxX0oA0hEjeEZ1EufDJKSSECwqkhd_VAdSmcns7w=s48-rw"
  },
  {
    "name": "Valorant",
    "desc": "Shooter",
    "devname": "Riot Games",
    "reviewNo": "600K reviews",
    "ratings": "4.3",
    "ageRating": "Rated for 16+",
    "DownloadNo": "100M+",
    "size": "5.0 GB",
    "price": "₹499",
    "imageurl": "https://play-lh.googleusercontent.com/I8VgQ3QkRc4R0HnIHkaXlPvli-lehkF_OiCDuEiHafnwB8tvg6GT-h9jUaSKJIbHen8=w240-h480-rw"
  },
  {
    "name": "Asphalt 9: Unite",
    "desc": "Racing",
    "devname": "Gameloft",
    "reviewNo": "700K reviews",
    "ratings": "4.4",
    "ageRating": "Rated for 12+",
    "DownloadNo": "100M+",
    "size": "1.9 GB",
    "price": "₹299",
    "imageurl": "https://play-lh.googleusercontent.com/otkgT_EJw6tNPe6STymnv7J_fGwrMB7p6CU8qH3g1LPOsG6ueu_TXVg9v6bMWqF5Gdg=s48-rw"
  },
];



static List youMayLike=[
    {"name": "Car Simulation", "icon": Icons.search_outlined},
    {"name": "Horror games", "icon": Icons.search_outlined},
    {"name": "Shooting games", "icon": Icons.search_outlined},
    {"name": "Truth or dare games", "icon": Icons.search_outlined},
]; 
static List exploreGames=[
    {"name": "Action", "icon": Icons.sports_esports_outlined},
    {"name": "Simulation", "icon": Icons.settings_outlined},
    {"name": "Puzzle", "icon": Icons.extension_outlined},
    {"name": "Adventure", "icon": Icons.explore_outlined},
    {"name": "Racing", "icon": Icons.drive_eta_outlined},
    {"name": "Role playing", "icon": Icons.person_outlined},
];
static List exploreApps=[
  {"name": "Entertainment", "icon": Icons.movie_outlined},
    {"name": "Social", "icon": Icons.people_outlined},
    {"name": "Productivity", "icon": Icons.work_outlined},
    {"name": "Communication", "icon": Icons.chat_outlined},
    {"name": "Music & Audio", "icon": Icons.music_note_outlined},
    {"name": "Photography", "icon": Icons.camera_alt_outlined},
    {"name": "Shopping", "icon": Icons.shopping_cart_outlined},
    {"name": "Education", "icon": Icons.school_outlined},
];
static List gamesCategories = [
    {"name": "Action", IconData : Icons.games_outlined},
    {"name": "Adventure", IconData: Icons.explore_outlined},
    {"name": "Puzzle", IconData: Icons.extension_outlined},
    {"name": "Strategy", IconData: Icons.calculate_outlined},
    {"name": "Sports", IconData: Icons.sports_soccer_outlined},
    {"name": "Racing", IconData: Icons.directions_car_outlined},
    {"name": "Simulation", IconData: Icons.devices_other_outlined},
    {"name": "Arcade", IconData: Icons.favorite_outline},
    {"name": "Role-Playing", IconData: Icons.person_outline},
    {"name": "Trivia", IconData: Icons.quiz_outlined},
];
static List appsCategories = [
    {"name": "Watch Apps", "icon": Icons.watch_outlined},
    {"name": "Watch Faces", "icon": Icons.timer_outlined},
    {"name": "Android Auto", "icon": Icons.android_outlined},
    {"name": "Education", "icon": Icons.school_outlined},
    {"name": "Finance", "icon": Icons.attach_money_outlined},
    {"name": "Health & Fitness", "icon": Icons.fitness_center_outlined},
    {"name": "Photography", "icon": Icons.camera_alt_outlined},
    {"name": "Music & Audio", "icon": Icons.music_note_outlined},
    {"name": "News & Magazines", "icon": Icons.newspaper_outlined},
    {"name": "Productivity", "icon": Icons.work_outline},
    {"name": "Social Media", "icon": Icons.people_alt_outlined},
    {"name": "Travel & Local", "icon": Icons.map_outlined},
    {"name": "Weather", "icon": Icons.wb_sunny_outlined},
    {"name": "Shopping", "icon": Icons.shopping_cart_outlined},
    {"name": "Entertainment", "icon": Icons.tv_outlined},
];
static List<Map<String, String>> gamesCarouselImagesUrl = [
  {
    "name": "Battlegrounds Mobile India",
    "desc": "Battle royale",
    "devName": "KRAFTON, Inc.",
    "ratings": "4.4",
    "size": "1.9 GB",
    "reviewNo": "100K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "10M+",
    "iconUrl": "https://play-lh.googleusercontent.com/vAIzxVSf9PHA_gf-RrwxP-eyjh0DV1EMYhdzRcme7KBBsXknQLic10I_KT2DzibtKPc=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/9wJ5mfn4BkgIWzxPCVBTrvqXzPdZy7C08QbDDBhMUwz8Wtkx1Y2-U9FnGhsU-uXeFmo=w851-h2160-rw"
  },
  {
    "name": "Pokemon Pocket",
    "desc": "Adventure RPG",
    "devName": "The Pokemon Company",
    "ratings": "4.6",
    "size": "500 MB",
    "reviewNo": "50K reviews",
    "ageRating": "Rated for 7+",
    "DownloadNo": "1M+",
    "iconUrl": "https://play-lh.googleusercontent.com/CMYCz0j2Dowf_VUybvX00u5TGGkAJp2pGMrYxJcp85L91kou9fGICYcWnb8Pyr1xcQ=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/_L7hwqeMX_3xRCywFyDr62sErRRw0JYcrg3ybZDk-01DH832pBR2H1fGbFvThyrstugZdqGyN_Dd=w1296-h2160-rw"
  },
  {
    "name": "Clash of Clans",
    "desc": "Strategy",
    "devName": "Supercell",
    "ratings": "4.3",
    "size": "250 MB",
    "reviewNo": "1M reviews",
    "ageRating": "Rated for 10+",
    "DownloadNo": "500M+",
    "iconUrl": "https://play-lh.googleusercontent.com/LByrur1mTmPeNr0ljI-uAUcct1rzmTve5Esau1SwoAzjBXQUby6uHIfHbF9TAT51mgHm=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/MK08aCa0cBGxtZVr0pAolk43m_M_OGnbgry5Zj6p9K0ZKZpYZRQxKQIE3VtsIYFLzJU=w851-h2160-rw"
  },
  {
    "name": "INDUS",
    "desc": "Battle royale",
    "devName": "SuperGaming",
    "ratings": "4.2",
    "size": "1.5 GB",
    "reviewNo": "25K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "1M+",
    "iconUrl": "https://play-lh.googleusercontent.com/-h1v2RpmYoGtd8p1bpmndykykVUAS5yzq4LqtZxAZSXh9u8NCv2eERqwtqkBd8pFwA=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/rmeYWgMG2UFDchlVgc8dqeJorYjDow--inXszJpQOgiSyiX5v0wat3nduEoQmCX9b9vAn_H4_Pw=w1296-h2160-rw"
  },
  {
    "name": "Lords Mobile",
    "desc": "Strategy",
    "devName": "IGG.COM",
    "ratings": "4.0",
    "size": "700 MB",
    "reviewNo": "500K reviews",
    "ageRating": "Rated for 10+",
    "DownloadNo": "50M+",
    "iconUrl": "https://play-lh.googleusercontent.com/PCXVFPQqYacNN2D86d6ZXL2m9r9O_pF-0_Ro0kvCbwdL6J-RoFg-ROpl80XvtOOcey0=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/c7fgY4Y4-MmoF6dxPtYWWzk_1UZRrmxnxo5EDshIuPLDdJRbcfN5DHAHmwFBchUn8oc=w851-h2160-rw"
  },
  {
    "name": "Subway Surfers",
    "desc": "Endless Runner",
    "devName": "SYBO Games",
    "ratings": "4.5",
    "size": "140 MB",
    "reviewNo": "1M reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "2B+",
    "iconUrl": "https://play-lh.googleusercontent.com/Y1sBvjs4B9nZhNR3wQMD-aSdkCJl1j1KrezuayLCrra13LZYecvCy-Eipf3pGaIH4v_C=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/SawFXSc832X3zQrIvcHPMfz5Ep4nmQG_9pm-WZ4vrNmxhvmTcLrn7RpRti1NyaZXug=w851-h2160-rw"
  },
  {
    "name": "Underdark",
    "desc": "Action RPG",
    "devName": "DarkRealm Studios",
    "ratings": "4.1",
    "size": "1.2 GB",
    "reviewNo": "80K reviews",
    "ageRating": "Rated for 16+",
    "DownloadNo": "10M+",
    "iconUrl": "https://play-lh.googleusercontent.com/0xbBSvxXJboRkHIgjy6d8htKPPRBJ9c0rz09_uihtRWqmWcXbpqcFk0cBquXYRCocrEb=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/1qEDiNCfkOAdKkg51V5OXKZadvI9E2SpZCdulXdj9xIERME24ZKzK3jht9HAV2p08Izf=w851-h2160-rw"
  },
  {
    "name": "Bluey",
    "desc": "Educational Game",
    "devName": "BBC Studios Limited",
    "ratings": "4.7",
    "size": "80 MB",
    "reviewNo": "500K reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "10M+",
    "iconUrl": "https://play-lh.googleusercontent.com/AMDbmddK_u1DfEL4uYvVHxJEjDd4tnkacM2yFvOfd7VAc-V9mx-Zx2Oj8xGS1KJyXMc=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/cn7TAUH1VfDOfuRQi43H8u7N95454lMNBWiC-7mlGgjAUE_KJ7mYQ1sB_sF4lXfCuuc=w526-h296-rw"
  }
];



static List<Map<String, String>> appsCarouselImagesUrl = [
  {
    "name": "Jio Cinemas",
    "desc": "Streaming Service",
    "devName": "Jio Platforms Limited",
    "ratings": "4.7",
    "size": "80 MB",
    "reviewNo": "500K reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "50M+",
    "iconUrl": "https://play-lh.googleusercontent.com/D_mqUdLcFbKZczdnW_Jl_yZ37bCSVYHBfNMwLiSMs7b0xVuXdD_77Rcq1ULNIVXk7IY=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/_VuxdiYPqmFFyz85U76mRkpV8ybxSFvYrpoosghmIcwAX3PXMKpJ3lQvur3kHIeW2pO2Hqn1Tiw=w1296-h2160-rw"
  },
  {
    "name": "Spotify",
    "desc": "Music Streaming",
    "devName": "Spotify AB",
    "ratings": "4.5",
    "size": "150 MB",
    "reviewNo": "1M reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "500M+",
    "iconUrl": "https://play-lh.googleusercontent.com/7ynvVIRdhJNAngCg_GI7i8TtH8BqkJYmffeUHsG-mJOdzt1XLvGmbsKuc5Q1SInBjDKN=w240-h480-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/YMmgXMBxDDWrUqFPsyl-aNU6iHqbm-yuejSWDKXagbSbBdKQywhLwrEGiGGJrzCap8y8=w851-h2160-rw"
  },
  {
    "name": "WhatsApp",
    "desc": "Messaging App",
    "devName": "WhatsApp LLC",
    "ratings": "4.1",
    "size": "120 MB",
    "reviewNo": "2M reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "5B+",
    "iconUrl": "https://play-lh.googleusercontent.com/bYtqbOcTYOlgc6gqZ2rwb8lptHuwlNE75zYJu6Bn076-hTmvd96HH-6v7S0YUAAJXoJN=w240-h480-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/H6SGkqrnuV1bcESOBkBFU7iEfUHK1fGuRnsurTqjdxke8hsDQv8avPBjonHp8EmFrJsGcZwNIi4=w1296-h2160-rw"
  },
  {
    "name": "Instagram",
    "desc": "Social Media",
    "devName": "Instagram",
    "ratings": "4.4",
    "size": "110 MB",
    "reviewNo": "1.5M reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "2B+",
    "iconUrl": "https://play-lh.googleusercontent.com/VRMWkE5p3CkWhJs6nv-9ZsLAs1QOg5ob1_3qg-rckwYW7yp1fMrYZqnEFpk0IoVP4LM=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/zISWMn9MOTkRwG4LxlcWhdc-2azXbTqs9sm_UfUCWM_rlw9hAcVf1bBL-FC84L1IXuaOC06Mhw=w1296-h2160-rw"
  },
  {
    "name": "Canva",
    "desc": "Design Tool",
    "devName": "Canva",
    "ratings": "4.8",
    "size": "60 MB",
    "reviewNo": "700K reviews",
    "ageRating": "Rated for 3+",
    "DownloadNo": "100M+",
    "iconUrl": "https://play-lh.googleusercontent.com/AZvFkMmN5dAzee-N6UrjRo8nS0eOu28U-sJx_oimuzo_5ZshMBccG1IJkAWzD5XfL2Q=s48-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/-uQpRJEQRvSKMNkia1K8EDW3LXe_vo7luE0U5F572pz3zOpslzGi1v20Ar3ktPojNLwGurG86KQ=w1296-h2160-rw"
  },
  {
    "name": "Snapchat",
    "desc": "Messaging App",
    "devName": "Snap Inc.",
    "ratings": "4.2",
    "size": "70 MB",
    "reviewNo": "1M reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "1B+",
    "iconUrl": "https://play-lh.googleusercontent.com/nC95iM2f4dXas2K5x-heZ_uUVH9oc-mnlQF9phleiU2Kfk_Z1Rmwrbwv0QOdwQ__T4A=w240-h480-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/H6SGkqrnuV1bcESOBkBFU7iEfUHK1fGuRnsurTqjdxke8hsDQv8avPBjonHp8EmFrJsGcZwNIi4=w1296-h2160-rw"
  },
  {
    "name": "Netflix",
    "desc": "Streaming Service",
    "devName": "Netflix, Inc.",
    "ratings": "4.5",
    "size": "100 MB",
    "reviewNo": "3M reviews",
    "ageRating": "Rated for 12+",
    "DownloadNo": "1B+",
    "iconUrl": "https://play-lh.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI=w240-h480-rw",
    "imageUrl": "https://play-lh.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI=w240-h480-rw"
  }
];


static List<Map<String, String>> childrensGames = [
  {
    "name": "Barbie Dreamhouse Adventures",
    "ratings": "4.2",
    "imageurl": "https://play-lh.googleusercontent.com/qdmQbfC1v_8gDE7nTXNxHyk0o3APXAUMFxvCl-UsgwCAc4zm9m2zzo1Feye1CdXIEQ=s48-rw"
  },
  {
    "name": "Coloring Games",
    "ratings": "4.5",
    "imageurl": "https://play-lh.googleusercontent.com/zEeVdf2QNSOGP5b_koYGD72o_LB5uLdABUoBvYSxNiPZjVRwcxF2j2a_e8c5KGgpKxk=s48-rw"
  },
  {
    "name": "King Tongue",
    "ratings": "4.7",
    "imageurl": "https://play-lh.googleusercontent.com/vU4muSYj1so7kB01vq7aAjhZoAgL8LYoNGKejquCjC_aiiQ7EN0_Lmghb-V5J0zenDw=s48-rw"
  },
  {
    "name": "City Patrol:Rescue Services",
    "ratings": "4.6",
    "imageurl": "https://play-lh.googleusercontent.com/wYMKA4XjRvlwgnIs7t0AObv2G24B9FGiwoKYkmCOd7yQtHJAA7R0TvR_XtOao3yAg4b1=s48-rw"
  },
  {
    "name": "Cartoon Network: Gamebox",
    "ratings": "4.4",
    "imageurl": "https://play-lh.googleusercontent.com/QzDXMfj5f29N2YK9au_Q7_AwXSZEOqRXa5laFTtidjsXk6H0Ernw_sAAJrw58L53J2Ta=s256-rw"
  },
  {
    "name": "LingoKids",
    "ratings": "4.3",
    "imageurl": "https://play-lh.googleusercontent.com/1elPh0JvNHRG3cDEnEZ4ZJWFnaHcRsi7RoPHFpWWCwvyRHCBd3WfZ2M79GOXrtLwbPo=w240-h480-rw"
  },
  {
    "name": "Toddler Baby Phone",
    "ratings": "4.8",
    "imageurl": "https://play-lh.googleusercontent.com/gssJ3kzkfq_kIz5lfcrSs5szeFBklLk4NzhHKXPkRxcFpJ9bRZMMG6ErVbOAVRoVl3s2=s48-rw"
  },
  {
    "name": "PoK Pok",
    "ratings": "4.5",
    "imageurl": "https://play-lh.googleusercontent.com/VcrteoxoDZqQjwyEZWpYneeeoxbLWx4uZbdfFTlbbaF2Wmaiyi0JsK223kK2pHrmri1k=s48-rw"
  },
  {
    "name": "My Talking Tom Friends",
    "ratings": "4.9",
    "imageurl": "https://play-lh.googleusercontent.com/qGEtsqLQDgFJ4iubiGE8fUOa_j6yPCUwdeY0JRp7K_LAU9anGruMOoMbtXEAn8MJAg=w240-h480-rw"
  },
  {
    "name": "Hill Climb Racing",
    "ratings": "4.3",
    "imageurl": "https://play-lh.googleusercontent.com/N0UxhBVUmx8s7y3F7Kqre2AcpXyPDKAp8nHjiPPoOONc_sfugHCYMjBpbUKCMlK_XUs=w240-h480-rw"
  },
];
static List<Map<String, String>> booksDetails = [
  {
    "name": "Atomic Habits",
    "imageurl": "https://books.google.com/books/publisher/content/images/frontcover/eAjOEAAAQBAJ?fife=w240-h345",
    "ratings": "4.8",
    "price": "₹1,399"
  },
  {
    "name": "The Midnight Library",
    "imageurl": "https://books.google.com/books/publisher/content/images/frontcover/mdy1CgAAQBAJ?fife=w240-h345",
    "ratings": "4.6",
    "price": "₹850"
  },
  {
    "name": "Dune",
    "imageurl": "https://books.google.com/books/publisher/content/images/frontcover/dUzHBgAAQBAJ?fife=w240-h345",
    "ratings": "4.7",
    "price": "₹1,250"
  },
  {
    "name": "The Alchemist",
    "imageurl": "https://books.google.com/books/publisher/content/images/frontcover/qiFjDwAAQBAJ?fife=w88-h132",
    "ratings": "4.5",
    "price": "₹499"
  },
  {
    "name": "It Ends with Us",
    "imageurl": "https://books.google.com/books/publisher/content/images/frontcover/olkrEQAAQBAJ?fife=w240-h345",
    "ratings": "4.4",
    "price": "₹699"
  },
  {
    "name": "The 48 Laws of Power",
    "imageurl": "https://books.google.com/books/publisher/content/images/frontcover/5RvKBwAAQBAJ?fife=w240-h345",
    "ratings": "4.6",
    "price": "₹1,599"
  },
  {
    "name": "The Subtle Art of Not Giving a F*ck",
    "imageurl": "https://books.google.com/books/content/images/frontcover/987Kz87-TygC?fife=w240-h345",
    "ratings": "4.3",
    "price": "₹599"
  },
  {
    "name": "The Seven Husbands of Evelyn Hugo",
    "imageurl": "https://books.google.com/books/content/images/frontcover/t59H9UvGLvYC?fife=w240-h345",
    "ratings": "4.7",
    "price": "₹749"
  },
  {
    "name": "Verity",
    "imageurl": "https://books.google.com/books/publisher/content/images/frontcover/hmryDwAAQBAJ?fife=w240-h345",
    "ratings": "4.5",
    "price": "₹899"
  },
  {
    "name": "A Court of Thorns and Roses",
    "imageurl": "https://books.google.com/books/publisher/content/images/frontcover/hiXcDwAAQBAJ?fife=w240-h345",
    "ratings": "4.8",
    "price": "₹1,799"
  },
];




}