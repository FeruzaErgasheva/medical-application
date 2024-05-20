class Doctor {
  String name;
  String area;
  String image;
  String rating;
  String messages;
  String experience;
  String focus;

  Doctor(
      {required this.name,
      required this.area,
      required this.image,
      required this.rating,
      required this.messages,
      required this.experience,
      required this.focus});
}

List<Doctor> doctors = [
  Doctor(
      name: "Dr. Olivia Turner, M.D.",
      area: "Dermato-Endocrinology",
      image: "assets/images/avatar2.png",
      rating: "5",
      messages: "60",
      experience: "15",
      focus:
          "The impact of hormonal imbalances on skin conditions, specializing in acne, hirsutism, and other skin disorders."),
  Doctor(
      name: "Dr. Alexander Bennett,\nPh.D.",
      area: "Dermato-Genetics",
      image: "assets/images/avatar3.png",
      rating: "5",
      messages: "40",
      experience: "15",
      focus:
          "The impact of hormonal imbalances on skin conditions, specializing in acne, hirsutism, and other skin disorders."),
  Doctor(
      name: "Dr. Sophia Martinez,\nPh.D.",
      area: "Cosmetic Bioengineering",
      image: "assets/images/avatar4.png",
      rating: "4.9",
      messages: "150",
      experience: "15",
      focus:
          "The impact of hormonal imbalances on skin conditions, specializing in acne, hirsutism, and other skin disorders."),
  Doctor(
      name: "Dr. Michael Davidson,\nM.D.",
      area: "Nano-Dermatology",
      image: "assets/images/avatar5.png",
      rating: "4.8",
      messages: "90",
      experience: "15",
      focus:
          "The impact of hormonal imbalances on skin conditions, specializing in acne, hirsutism, and other skin disorders.")
];
