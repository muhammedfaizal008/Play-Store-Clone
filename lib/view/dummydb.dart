import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    "ratings": "4.3",
    "size": "43MB"
  },
  {
    "name": "Zomato: Food Delivery",
    "desc": "Order food from local restaurants",
    "ratings": "4.2",
    "size": "45MB"
  },
  {
    "name": "Uber Eats: Food Delivery",
    "desc": "Fast and reliable food delivery",
    "ratings": "4.1",
    "size": "50MB"
  },
  {
    "name": "Domino's Pizza: Order Online",
    "desc": "Order your favorite pizzas",
    "ratings": "4.0",
    "size": "38MB"
  },
  {
    "name": "Amazon: Shop Online",
    "desc": "Buy products from millions of items",
    "ratings": "4.5",
    "size": "60MB"
  },
  {
    "name": "Flipkart: Online Shopping",
    "desc": "Shop the latest gadgets and more",
    "ratings": "4.4",
    "size": "55MB"
  },
  {
    "name": "Paytm: Payments & Shopping",
    "desc": "Secure payments and easy shopping",
    "ratings": "4.3",
    "size": "48MB"
  },
  {
    "name": "Google Maps: Navigation",
    "desc": "Navigate with ease",
    "ratings": "4.7",
    "size": "70MB"
  },
  {
    "name": "Facebook: Connect with Friends",
    "desc": "Stay connected with your friends",
    "ratings": "4.1",
    "size": "65MB"
  },
  {
    "name": "Instagram: Photo & Video Sharing",
    "desc": "Share your moments",
    "ratings": "4.5",
    "size": "55MB"
  },
  {
    "name": "Twitter: Stay Connected",
    "desc": "Join the conversation",
    "ratings": "4.0",
    "size": "35MB"
  },
  {
    "name": "WhatsApp: Messaging & Calling",
    "desc": "Secure messaging and calls",
    "ratings": "4.6",
    "size": "45MB"
  },
  {
    "name": "Spotify: Music Streaming",
    "desc": "Stream your favorite music",
    "ratings": "4.4",
    "size": "80MB"
  },
  {
    "name": "Netflix: Movies & TV Shows",
    "desc": "Watch unlimited movies and shows",
    "ratings": "4.5",
    "size": "90MB"
  },
  {
    "name": "YouTube: Video Sharing",
    "desc": "Watch and share videos",
    "ratings": "4.7",
    "size": "60MB"
  },
];
  static List<Map<String, String>> gameName = [
  {
    "name": "Efootball",
    "desc": "Sports",
    "ratings": "4.3",
    "size": "1.5 GB"
  },
  {
    "name": "Call of Duty: Mobile",
    "desc": "Action",
    "ratings": "4.5",
    "size": "2.0 GB"
  },
  {
    "name": "PUBG Mobile",
    "desc": "Battle Royale",
    "ratings": "4.4",
    "size": "1.8 GB"
  },
  {
    "name": "Fortnite",
    "desc": "Battle Royale",
    "ratings": "4.1",
    "size": "3.5 GB"
  },
  {
    "name": "Among Us",
    "desc": "Party",
    "ratings": "4.2",
    "size": "100 MB"
  },
  {
    "name": "Genshin Impact",
    "desc": "Adventure",
    "ratings": "4.6",
    "size": "2.5 GB"
  },
  {
    "name": "Minecraft",
    "desc": "Sandbox",
    "ratings": "4.5",
    "size": "500 MB"
  },
  {
    "name": "Candy Crush Saga",
    "desc": "Puzzle",
    "ratings": "4.4",
    "size": "300 MB"
  },
  {
    "name": "Clash of Clans",
    "desc": "Strategy",
    "ratings": "4.3",
    "size": "200 MB"
  },
  {
    "name": "League of Legends: Wild Rift",
    "desc": "MOBA",
    "ratings": "4.5",
    "size": "1.8 GB"
  },
  {
    "name": "Brawl Stars",
    "desc": "Action",
    "ratings": "4.4",
    "size": "300 MB"
  },
  {
    "name": "FIFA Mobile",
    "desc": "Sports",
    "ratings": "4.2",
    "size": "1.2 GB"
  },
  {
    "name": "Roblox",
    "desc": "Sandbox",
    "ratings": "4.5",
    "size": "120 MB"
  },
  {
    "name": "Valorant",
    "desc": "Shooter",
    "ratings": "4.3",
    "size": "5.0 GB"
  },
  {
    "name": "Asphalt 9: Legends",
    "desc": "Racing",
    "ratings": "4.4",
    "size": "1.9 GB"
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


}