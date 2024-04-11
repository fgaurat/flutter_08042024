



class Rectangle{

  late int _longueur;
  late int _largeur;


  // Rectangle(int longueur,int largeur):this._largeur=largeur,this._longueur=longueur{}
  
  Rectangle(this._longueur,this._largeur);
  
  Rectangle.byName({longueur = 0,largeur=0}):_longueur=longueur,_largeur=largeur;
  
  Rectangle.fromString(String initValues){
    List<String> values = initValues.split("x");
    _longueur = int.parse(values[0]);
    _largeur = int.parse(values[1]);
  }


  int get longueur => _longueur;
  int get largeur => _largeur;

  void set longueur(int longueur) => _longueur = longueur;
  void set largeur(int largeur) => _largeur = largeur;

  @override
  String toString() {
    return "Rectangle largeur : $_largeur, longueur : $_longueur";
  }

}