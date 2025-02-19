public void setup() 
{
    String[] lines = {"beast", "dough", "happy", "question", "star", "three", "eagle", "try"};
    /*String[] lines = {"With heads bared we stand, ", "In tribute to thee, ", 
                      "Our Alma-Mater Lowell,", "All true to thee we'll be. ", 
                      "Unfurled red and white, ", "None shall thee decry, ", 
                      "They name we love,", "Oh Lowell High."};*/
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(i,i+1).equals("a"))
      return i;
    else if(sWord.substring(i,i+1).equals("e"))
      return i;
    else if(sWord.substring(i,i+1).equals("i"))
      return i;
    else if(sWord.substring(i,i+1).equals("o"))
      return i;
    else if(sWord.substring(i,i+1).equals("u"))
      return i;
  }
  return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else
  {
    if(findFirstVowel(sWord) == 0)
      return sWord + "way";
    else if(sWord.startsWith("qu"))
      return sWord.substring(2) + sWord.substring(0, 2) + "ay";
    else if(findFirstVowel(sWord) != 0)
      return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord) ) + "ay";
    else 
        return "ERROR!";
  }
}
