package king.org.apache.commons.codec.language;

import java.util.Locale;
import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringEncoder;

public class ColognePhonetic
  implements StringEncoder
{
  private static final char[][] PREPROCESS_MAP = { { 196, 65 }, { 220, 85 }, { 214, 79 }, { 223, 83 } };

  private static boolean arrayContains(char[] paramArrayOfChar, char paramChar)
  {
    int i = 0;
    if (i < paramArrayOfChar.length)
      if (paramArrayOfChar[i] != paramChar);
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i++;
      break;
    }
  }

  private String preprocess(String paramString)
  {
    char[] arrayOfChar = paramString.toUpperCase(Locale.GERMAN).toCharArray();
    int i = 0;
    if (i < arrayOfChar.length)
    {
      if (arrayOfChar[i] > 'Z');
      for (int j = 0; ; j++)
        if (j < PREPROCESS_MAP.length)
        {
          if (arrayOfChar[i] == PREPROCESS_MAP[j][0])
            arrayOfChar[i] = PREPROCESS_MAP[j][1];
        }
        else
        {
          i++;
          break;
        }
    }
    return new String(arrayOfChar);
  }

  public String colognePhonetic(String paramString)
  {
    String str2;
    if (paramString == null)
    {
      str2 = null;
      return str2;
    }
    String str1 = preprocess(paramString);
    ColognePhonetic.CologneOutputBuffer localCologneOutputBuffer = new ColognePhonetic.CologneOutputBuffer(this, 2 * str1.length());
    ColognePhonetic.CologneInputBuffer localCologneInputBuffer = new ColognePhonetic.CologneInputBuffer(this, str1.toCharArray());
    int i = localCologneInputBuffer.length();
    int j = 47;
    char c1 = '-';
    while (true)
    {
      int k;
      if (i > 0)
      {
        char c2 = localCologneInputBuffer.removeNext();
        k = localCologneInputBuffer.length();
        char c3;
        label91: char c4;
        int m;
        if (k > 0)
        {
          c3 = localCologneInputBuffer.getNextChar();
          if (!arrayContains(new char[] { 65, 69, 73, 74, 79, 85, 89 }, c2))
            break label221;
          c4 = '0';
          m = k;
        }
        while (true)
        {
          if ((c4 != '-') && (((j != c4) && ((c4 != '0') || (j == 47))) || (c4 < '0') || (c4 > '8')))
            localCologneOutputBuffer.addRight(c4);
          j = c4;
          int n = m;
          c1 = c2;
          i = n;
          break;
          c3 = '-';
          break label91;
          label221: if ((c2 == 'H') || (c2 < 'A') || (c2 > 'Z'))
          {
            if (j == 47)
              break label805;
            m = k;
            c4 = '-';
          }
          else if ((c2 == 'B') || ((c2 == 'P') && (c3 != 'H')))
          {
            c4 = '1';
            m = k;
          }
          else if ((c2 == 'D') || (c2 == 'T'))
          {
            if (!arrayContains(new char[] { 83, 67, 90 }, c3))
            {
              c4 = '2';
              m = k;
            }
          }
          else if (arrayContains(new char[] { 87, 70, 80, 86 }, c2))
          {
            c4 = '3';
            m = k;
          }
          else if (arrayContains(new char[] { 71, 75, 81 }, c2))
          {
            m = k;
            c4 = '4';
          }
          else if (c2 == 'X')
          {
            if (!arrayContains(new char[] { 67, 75, 81 }, c1))
            {
              localCologneInputBuffer.addLeft('S');
              m = k + 1;
              c4 = '4';
            }
          }
          else if ((c2 == 'S') || (c2 == 'Z'))
          {
            m = k;
            c4 = '8';
          }
          else if (c2 == 'C')
          {
            if (j == 47)
            {
              if (arrayContains(new char[] { 65, 72, 75, 76, 79, 81, 82, 85, 88 }, c3))
              {
                m = k;
                c4 = '4';
              }
              else
              {
                m = k;
                c4 = '8';
              }
            }
            else
            {
              if (!arrayContains(new char[] { 83, 90 }, c1))
              {
                if (arrayContains(new char[] { 65, 72, 79, 85, 75, 81, 88 }, c3));
              }
              else
              {
                m = k;
                c4 = '8';
                continue;
              }
              m = k;
              c4 = '4';
            }
          }
          else if (arrayContains(new char[] { 84, 68, 88 }, c2))
          {
            m = k;
            c4 = '8';
          }
          else if (c2 == 'R')
          {
            c4 = '7';
            m = k;
          }
          else if (c2 == 'L')
          {
            c4 = '5';
            m = k;
          }
          else if ((c2 == 'M') || (c2 == 'N'))
          {
            c4 = '6';
            m = k;
          }
          else
          {
            m = k;
            c4 = c2;
          }
        }
      }
      str2 = localCologneOutputBuffer.toString();
      break;
      label805: i = k;
    }
  }

  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("This method’s parameter was expected to be of the type " + String.class.getName() + ". But actually it was of the type " + paramObject.getClass().getName() + ".");
    return encode((String)paramObject);
  }

  public String encode(String paramString)
  {
    return colognePhonetic(paramString);
  }

  public boolean isEncodeEqual(String paramString1, String paramString2)
  {
    return colognePhonetic(paramString1).equals(colognePhonetic(paramString2));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.language.ColognePhonetic
 * JD-Core Version:    0.6.2
 */