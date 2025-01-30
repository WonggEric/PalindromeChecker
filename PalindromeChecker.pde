public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word) {
  String word1 = "";
  for (int i = 0; i < word.length(); i++) {
    if (Character.isLetter(word.charAt(i))) {
      word1 += Character.toLowerCase(word.charAt(i));
    }
  }

  return word1.equals(reverse(word1));
}

public String reverse(String str) {
  String sNew = "";
  for (int i = str.length() - 1; i >= 0; i--) {
    sNew += str.charAt(i);
  }
  return sNew;
}
