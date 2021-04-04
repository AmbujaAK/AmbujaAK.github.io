import 'dart:convert';

class JourneyModel {
  final int year;
  final String title;
  final String companyTag;
  final List<String> personalProject;
  final List<String> galary;
  final List<String> skills;
  final String description;

  JourneyModel({
    this.year,
    this.title,
    this.companyTag,
    this.personalProject,
    this.galary,
    this.skills,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'year': year,
      'title': title,
      'companyTag': companyTag,
      'personalProject': personalProject,
      'galary': galary,
      'skills': skills,
      'description': description,
    };
  }

  factory JourneyModel.fromMap(Map<String, dynamic> map) {
    return JourneyModel(
      year: map['year'],
      title: map['title'],
      companyTag: map['companyTag'],
      personalProject: List<String>.from(map['personalProject']),
      galary: List<String>.from(map['galary']),
      skills: List<String>.from(map['skills']),
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory JourneyModel.fromJson(String source) =>
      JourneyModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'JourneyModel(year: $year, title: $title, companyTag: $companyTag, personalProject: $personalProject, galary: $galary, skills: $skills, description: $description)';
  }
}
