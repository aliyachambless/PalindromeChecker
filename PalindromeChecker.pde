public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String letters = new String();
  for(int i = 0; i < word.length(); i++){
    if(Character.isLetter(word.charAt(i)))
      letters = letters + word.substring(i,i+1);
  }
  letters = letters.toLowerCase();
  for(int i = 0; i < letters.length()/2; i++){
    if(letters.charAt(i) != letters.charAt(letters.length()-(i+1)))
      return false;
  }
  return true;
}

