//////////////////////////////////////////////
void DoisBotoes(boolean agudo) {
  String texto;
  //Do Re
  if (sopro>57) {
    if (c4_p==0 && d4_p==0) {
      texto = "Dó + Ré";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(12, 244, 12, texto);
    }

    //Do Mi
    else if (c4_p==0 && e4_p==0) {
      texto = "Dó + Mi";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(12, 144, 112, texto);

    }

    //Do Fa
    else if (c4_p==0 && f4_p==0) {
      texto = "Dó + Fá";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(12, 2, 123, texto);

    }

    //Do Sol
    else if (c4_p==0 && g4_p==0) {
      texto = "Dó + Sol";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(123, 244, 12, texto);

    }
    //Do La
    else if (c4_p==0 && a4_p==0) {
      texto = "Dó + Lá";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(156, 24, 12, texto);

    }


    //Dó Si
    else if (c4_p==0 && b4_p==0) {
      texto = "Dó + Si";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(44, 55, 77, texto);

    }
    ////////////////////////////////////////////////

    // Re Mi
    else if (d4_p==0 && e4_p==0) {
      texto = "Ré + Mi";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(75, 64, 88, texto);

    }

    //Re Fa
    else if (d4_p==0 && f4_p==0) {
      texto = "Ré + Fá";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(28, 44, 62, texto);

    }

    //Re Sol
    else if (d4_p==0 && g4_p==0) {
      texto = "Ré + Sol";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(128, 14, 86, texto);

    }

    //Re Lá
    else if (d4_p==0 && a4_p==0) {
      texto = "Ré + Lá";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(98, 94, 132, texto);

    }

    //Re Si
    else if (d4_p==0 && b4_p==0) {
      texto = "Ré + Si";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(14, 144, 10, texto);

    }

    ///////////////////////////////////////////

    //Mi Fa
    else if (f4_p==0 && e4_p==0) {
      texto = "Mi + Fá";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(6, 66, 202, texto);

    }

    //Mi Sol
    else if (e4_p==0 && g4_p==0) {
      texto = "Mi + Sol";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(72, 74, 32, texto);

    }

    //Mi Lá
    else if (e4_p==0 && a4_p==0) {
      texto = "Mi + Lá";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(78, 114, 2, texto);

    }

    //Mi Si
    else if (e4_p==0 && b4_p==0) {
      texto = "Mi + Si";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(56, 84, 92, texto);

    }

    /////////////////////////////////////////////////////////

    //Fa Sol
    else if (f4_p==0 && g4_p==0) {
      texto = "Fá + Sol";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(97, 84, 32, texto);

    }

    //Fa Lá
    else if (f4_p==0 && a4_p==0) {
      texto = "Fá + Lá";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(33, 44, 22, texto);

    }

    //Fa Si
    else if (f4_p==0 && b4_p==0) {
      texto = "Fá + Si";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(110, 100, 130, texto);

    }

    ///////////////////////////////////////

    //Sol Lá
    else if (g4_p==0 && a4_p==0) {
      texto = "Sol + Lá";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(93, 144, 222, texto);

    }

    //Sol Si
    else if (g4_p==0 && b4_p==0) {
      texto = "Sol + Si";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(53, 34, 6, texto);

    }

    ///////////////////////////////////

    //Lá Si
    else if (a4_p==0 && b4_p==0) {
      texto = "Lá + Si";
      if(agudo == true)
        texto = texto + " Agudo";
      imagem(94, 114, 82, texto);

    } else {
    }
  }
}
