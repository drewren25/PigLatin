public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public int findFirstVowel(String sWord){
 for(int i = 0; i<sWord.length(); i++){
    if(sWord.charAt(i) == 'a' || sWord.charAt(i) == 'e' || sWord.charAt(i) == 'o' || sWord.charAt(i) == 'i' || sWord.charAt(i) == 'u'){
      return i;
    }
 }  return -1;
}
public String pigLatin(String sWord)
{
  int x = findFirstVowel(sWord);
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if(sWord.charAt(0) == 'q' && sWord.charAt(1) == 'u'){
    return sWord.substring(2,sWord.length()) + "quay";
  }
    else if(findFirstVowel(sWord) >= 1){
      return sWord.substring(x, sWord.length())+sWord.substring(0, x) + "ay";
  }
  else{
return "ERROR!";
  }
}