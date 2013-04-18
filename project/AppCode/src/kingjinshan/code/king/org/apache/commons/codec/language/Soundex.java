package king.org.apache.commons.codec.language;

import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringEncoder;

public class Soundex
  implements StringEncoder
{
  public static final Soundex US_ENGLISH = new Soundex();
  private static final char[] US_ENGLISH_MAPPING = "01230120022455012623010202".toCharArray();
  public static final String US_ENGLISH_MAPPING_STRING = "01230120022455012623010202";
  private int maxLength = 4;
  private final char[] soundexMapping;

  public Soundex()
  {
    this.soundexMapping = US_ENGLISH_MAPPING;
  }

  public Soundex(String paramString)
  {
    this.soundexMapping = paramString.toCharArray();
  }

  public Soundex(char[] paramArrayOfChar)
  {
    this.soundexMapping = new char[paramArrayOfChar.length];
    System.arraycopy(paramArrayOfChar, 0, this.soundexMapping, 0, paramArrayOfChar.length);
  }

  private char getMappingCode(String paramString, int paramInt)
  {
    char c1 = map(paramString.charAt(paramInt));
    if ((paramInt > 1) && (c1 != '0'))
    {
      int i = paramString.charAt(paramInt - 1);
      if ((72 == i) || (87 == i))
      {
        char c2 = paramString.charAt(paramInt - 2);
        if ((map(c2) == c1) || ('H' == c2) || ('W' == c2))
          c1 = '\000';
      }
    }
    return c1;
  }

  private char[] getSoundexMapping()
  {
    return this.soundexMapping;
  }

  private char map(char paramChar)
  {
    int i = paramChar - 'A';
    if ((i < 0) || (i >= getSoundexMapping().length))
      throw new IllegalArgumentException("The character is not mapped: " + paramChar);
    return getSoundexMapping()[i];
  }

  public int difference(String paramString1, String paramString2)
  {
    return SoundexUtils.difference(this, paramString1, paramString2);
  }

  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("Parameter supplied to Soundex encode is not of type java.lang.String");
    return soundex((String)paramObject);
  }

  public String encode(String paramString)
  {
    return soundex(paramString);
  }

  public int getMaxLength()
  {
    return this.maxLength;
  }

  public void setMaxLength(int paramInt)
  {
    this.maxLength = paramInt;
  }

  public String soundex(String paramString)
  {
    String str;
    if (paramString == null)
      str = null;
    do
    {
      return str;
      str = SoundexUtils.clean(paramString);
    }
    while (str.length() == 0);
    char[] arrayOfChar = { 48, 48, 48, 48 };
    arrayOfChar[0] = str.charAt(0);
    int i = getMappingCode(str, 0);
    int j = 1;
    int k = i;
    int m = 1;
    while (true)
    {
      int n;
      if ((j < str.length()) && (m < arrayOfChar.length))
      {
        n = j + 1;
        int i1 = getMappingCode(str, j);
        if (i1 != 0)
        {
          if ((i1 != 48) && (i1 != k))
          {
            int i2 = m + 1;
            arrayOfChar[m] = i1;
            m = i2;
          }
          k = i1;
          j = n;
        }
      }
      else
      {
        str = new String(arrayOfChar);
        break;
        j = n;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.language.Soundex
 * JD-Core Version:    0.6.2
 */