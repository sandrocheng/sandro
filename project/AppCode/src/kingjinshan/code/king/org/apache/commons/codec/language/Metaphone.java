package king.org.apache.commons.codec.language;

import java.util.Locale;
import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringEncoder;

public class Metaphone
  implements StringEncoder
{
  private static final String FRONTV = "EIY";
  private static final String VARSON = "CSPTG";
  private static final String VOWELS = "AEIOU";
  private int maxCodeLen = 4;

  private boolean isLastChar(int paramInt1, int paramInt2)
  {
    if (paramInt2 + 1 == paramInt1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean isNextChar(StringBuffer paramStringBuffer, int paramInt, char paramChar)
  {
    boolean bool;
    if ((paramInt >= 0) && (paramInt < paramStringBuffer.length() - 1))
      if (paramStringBuffer.charAt(paramInt + 1) == paramChar)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }

  private boolean isPreviousChar(StringBuffer paramStringBuffer, int paramInt, char paramChar)
  {
    boolean bool;
    if ((paramInt > 0) && (paramInt < paramStringBuffer.length()))
      if (paramStringBuffer.charAt(paramInt - 1) == paramChar)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }

  private boolean isVowel(StringBuffer paramStringBuffer, int paramInt)
  {
    if ("AEIOU".indexOf(paramStringBuffer.charAt(paramInt)) >= 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean regionMatch(StringBuffer paramStringBuffer, int paramInt, String paramString)
  {
    boolean bool = false;
    if (paramInt >= 0)
    {
      int i = paramInt + paramString.length() - 1;
      int j = paramStringBuffer.length();
      bool = false;
      if (i < j)
        bool = paramStringBuffer.substring(paramInt, paramInt + paramString.length()).equals(paramString);
    }
    return bool;
  }

  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("Parameter supplied to Metaphone encode is not of type java.lang.String");
    return metaphone((String)paramObject);
  }

  public String encode(String paramString)
  {
    return metaphone(paramString);
  }

  public int getMaxCodeLen()
  {
    return this.maxCodeLen;
  }

  public boolean isMetaphoneEqual(String paramString1, String paramString2)
  {
    return metaphone(paramString1).equals(metaphone(paramString2));
  }

  public String metaphone(String paramString)
  {
    String str;
    if ((paramString == null) || (paramString.length() == 0))
      str = "";
    while (true)
    {
      return str;
      if (paramString.length() == 1)
      {
        str = paramString.toUpperCase(Locale.ENGLISH);
      }
      else
      {
        char[] arrayOfChar = paramString.toUpperCase(Locale.ENGLISH).toCharArray();
        StringBuffer localStringBuffer1 = new StringBuffer(40);
        StringBuffer localStringBuffer2 = new StringBuffer(10);
        int i;
        int j;
        label145: char c;
        switch (arrayOfChar[0])
        {
        default:
          localStringBuffer1.append(arrayOfChar);
          i = localStringBuffer1.length();
          j = 0;
          if ((localStringBuffer2.length() >= getMaxCodeLen()) || (j >= i))
            break label1360;
          c = localStringBuffer1.charAt(j);
          if ((c == 'C') || (!isPreviousChar(localStringBuffer1, j, c)))
            switch (c)
            {
            default:
            case 'A':
            case 'E':
            case 'I':
            case 'O':
            case 'U':
            case 'B':
            case 'C':
            case 'D':
            case 'G':
            case 'H':
            case 'F':
            case 'J':
            case 'L':
            case 'M':
            case 'N':
            case 'R':
            case 'K':
            case 'P':
            case 'Q':
            case 'S':
            case 'T':
            case 'V':
            case 'W':
            case 'Y':
            case 'X':
            case 'Z':
            }
          break;
        case 'G':
        case 'K':
        case 'P':
        case 'A':
        case 'W':
        case 'X':
        }
        while (true)
        {
          j++;
          if (localStringBuffer2.length() <= getMaxCodeLen())
            break label145;
          localStringBuffer2.setLength(getMaxCodeLen());
          break label145;
          if (arrayOfChar[1] == 'N')
          {
            localStringBuffer1.append(arrayOfChar, 1, arrayOfChar.length - 1);
            break;
          }
          localStringBuffer1.append(arrayOfChar);
          break;
          if (arrayOfChar[1] == 'E')
          {
            localStringBuffer1.append(arrayOfChar, 1, arrayOfChar.length - 1);
            break;
          }
          localStringBuffer1.append(arrayOfChar);
          break;
          if (arrayOfChar[1] == 'R')
          {
            localStringBuffer1.append(arrayOfChar, 1, arrayOfChar.length - 1);
            break;
          }
          if (arrayOfChar[1] == 'H')
          {
            localStringBuffer1.append(arrayOfChar, 1, arrayOfChar.length - 1);
            localStringBuffer1.setCharAt(0, 'W');
            break;
          }
          localStringBuffer1.append(arrayOfChar);
          break;
          arrayOfChar[0] = 'S';
          localStringBuffer1.append(arrayOfChar);
          break;
          if (j == 0)
          {
            localStringBuffer2.append(c);
            continue;
            if ((!isPreviousChar(localStringBuffer1, j, 'M')) || (!isLastChar(i, j)))
            {
              localStringBuffer2.append(c);
              continue;
              if ((!isPreviousChar(localStringBuffer1, j, 'S')) || (isLastChar(i, j)) || ("EIY".indexOf(localStringBuffer1.charAt(j + 1)) < 0))
                if (regionMatch(localStringBuffer1, j, "CIA"))
                {
                  localStringBuffer2.append('X');
                }
                else if ((!isLastChar(i, j)) && ("EIY".indexOf(localStringBuffer1.charAt(j + 1)) >= 0))
                {
                  localStringBuffer2.append('S');
                }
                else if ((isPreviousChar(localStringBuffer1, j, 'S')) && (isNextChar(localStringBuffer1, j, 'H')))
                {
                  localStringBuffer2.append('K');
                }
                else if (isNextChar(localStringBuffer1, j, 'H'))
                {
                  if ((j == 0) && (i >= 3) && (isVowel(localStringBuffer1, 2)))
                    localStringBuffer2.append('K');
                  else
                    localStringBuffer2.append('X');
                }
                else
                {
                  localStringBuffer2.append('K');
                  continue;
                  if ((!isLastChar(i, j + 1)) && (isNextChar(localStringBuffer1, j, 'G')) && ("EIY".indexOf(localStringBuffer1.charAt(j + 2)) >= 0))
                  {
                    localStringBuffer2.append('J');
                    j += 2;
                  }
                  else
                  {
                    localStringBuffer2.append('T');
                    continue;
                    if (((!isLastChar(i, j + 1)) || (!isNextChar(localStringBuffer1, j, 'H'))) && ((isLastChar(i, j + 1)) || (!isNextChar(localStringBuffer1, j, 'H')) || (isVowel(localStringBuffer1, j + 2))) && ((j <= 0) || ((!regionMatch(localStringBuffer1, j, "GN")) && (!regionMatch(localStringBuffer1, j, "GNED")))))
                    {
                      if (isPreviousChar(localStringBuffer1, j, 'G'));
                      for (int k = 1; ; k = 0)
                      {
                        if ((isLastChar(i, j)) || ("EIY".indexOf(localStringBuffer1.charAt(j + 1)) < 0) || (k != 0))
                          break label973;
                        localStringBuffer2.append('J');
                        break;
                      }
                      label973: localStringBuffer2.append('K');
                      continue;
                      if ((!isLastChar(i, j)) && ((j <= 0) || ("CSPTG".indexOf(localStringBuffer1.charAt(j - 1)) < 0)) && (isVowel(localStringBuffer1, j + 1)))
                      {
                        localStringBuffer2.append('H');
                        continue;
                        localStringBuffer2.append(c);
                        continue;
                        if (j > 0)
                        {
                          if (!isPreviousChar(localStringBuffer1, j, 'C'))
                            localStringBuffer2.append(c);
                        }
                        else
                        {
                          localStringBuffer2.append(c);
                          continue;
                          if (isNextChar(localStringBuffer1, j, 'H'))
                          {
                            localStringBuffer2.append('F');
                          }
                          else
                          {
                            localStringBuffer2.append(c);
                            continue;
                            localStringBuffer2.append('K');
                            continue;
                            if ((regionMatch(localStringBuffer1, j, "SH")) || (regionMatch(localStringBuffer1, j, "SIO")) || (regionMatch(localStringBuffer1, j, "SIA")))
                            {
                              localStringBuffer2.append('X');
                            }
                            else
                            {
                              localStringBuffer2.append('S');
                              continue;
                              if ((regionMatch(localStringBuffer1, j, "TIA")) || (regionMatch(localStringBuffer1, j, "TIO")))
                                localStringBuffer2.append('X');
                              else if (!regionMatch(localStringBuffer1, j, "TCH"))
                                if (regionMatch(localStringBuffer1, j, "TH"))
                                {
                                  localStringBuffer2.append('0');
                                }
                                else
                                {
                                  localStringBuffer2.append('T');
                                  continue;
                                  localStringBuffer2.append('F');
                                  continue;
                                  if ((!isLastChar(i, j)) && (isVowel(localStringBuffer1, j + 1)))
                                  {
                                    localStringBuffer2.append(c);
                                    continue;
                                    localStringBuffer2.append('K');
                                    localStringBuffer2.append('S');
                                    continue;
                                    localStringBuffer2.append('S');
                                  }
                                }
                            }
                          }
                        }
                      }
                    }
                  }
                }
            }
          }
        }
        label1360: str = localStringBuffer2.toString();
      }
    }
  }

  public void setMaxCodeLen(int paramInt)
  {
    this.maxCodeLen = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.language.Metaphone
 * JD-Core Version:    0.6.2
 */