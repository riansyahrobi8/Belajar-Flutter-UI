import 'package:flutter/material.dart';

class SliderModel {
  String imageAssetsPath, title, desc;

  SliderModel({this.imageAssetsPath, this.title, this.desc});

  void setImageAssetsPath(String imageAssetsPath) {
    imageAssetsPath = imageAssetsPath;
  }

  String getImageAssetsPath() {
    return imageAssetsPath;
  }

  void setTitle(String title) {
    title = title;
  }

  String getTitle() {
    return title;
  }

  void setDesc(String desc) {
    desc = desc;
  }

  String getDesc() {
    return desc;
  }
}

// List<SliderModel> getSlides() {
//   List<SliderModel> slides = List<SliderModel>();
//   SliderModel sliderModel = SliderModel();

//   // Data pertama
//   sliderModel.setImageAssetsPath('images/logo3x.png');
//   sliderModel.setTitle('Daftar');
//   sliderModel.setDesc(
//       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.");
//   slides.add(sliderModel);

//   return slides;
// }

List<SliderModel> getSlides() {
  List<SliderModel> slides = List<SliderModel>();
  SliderModel sliderModel = SliderModel();

  //1
  sliderModel.setDesc(
      "Discover Restaurants offering the best fast food food near you on Foodwa");
  sliderModel.setTitle("Search");
  sliderModel.setImageAssetsPath("images/logo3x.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //2
  sliderModel.setDesc(
      "Our veggie plan is filled with delicious seasonal vegetables, whole grains, beautiful cheeses and vegetarian proteins");
  sliderModel.setTitle("Order");
  sliderModel.setImageAssetsPath("images/logo3x.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //3
  sliderModel.setDesc(
      "Food delivery or pickup from local restaurants, Explore restaurants that deliver near you.");
  sliderModel.setTitle("Eat");
  sliderModel.setImageAssetsPath("images/logo3x.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  return slides;
}
