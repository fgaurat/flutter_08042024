



class ConstRectangle{

  final int longueur;
  final int largeur;


  const ConstRectangle({required this.longueur,required this.largeur});


  @override
  String toString() {
    return "ConstRectangle largeur : $largeur, longueur : $longueur";
  }

}