package king.org.apache.commons.codec.language;

import java.util.Locale;
import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringEncoder;

public class DoubleMetaphone
  implements StringEncoder
{
  private static final String[] ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER = { "ES", "EP", "EB", "EL", "EY", "IB", "IL", "IN", "IE", "EI", "ER" };
  private static final String[] L_R_N_M_B_H_F_V_W_SPACE;
  private static final String[] L_T_K_S_N_M_B_Z = { "L", "T", "K", "S", "N", "M", "B", "Z" };
  private static final String[] SILENT_START = { "GN", "KN", "PN", "WR", "PS" };
  private static final String VOWELS = "AEIOUY";
  private int maxCodeLen = 4;

  static
  {
    L_R_N_M_B_H_F_V_W_SPACE = new String[] { "L", "R", "N", "M", "B", "H", "F", "V", "W", " " };
  }

  private String cleanInput(String paramString)
  {
    String str2;
    if (paramString == null)
      str2 = null;
    while (true)
    {
      return str2;
      String str1 = paramString.trim();
      if (str1.length() == 0)
        str2 = null;
      else
        str2 = str1.toUpperCase(Locale.ENGLISH);
    }
  }

  private boolean conditionC0(String paramString, int paramInt)
  {
    boolean bool;
    if (contains(paramString, paramInt, 4, "CHIA"))
      bool = true;
    while (true)
    {
      return bool;
      if (paramInt <= 1)
      {
        bool = false;
      }
      else if (isVowel(charAt(paramString, paramInt - 2)))
      {
        bool = false;
      }
      else if (!contains(paramString, paramInt - 1, 3, "ACH"))
      {
        bool = false;
      }
      else
      {
        int i = charAt(paramString, paramInt + 2);
        if (((i != 73) && (i != 69)) || (contains(paramString, paramInt - 2, 6, "BACHER", "MACHER")))
          bool = true;
        else
          bool = false;
      }
    }
  }

  private boolean conditionCH0(String paramString, int paramInt)
  {
    boolean bool;
    if (paramInt != 0)
      bool = false;
    while (true)
    {
      return bool;
      if ((!contains(paramString, paramInt + 1, 5, "HARAC", "HARIS")) && (!contains(paramString, paramInt + 1, 3, "HOR", "HYM", "HIA", "HEM")))
        bool = false;
      else if (contains(paramString, 0, 5, "CHORE"))
        bool = false;
      else
        bool = true;
    }
  }

  private boolean conditionCH1(String paramString, int paramInt)
  {
    if ((contains(paramString, 0, 4, "VAN ", "VON ")) || (contains(paramString, 0, 3, "SCH")) || (contains(paramString, paramInt - 2, 6, "ORCHES", "ARCHIT", "ORCHID")) || (contains(paramString, paramInt + 2, 1, "T", "S")) || (((contains(paramString, paramInt - 1, 1, "A", "O", "U", "E")) || (paramInt == 0)) && ((contains(paramString, paramInt + 2, 1, L_R_N_M_B_H_F_V_W_SPACE)) || (paramInt + 1 == paramString.length() - 1))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean conditionL0(String paramString, int paramInt)
  {
    boolean bool;
    if ((paramInt == paramString.length() - 3) && (contains(paramString, paramInt - 1, 4, "ILLO", "ILLA", "ALLE")))
      bool = true;
    while (true)
    {
      return bool;
      if (((contains(paramString, paramString.length() - 2, 2, "AS", "OS")) || (contains(paramString, paramString.length() - 1, 1, "A", "O"))) && (contains(paramString, paramInt - 1, 4, "ALLE")))
        bool = true;
      else
        bool = false;
    }
  }

  private boolean conditionM0(String paramString, int paramInt)
  {
    boolean bool;
    if (charAt(paramString, paramInt + 1) == 'M')
      bool = true;
    while (true)
    {
      return bool;
      if ((contains(paramString, paramInt - 1, 3, "UMB")) && ((paramInt + 1 == paramString.length() - 1) || (contains(paramString, paramInt + 2, 2, "ER"))))
        bool = true;
      else
        bool = false;
    }
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5, paramString6 });
  }

  private static boolean contains(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    return contains(paramString1, paramInt1, paramInt2, new String[] { paramString2, paramString3, paramString4, paramString5, paramString6, paramString7 });
  }

  protected static boolean contains(String paramString, int paramInt1, int paramInt2, String[] paramArrayOfString)
  {
    int i;
    if ((paramInt1 >= 0) && (paramInt1 + paramInt2 <= paramString.length()))
    {
      String str = paramString.substring(paramInt1, paramInt1 + paramInt2);
      i = 0;
      if (i < paramArrayOfString.length)
        if (!str.equals(paramArrayOfString[i]));
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i++;
      break;
    }
  }

  private int handleAEIOUY(DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (paramInt == 0)
      paramDoubleMetaphoneResult.append('A');
    return paramInt + 1;
  }

  private int handleC(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    int i;
    if (conditionC0(paramString, paramInt))
    {
      paramDoubleMetaphoneResult.append('K');
      i = paramInt + 2;
    }
    while (true)
    {
      return i;
      if ((paramInt == 0) && (contains(paramString, paramInt, 6, "CAESAR")))
      {
        paramDoubleMetaphoneResult.append('S');
        i = paramInt + 2;
      }
      else if (contains(paramString, paramInt, 2, "CH"))
      {
        i = handleCH(paramString, paramDoubleMetaphoneResult, paramInt);
      }
      else if ((contains(paramString, paramInt, 2, "CZ")) && (!contains(paramString, paramInt - 2, 4, "WICZ")))
      {
        paramDoubleMetaphoneResult.append('S', 'X');
        i = paramInt + 2;
      }
      else if (contains(paramString, paramInt + 1, 3, "CIA"))
      {
        paramDoubleMetaphoneResult.append('X');
        i = paramInt + 3;
      }
      else if ((contains(paramString, paramInt, 2, "CC")) && ((paramInt != 1) || (charAt(paramString, 0) != 'M')))
      {
        i = handleCC(paramString, paramDoubleMetaphoneResult, paramInt);
      }
      else if (contains(paramString, paramInt, 2, "CK", "CG", "CQ"))
      {
        paramDoubleMetaphoneResult.append('K');
        i = paramInt + 2;
      }
      else
      {
        if (contains(paramString, paramInt, 2, "CI", "CE", "CY"))
        {
          if (contains(paramString, paramInt, 3, "CIO", "CIE", "CIA"))
            paramDoubleMetaphoneResult.append('S', 'X');
          while (true)
          {
            i = paramInt + 2;
            break;
            paramDoubleMetaphoneResult.append('S');
          }
        }
        paramDoubleMetaphoneResult.append('K');
        if (contains(paramString, paramInt + 1, 2, " C", " Q", " G"))
          i = paramInt + 3;
        else if ((contains(paramString, paramInt + 1, 1, "C", "K", "Q")) && (!contains(paramString, paramInt + 1, 2, "CE", "CI")))
          i = paramInt + 2;
        else
          i = paramInt + 1;
      }
    }
  }

  private int handleCC(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if ((contains(paramString, paramInt + 2, 1, "I", "E", "H")) && (!contains(paramString, paramInt + 2, 2, "HU")))
      if (((paramInt == 1) && (charAt(paramString, paramInt - 1) == 'A')) || (contains(paramString, paramInt - 1, 5, "UCCEE", "UCCES")))
        paramDoubleMetaphoneResult.append("KS");
    for (int i = paramInt + 3; ; i = paramInt + 2)
    {
      return i;
      paramDoubleMetaphoneResult.append('X');
      break;
      paramDoubleMetaphoneResult.append('K');
    }
  }

  private int handleCH(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    int i;
    if ((paramInt > 0) && (contains(paramString, paramInt, 4, "CHAE")))
    {
      paramDoubleMetaphoneResult.append('K', 'X');
      i = paramInt + 2;
    }
    while (true)
    {
      return i;
      if (conditionCH0(paramString, paramInt))
      {
        paramDoubleMetaphoneResult.append('K');
        i = paramInt + 2;
      }
      else
      {
        if (!conditionCH1(paramString, paramInt))
          break;
        paramDoubleMetaphoneResult.append('K');
        i = paramInt + 2;
      }
    }
    if (paramInt > 0)
      if (contains(paramString, 0, 2, "MC"))
        paramDoubleMetaphoneResult.append('K');
    while (true)
    {
      i = paramInt + 2;
      break;
      paramDoubleMetaphoneResult.append('X', 'K');
      continue;
      paramDoubleMetaphoneResult.append('X');
    }
  }

  private int handleD(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    int i;
    if (contains(paramString, paramInt, 2, "DG"))
      if (contains(paramString, paramInt + 2, 1, "I", "E", "Y"))
      {
        paramDoubleMetaphoneResult.append('J');
        i = paramInt + 3;
      }
    while (true)
    {
      return i;
      paramDoubleMetaphoneResult.append("TK");
      i = paramInt + 2;
      continue;
      if (contains(paramString, paramInt, 2, "DT", "DD"))
      {
        paramDoubleMetaphoneResult.append('T');
        i = paramInt + 2;
      }
      else
      {
        paramDoubleMetaphoneResult.append('T');
        i = paramInt + 1;
      }
    }
  }

  private int handleG(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    int i;
    if (charAt(paramString, paramInt + 1) == 'H')
      i = handleGH(paramString, paramDoubleMetaphoneResult, paramInt);
    while (true)
    {
      return i;
      if (charAt(paramString, paramInt + 1) == 'N')
      {
        if ((paramInt == 1) && (isVowel(charAt(paramString, 0))) && (!paramBoolean))
          paramDoubleMetaphoneResult.append("KN", "N");
        while (true)
        {
          i = paramInt + 2;
          break;
          if ((!contains(paramString, paramInt + 2, 2, "EY")) && (charAt(paramString, paramInt + 1) != 'Y') && (!paramBoolean))
            paramDoubleMetaphoneResult.append("N", "KN");
          else
            paramDoubleMetaphoneResult.append("KN");
        }
      }
      if ((contains(paramString, paramInt + 1, 2, "LI")) && (!paramBoolean))
      {
        paramDoubleMetaphoneResult.append("KL", "L");
        i = paramInt + 2;
      }
      else if ((paramInt == 0) && ((charAt(paramString, paramInt + 1) == 'Y') || (contains(paramString, paramInt + 1, 2, ES_EP_EB_EL_EY_IB_IL_IN_IE_EI_ER))))
      {
        paramDoubleMetaphoneResult.append('K', 'J');
        i = paramInt + 2;
      }
      else if (((contains(paramString, paramInt + 1, 2, "ER")) || (charAt(paramString, paramInt + 1) == 'Y')) && (!contains(paramString, 0, 6, "DANGER", "RANGER", "MANGER")) && (!contains(paramString, paramInt - 1, 1, "E", "I")) && (!contains(paramString, paramInt - 1, 3, "RGY", "OGY")))
      {
        paramDoubleMetaphoneResult.append('K', 'J');
        i = paramInt + 2;
      }
      else
      {
        if ((contains(paramString, paramInt + 1, 1, "E", "I", "Y")) || (contains(paramString, paramInt - 1, 4, "AGGI", "OGGI")))
        {
          if ((contains(paramString, 0, 4, "VAN ", "VON ")) || (contains(paramString, 0, 3, "SCH")) || (contains(paramString, paramInt + 1, 2, "ET")))
            paramDoubleMetaphoneResult.append('K');
          while (true)
          {
            i = paramInt + 2;
            break;
            if (contains(paramString, paramInt + 1, 3, "IER"))
              paramDoubleMetaphoneResult.append('J');
            else
              paramDoubleMetaphoneResult.append('J', 'K');
          }
        }
        if (charAt(paramString, paramInt + 1) == 'G')
        {
          i = paramInt + 2;
          paramDoubleMetaphoneResult.append('K');
        }
        else
        {
          i = paramInt + 1;
          paramDoubleMetaphoneResult.append('K');
        }
      }
    }
  }

  private int handleGH(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if ((paramInt > 0) && (!isVowel(charAt(paramString, paramInt - 1))))
      paramDoubleMetaphoneResult.append('K');
    while (true)
    {
      int i = paramInt + 2;
      while (true)
      {
        return i;
        if (paramInt == 0)
        {
          if (charAt(paramString, paramInt + 2) == 'I')
            paramDoubleMetaphoneResult.append('J');
          while (true)
          {
            i = paramInt + 2;
            break;
            paramDoubleMetaphoneResult.append('K');
          }
        }
        if (((paramInt <= 1) || (!contains(paramString, paramInt - 2, 1, "B", "H", "D"))) && ((paramInt <= 2) || (!contains(paramString, paramInt - 3, 1, "B", "H", "D"))) && ((paramInt <= 3) || (!contains(paramString, paramInt - 4, 1, "B", "H"))))
          break;
        i = paramInt + 2;
      }
      if ((paramInt > 2) && (charAt(paramString, paramInt - 1) == 'U') && (contains(paramString, paramInt - 3, 1, "C", "G", "L", "R", "T")))
        paramDoubleMetaphoneResult.append('F');
      else if ((paramInt > 0) && (charAt(paramString, paramInt - 1) != 'I'))
        paramDoubleMetaphoneResult.append('K');
    }
  }

  private int handleH(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (((paramInt == 0) || (isVowel(charAt(paramString, paramInt - 1)))) && (isVowel(charAt(paramString, paramInt + 1))))
      paramDoubleMetaphoneResult.append('H');
    for (int i = paramInt + 2; ; i = paramInt + 1)
      return i;
  }

  private int handleJ(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    int i;
    if ((contains(paramString, paramInt, 4, "JOSE")) || (contains(paramString, 0, 4, "SAN ")))
      if (((paramInt == 0) && (charAt(paramString, paramInt + 4) == ' ')) || (paramString.length() == 4) || (contains(paramString, 0, 4, "SAN ")))
      {
        paramDoubleMetaphoneResult.append('H');
        i = paramInt + 1;
      }
    while (true)
    {
      return i;
      paramDoubleMetaphoneResult.append('J', 'H');
      break;
      if ((paramInt == 0) && (!contains(paramString, paramInt, 4, "JOSE")))
        paramDoubleMetaphoneResult.append('J', 'A');
      while (true)
      {
        if (charAt(paramString, paramInt + 1) != 'J')
          break label249;
        i = paramInt + 2;
        break;
        if ((isVowel(charAt(paramString, paramInt - 1))) && (!paramBoolean) && ((charAt(paramString, paramInt + 1) == 'A') || (charAt(paramString, paramInt + 1) == 'O')))
          paramDoubleMetaphoneResult.append('J', 'H');
        else if (paramInt == paramString.length() - 1)
          paramDoubleMetaphoneResult.append('J', ' ');
        else if ((!contains(paramString, paramInt + 1, 1, L_T_K_S_N_M_B_Z)) && (!contains(paramString, paramInt - 1, 1, "S", "K", "L")))
          paramDoubleMetaphoneResult.append('J');
      }
      label249: i = paramInt + 1;
    }
  }

  private int handleL(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    int i;
    if (charAt(paramString, paramInt + 1) == 'L')
      if (conditionL0(paramString, paramInt))
      {
        paramDoubleMetaphoneResult.appendPrimary('L');
        i = paramInt + 2;
      }
    while (true)
    {
      return i;
      paramDoubleMetaphoneResult.append('L');
      break;
      i = paramInt + 1;
      paramDoubleMetaphoneResult.append('L');
    }
  }

  private int handleP(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    int i;
    if (charAt(paramString, paramInt + 1) == 'H')
    {
      paramDoubleMetaphoneResult.append('F');
      i = paramInt + 2;
    }
    while (true)
    {
      return i;
      paramDoubleMetaphoneResult.append('P');
      if (contains(paramString, paramInt + 1, 1, "P", "B"))
        i = paramInt + 2;
      else
        i = paramInt + 1;
    }
  }

  private int handleR(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    if ((paramInt == paramString.length() - 1) && (!paramBoolean) && (contains(paramString, paramInt - 2, 2, "IE")) && (!contains(paramString, paramInt - 4, 2, "ME", "MA")))
    {
      paramDoubleMetaphoneResult.appendAlternate('R');
      if (charAt(paramString, paramInt + 1) != 'R')
        break label81;
    }
    label81: for (int i = paramInt + 2; ; i = paramInt + 1)
    {
      return i;
      paramDoubleMetaphoneResult.append('R');
      break;
    }
  }

  private int handleS(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    int i;
    if (contains(paramString, paramInt - 1, 3, "ISL", "YSL"))
      i = paramInt + 1;
    while (true)
    {
      return i;
      if ((paramInt == 0) && (contains(paramString, paramInt, 5, "SUGAR")))
      {
        paramDoubleMetaphoneResult.append('X', 'S');
        i = paramInt + 1;
      }
      else
      {
        if (contains(paramString, paramInt, 2, "SH"))
        {
          if (contains(paramString, paramInt + 1, 4, "HEIM", "HOEK", "HOLM", "HOLZ"))
            paramDoubleMetaphoneResult.append('S');
          while (true)
          {
            i = paramInt + 2;
            break;
            paramDoubleMetaphoneResult.append('X');
          }
        }
        if ((contains(paramString, paramInt, 3, "SIO", "SIA")) || (contains(paramString, paramInt, 4, "SIAN")))
        {
          if (paramBoolean)
            paramDoubleMetaphoneResult.append('S');
          while (true)
          {
            i = paramInt + 3;
            break;
            paramDoubleMetaphoneResult.append('S', 'X');
          }
        }
        if (((paramInt == 0) && (contains(paramString, paramInt + 1, 1, "M", "N", "L", "W"))) || (contains(paramString, paramInt + 1, 1, "Z")))
        {
          paramDoubleMetaphoneResult.append('S', 'X');
          if (contains(paramString, paramInt + 1, 1, "Z"))
            i = paramInt + 2;
          else
            i = paramInt + 1;
        }
        else if (contains(paramString, paramInt, 2, "SC"))
        {
          i = handleSC(paramString, paramDoubleMetaphoneResult, paramInt);
        }
        else
        {
          if ((paramInt == paramString.length() - 1) && (contains(paramString, paramInt - 2, 2, "AI", "OI")))
            paramDoubleMetaphoneResult.appendAlternate('S');
          while (true)
          {
            if (!contains(paramString, paramInt + 1, 1, "S", "Z"))
              break label334;
            i = paramInt + 2;
            break;
            paramDoubleMetaphoneResult.append('S');
          }
          label334: i = paramInt + 1;
        }
      }
    }
  }

  private int handleSC(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    if (charAt(paramString, paramInt + 2) == 'H')
      if (contains(paramString, paramInt + 3, 2, "OO", "ER", "EN", "UY", "ED", "EM"))
        if (contains(paramString, paramInt + 3, 2, "ER", "EN"))
          paramDoubleMetaphoneResult.append("X", "SK");
    while (true)
    {
      return paramInt + 3;
      paramDoubleMetaphoneResult.append("SK");
      continue;
      if ((paramInt == 0) && (!isVowel(charAt(paramString, 3))) && (charAt(paramString, 3) != 'W'))
      {
        paramDoubleMetaphoneResult.append('X', 'S');
      }
      else
      {
        paramDoubleMetaphoneResult.append('X');
        continue;
        if (contains(paramString, paramInt + 2, 1, "I", "E", "Y"))
          paramDoubleMetaphoneResult.append('S');
        else
          paramDoubleMetaphoneResult.append("SK");
      }
    }
  }

  private int handleT(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    int i;
    if (contains(paramString, paramInt, 4, "TION"))
    {
      paramDoubleMetaphoneResult.append('X');
      i = paramInt + 3;
    }
    while (true)
    {
      return i;
      if (contains(paramString, paramInt, 3, "TIA", "TCH"))
      {
        paramDoubleMetaphoneResult.append('X');
        i = paramInt + 3;
      }
      else
      {
        if ((contains(paramString, paramInt, 2, "TH")) || (contains(paramString, paramInt, 3, "TTH")))
        {
          if ((contains(paramString, paramInt + 2, 2, "OM", "AM")) || (contains(paramString, 0, 4, "VAN ", "VON ")) || (contains(paramString, 0, 3, "SCH")))
            paramDoubleMetaphoneResult.append('T');
          while (true)
          {
            i = paramInt + 2;
            break;
            paramDoubleMetaphoneResult.append('0', 'T');
          }
        }
        paramDoubleMetaphoneResult.append('T');
        if (contains(paramString, paramInt + 1, 1, "T", "D"))
          i = paramInt + 2;
        else
          i = paramInt + 1;
      }
    }
  }

  private int handleW(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    int i;
    if (contains(paramString, paramInt, 2, "WR"))
    {
      paramDoubleMetaphoneResult.append('R');
      i = paramInt + 2;
    }
    while (true)
    {
      return i;
      if ((paramInt == 0) && ((isVowel(charAt(paramString, paramInt + 1))) || (contains(paramString, paramInt, 2, "WH"))))
      {
        if (isVowel(charAt(paramString, paramInt + 1)))
          paramDoubleMetaphoneResult.append('A', 'F');
        while (true)
        {
          i = paramInt + 1;
          break;
          paramDoubleMetaphoneResult.append('A');
        }
      }
      if (((paramInt == paramString.length() - 1) && (isVowel(charAt(paramString, paramInt - 1)))) || (contains(paramString, paramInt - 1, 5, "EWSKI", "EWSKY", "OWSKI", "OWSKY")) || (contains(paramString, 0, 3, "SCH")))
        paramDoubleMetaphoneResult.appendAlternate('F');
      while (!contains(paramString, paramInt, 4, "WICZ", "WITZ"))
      {
        i = paramInt + 1;
        break;
      }
      paramDoubleMetaphoneResult.append("TS", "FX");
      i = paramInt + 4;
    }
  }

  private int handleX(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt)
  {
    int i;
    if (paramInt == 0)
    {
      paramDoubleMetaphoneResult.append('S');
      i = paramInt + 1;
    }
    while (true)
    {
      return i;
      if ((paramInt != paramString.length() - 1) || ((!contains(paramString, paramInt - 3, 3, "IAU", "EAU")) && (!contains(paramString, paramInt - 2, 2, "AU", "OU"))))
        paramDoubleMetaphoneResult.append("KS");
      if (contains(paramString, paramInt + 1, 1, "C", "X"))
        i = paramInt + 2;
      else
        i = paramInt + 1;
    }
  }

  private int handleZ(String paramString, DoubleMetaphone.DoubleMetaphoneResult paramDoubleMetaphoneResult, int paramInt, boolean paramBoolean)
  {
    int i;
    if (charAt(paramString, paramInt + 1) == 'H')
    {
      paramDoubleMetaphoneResult.append('J');
      i = paramInt + 2;
    }
    while (true)
    {
      return i;
      if ((contains(paramString, paramInt + 1, 2, "ZO", "ZI", "ZA")) || ((paramBoolean) && (paramInt > 0) && (charAt(paramString, paramInt - 1) != 'T')))
        paramDoubleMetaphoneResult.append("S", "TS");
      while (true)
      {
        if (charAt(paramString, paramInt + 1) != 'Z')
          break label108;
        i = paramInt + 2;
        break;
        paramDoubleMetaphoneResult.append('S');
      }
      label108: i = paramInt + 1;
    }
  }

  private boolean isSilentStart(String paramString)
  {
    int i = 0;
    if (i < SILENT_START.length)
      if (!paramString.startsWith(SILENT_START[i]));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i++;
      break;
    }
  }

  private boolean isSlavoGermanic(String paramString)
  {
    if ((paramString.indexOf('W') >= 0) || (paramString.indexOf('K') >= 0) || (paramString.indexOf("CZ") >= 0) || (paramString.indexOf("WITZ") >= 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean isVowel(char paramChar)
  {
    if ("AEIOUY".indexOf(paramChar) != -1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected char charAt(String paramString, int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= paramString.length()));
    for (char c = '\000'; ; c = paramString.charAt(paramInt))
      return c;
  }

  public String doubleMetaphone(String paramString)
  {
    return doubleMetaphone(paramString, false);
  }

  public String doubleMetaphone(String paramString, boolean paramBoolean)
  {
    String str1 = cleanInput(paramString);
    String str2;
    if (str1 == null)
      str2 = null;
    while (true)
    {
      return str2;
      boolean bool = isSlavoGermanic(str1);
      int i;
      DoubleMetaphone.DoubleMetaphoneResult localDoubleMetaphoneResult;
      if (isSilentStart(str1))
      {
        i = 1;
        localDoubleMetaphoneResult = new DoubleMetaphone.DoubleMetaphoneResult(this, getMaxCodeLen());
      }
      while (true)
      {
        if ((localDoubleMetaphoneResult.isComplete()) || (i > str1.length() - 1))
          break label778;
        switch (str1.charAt(i))
        {
        default:
          i++;
          continue;
          i = 0;
          break;
        case 'A':
        case 'E':
        case 'I':
        case 'O':
        case 'U':
        case 'Y':
          i = handleAEIOUY(localDoubleMetaphoneResult, i);
          break;
        case 'B':
          localDoubleMetaphoneResult.append('P');
          if (charAt(str1, i + 1) == 'B')
            i += 2;
          else
            i++;
          break;
        case 'Ç':
          localDoubleMetaphoneResult.append('S');
          i++;
          break;
        case 'C':
          i = handleC(str1, localDoubleMetaphoneResult, i);
          break;
        case 'D':
          i = handleD(str1, localDoubleMetaphoneResult, i);
          break;
        case 'F':
          localDoubleMetaphoneResult.append('F');
          if (charAt(str1, i + 1) == 'F')
            i += 2;
          else
            i++;
          break;
        case 'G':
          i = handleG(str1, localDoubleMetaphoneResult, i, bool);
          break;
        case 'H':
          i = handleH(str1, localDoubleMetaphoneResult, i);
          break;
        case 'J':
          i = handleJ(str1, localDoubleMetaphoneResult, i, bool);
          break;
        case 'K':
          localDoubleMetaphoneResult.append('K');
          if (charAt(str1, i + 1) == 'K')
            i += 2;
          else
            i++;
          break;
        case 'L':
          i = handleL(str1, localDoubleMetaphoneResult, i);
          break;
        case 'M':
          localDoubleMetaphoneResult.append('M');
          if (conditionM0(str1, i))
            i += 2;
          else
            i++;
          break;
        case 'N':
          localDoubleMetaphoneResult.append('N');
          if (charAt(str1, i + 1) == 'N')
            i += 2;
          else
            i++;
          break;
        case 'Ñ':
          localDoubleMetaphoneResult.append('N');
          i++;
          break;
        case 'P':
          i = handleP(str1, localDoubleMetaphoneResult, i);
          break;
        case 'Q':
          localDoubleMetaphoneResult.append('K');
          if (charAt(str1, i + 1) == 'Q')
            i += 2;
          else
            i++;
          break;
        case 'R':
          i = handleR(str1, localDoubleMetaphoneResult, i, bool);
          break;
        case 'S':
          i = handleS(str1, localDoubleMetaphoneResult, i, bool);
          break;
        case 'T':
          i = handleT(str1, localDoubleMetaphoneResult, i);
          break;
        case 'V':
          localDoubleMetaphoneResult.append('F');
          if (charAt(str1, i + 1) == 'V')
            i += 2;
          else
            i++;
          break;
        case 'W':
          i = handleW(str1, localDoubleMetaphoneResult, i);
          break;
        case 'X':
          i = handleX(str1, localDoubleMetaphoneResult, i);
          break;
        case 'Z':
          i = handleZ(str1, localDoubleMetaphoneResult, i, bool);
        }
      }
      label778: if (paramBoolean)
        str2 = localDoubleMetaphoneResult.getAlternate();
      else
        str2 = localDoubleMetaphoneResult.getPrimary();
    }
  }

  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("DoubleMetaphone encode parameter is not of type String");
    return doubleMetaphone((String)paramObject);
  }

  public String encode(String paramString)
  {
    return doubleMetaphone(paramString);
  }

  public int getMaxCodeLen()
  {
    return this.maxCodeLen;
  }

  public boolean isDoubleMetaphoneEqual(String paramString1, String paramString2)
  {
    return isDoubleMetaphoneEqual(paramString1, paramString2, false);
  }

  public boolean isDoubleMetaphoneEqual(String paramString1, String paramString2, boolean paramBoolean)
  {
    return doubleMetaphone(paramString1, paramBoolean).equals(doubleMetaphone(paramString2, paramBoolean));
  }

  public void setMaxCodeLen(int paramInt)
  {
    this.maxCodeLen = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.language.DoubleMetaphone
 * JD-Core Version:    0.6.2
 */