

void main() { 
 String longueur = """Cher agent X,



J'ai aperçu le chat noir    au point de rendez-vous 7. L'agent Johnson était 

également présent.    Le code secret 42 a été activé.



Notre agent de liaison vous contactera à 23h.



    Cordialement""";
  
  int longueurCalcul = longueur.length;
  print(longueurCalcul);
  
 //  protocol beta
  
  String miroir = lettre.split('').reversed.join('');
  String lettreModifiee = lettre.replaceAllMapped(RegExp(r'\b[Aa]gent\b'), (match) {
    return match.group(0) == "agent" ? "espion" : "Espion";
  });

  print("Miroir du message : $miroir");
  print("Message après remplacement des agents : $lettreModifiee\n");

//protocole gamma

// Vérif et nettoyage
  bool commenceParCher = lettre.startsWith("Cher");
  bool finitParCordialement = lettre.trim().endsWith("Cordialement");
  String lettreNettoyee = lettre.replaceAll(RegExp(r'\s+'), ' ').trim();

  print("Commence par 'Cher' ? $commenceParCher");
  print("Finit par 'Cordialement' ? $finitParCordialement");
  print("Message nettoyé : $lettreNettoyee\n");


  // protocole delta
  // Versions en majuscules et minuscules + extraction du 43e caractère
  String majuscule = lettre.toUpperCase();
  String minuscule = lettre.toLowerCase();
  String? caractereIndex42 = lettre.length >= 43 ? lettre[42] : null;

  print("Message en majuscules : $majuscule");
  print("Message en minuscules : $minuscule");
  print("43ème caractère (si disponible) : ${caractereIndex42 ?? 'Non disponible'}\n");

  // Vérif du contenu et extraction des nombres
  bool estVide = lettreNettoyee.isEmpty;
  List<int> nombres = RegExp(r'\d+')
      .allMatches(lettre)
      .map((match) => int.parse(match.group(0)!))
      .toList();

  print("Le message est-il vide après nettoyage ? $estVide");
  print("Nombres extraits du message : $nombres\n");

  print("  termi née !");
}

  


      