package king.org.apache.commons.codec.language;

import java.util.Locale;
import king.org.apache.commons.codec.StringEncoder;

final class SoundexUtils
{
  static String clean(String paramString)
  {
    String str;
    if ((paramString == null) || (paramString.length() == 0))
      str = paramString;
    while (true)
    {
      return str;
      int i = paramString.length();
      char[] arrayOfChar = new char[i];
      int j = 0;
      int k = 0;
      while (j < i)
      {
        if (Character.isLetter(paramString.charAt(j)))
        {
          int m = k + 1;
          arrayOfChar[k] = paramString.charAt(j);
          k = m;
        }
        j++;
      }
      if (k == i)
        str = paramString.toUpperCase(Locale.ENGLISH);
      else
        str = new String(arrayOfChar, 0, k).toUpperCase(Locale.ENGLISH);
    }
  }

  static int difference(StringEncoder paramStringEncoder, String paramString1, String paramString2)
  {
    return differenceEncoded(paramStringEncoder.encode(paramString1), paramStringEncoder.encode(paramString2));
  }

  static int differenceEncoded(String paramString1, String paramString2)
  {
    int i = 0;
    if ((paramString1 == null) || (paramString2 == null));
    for (int j = 0; ; j = i)
    {
      return j;
      int k = Math.min(paramString1.length(), paramString2.length());
      for (int m = 0; m < k; m++)
        if (paramString1.charAt(m) == paramString2.charAt(m))
          i++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.language.SoundexUtils
 * JD-Core Version:    0.6.2
 */