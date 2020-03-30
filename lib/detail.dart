import 'package:flutter/material.dart';

class Cocktail {
  String name;
  String imageurl;
  int rating;
  String code;
  String description;

  Cocktail(
      {@required this.name,
      @required this.rating,
      @required this.imageurl,
      @required this.code,
      @required this.description});
}

List<Cocktail> cocktaillist = [
  Cocktail(
      name: "Mojito",
      rating: 8,
      code: "98765",
      imageurl: "images/mojito.webp",
      description:
          "Traditionally, a Mojito consists of five ingredients that include sugar or sugarcane juice, lime juice, soda water, mint and white rum. The Cuban drink may not have a very clear history of origin but it is believed that it is one of the first cocktails to have been invented. Best consumed in Collins glassware, Mojito is garnished with a sprig of mint and lemon slice."),
  Cocktail(
      name: "Long Island Iced Tea",
      code: "09532",
      rating: 9,
      imageurl: "images/liit.webp",
      description:
          "Long Island Iced Tea (LIIT) is a stylish cocktail typically made with vodka, triple sec, tequila, light rum, gin and cola that gives it a nice and soothing amber hue. This cocktail has a much higher concentration of liquor than most of the other popular cocktails. It is generally served in a long highball glass."),
  Cocktail(
      name: "Margarita",
      code: "54398",
      rating: 5,
      imageurl: "images/margarita.webp",
      description:
          "Margarita is a sour cocktail consisting of tequila, triple sec and lime or lemon juice. It is generally served with salt or sugar placed on the rim of the glass."),
  Cocktail(
      name: "Bloody Mary",
      code: "67512",
      rating: 8,
      imageurl: "images/bloody-mary.webp",
      description:
          "The spooky name Bloody Mary is synonymous to the bright red colour of the cocktail. It is made with vodka, tomato juice and a combination of various spices and flavours, which may include cayenne pepper, celery, olives and more. This drink is served in a highball glass."),
  Cocktail(
      name: "Cosmopolitan",
      code: "98099",
      rating: 3,
      imageurl: "images/cosmopolitan.webp",
      description:
          "Cosmopolitan is made with vodka, triple sec, cranberry juice and lime juice. It is usually served in a martini glass and is popularized as a feminine drink."),
  Cocktail(
      name: "Moscow",
      code: "23451",
      rating: 4,
      imageurl: "images/moscow-mule.jpg",
      description:
          "Moscow Mule is believed to have originated in the United States of America. It is made with vodka, spicy ginger beer and lime juice and garnished with a slice of wedge of lime. One thing that makes it stand out is that it is always served in a copper mug."),
  Cocktail(
      name: "Screwdriver",
      code: "65478",
      rating: 6,
      imageurl: "images/cocktail.png",
      description:
          "No, it’s not the screwdriver tool that you are thinking of! This interesting drink is made with vodka and orange juice, that’s how basic it is. Served in a highball glass, it has many variations with different names around the world."),
  Cocktail(
      name: "Martini",
      code: "98061",
      rating: 8,
      imageurl: "images/martini.webp",
      description:
          "A classy drink, martini is a cocktail made with gin and vermouth and garnished with an olive. You can add some aromatic bitters and serve it chilled in a martini glass. Ideally a martini shouldn’t be shaken, but stirred."),
  Cocktail(
      name: "Sangria",
      code: "34299",
      rating: 9,
      imageurl: "images/sangria.webp",
      description:
          "Sangria is a punchy cocktail consisting of red or white wine, chopped fresh fruits and fruit juice."),
  Cocktail(
      name: "The Bahama Mama",
      code: "34524",
      rating: 7,
      imageurl: "images/bahama-mama.webp",
      description:
          "The Bahama Mama is a very popular cocktail and, just like many tiki drinks, there are many recipes available. You should expect two types of rum, a little coconut and coffee, and a healthy dose of pineapple. While those are the keys to any good Bahama Mama, from there various ingredients are added."),
  Cocktail(
      name: "The bull shot",
      code: "98321",
      rating: 8,
      imageurl: "images/Bullshot.webp",
      description:
          "The bull shot is a drink for acquired tastes—one that you will either love or hate—though it has many devoted fans. It was created in the early 1950s and is often attributed to the Caucus Club in Detroit. Though it was a big hit through '70s (even making an appearance in in 1971), the bull shot's making a surprising comeback as it appeals to drinkers looking for that retro vibe."),
  Cocktail(
      name: "Sangria",
      code: "65998",
      rating: 9,
      imageurl: "images/sangria.webp",
      description:
          "Sangria is a punchy cocktail consisting of red or white wine, chopped fresh fruits and fruit juice."),
];
