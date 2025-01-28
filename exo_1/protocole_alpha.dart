

void main() { 
 String longueur = """Cher agent X,



J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 

également présent.    Le code secret 42 a été activé.



Notre agent de liaison vous contactera à 23h.



    Cordialement""";
  
  int longueurCalcul = longueur.length;
  print(longueurCalcul);
  
 
  
   }
   String miroir(String texte) {
  return texte.split('').reversed.join('');
}

void main() {
  String texte = "Hello";
  String inverse = miroir(texte);
  print(inverse);
  protocol beta
String miroir(String texte) {
  return texte.split('').reversed.join('');
}
String texte = "Hello";
  String inverse = miroir(texte);
  print(inverse);
  
  String remplacerAgentParEspion(String texte) {
  return texte.replaceAllMapped(RegExp(r'\b[Aa]gent\b'), (match) {
    return match.group(0)!.toLowerCase() == "agent" ? "espion" : "Espion";
  });  }
}

      