public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word = noCapitals(word);
  word = noSpaces(word);
  word = onlyLetters(word);
  if(word.equals(reverse(word))){
    return true;
  }
  return false;
}

public String noCapitals(String cap){
  return cap.toLowerCase();
}

public String noSpaces(String space){
  String sWord = "";
  for(int i = 0; i < space.length(); i++){
    if(!space.substring(i, i+1).equals(" "))
      sWord = sWord + space.charAt(i);
  }
  return sWord;
}
public String onlyLetters(String letters){
  String Word = "";
    for(int i = 0; i < letters.length(); i++){
      if(Character.isLetter(letters.charAt(i)) == true){
        Word = Word + letters.charAt(i);
      }
    }
    return Word;
}
public String reverse(String str)
{
   String sNew = new String();
   for(int i = str.length() - 1; i >= 0; i--){
   sNew = sNew + str.substring(i, i+1);
  }
    return sNew;
}
