//En esta pagina se muestra la informacion de los autores
void authorsInfo(){
  image(about,0,0);
  btn[4].backplace(500,500,4);
  String[] biblia = loadStrings("data/about.txt");
  for(int i=0;i<biblia.length;i++)
    text(biblia[i],300,200+20*i);
}
