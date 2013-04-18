package king.org.apache.commons.codec.language;

import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringEncoder;

public class RefinedSoundex
  implements StringEncoder
{
  public static final RefinedSoundex US_ENGLISH = new RefinedSoundex();
  private static final char[] US_ENGLISH_MAPPING = "01360240043788015936020505".toCharArray();
  public static final String US_ENGLISH_MAPPING_STRING = "01360240043788015936020505";
  private final char[] soundexMapping;

  public RefinedSoundex()
  {
    this.soundexMapping = US_ENGLISH_MAPPING;
  }

  public RefinedSoundex(String paramString)
  {
    this.soundexMapping = paramString.toCharArray();
  }

  public RefinedSoundex(char[] paramArrayOfChar)
  {
    this.soundexMapping = new char[paramArrayOfChar.length];
    System.arraycopy(paramArrayOfChar, 0, this.soundexMapping, 0, paramArrayOfChar.length);
  }

  public int difference(String paramString1, String paramString2)
  {
    return SoundexUtils.difference(this, paramString1, paramString2);
  }

  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("Parameter supplied to RefinedSoundex encode is not of type java.lang.String");
    return soundex((String)paramObject);
  }

  public String encode(String paramString)
  {
    return soundex(paramString);
  }

  char getMappingCode(char paramChar)
  {
    if (!Character.isLetter(paramChar));
    for (char c = '\000'; ; c = this.soundexMapping[(Character.toUpperCase(paramChar) - 'A')])
      return c;
  }

  public String soundex(String paramString)
  {
    String str;
    if (paramString == null)
      str = null;
    while (true)
    {
      return str;
      str = SoundexUtils.clean(paramString);
      if (str.length() != 0)
      {
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append(str.charAt(0));
        int i = 42;
        for (int j = 0; j < str.length(); j++)
        {
          char c = getMappingCode(str.charAt(j));
          if (c != i)
          {
            if (c != 0)
              localStringBuffer.append(c);
            i = c;
          }
        }
        str = localStringBuffer.toString();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.language.RefinedSoundex
 * JD-Core Version:    0.6.2
 */