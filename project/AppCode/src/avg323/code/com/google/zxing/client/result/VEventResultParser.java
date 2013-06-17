package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.List;

public final class VEventResultParser extends ResultParser
{
  private static String matchSingleVCardPrefixedField(CharSequence paramCharSequence, String paramString, boolean paramBoolean)
  {
    List localList = VCardResultParser.matchSingleVCardPrefixedField(paramCharSequence, paramString, paramBoolean);
    if ((localList == null) || (localList.isEmpty()));
    for (String str = null; ; str = (String)localList.get(0))
      return str;
  }

  public CalendarParsedResult parse(Result paramResult)
  {
    double d1 = (0.0D / 0.0D);
    String str1 = paramResult.getText();
    CalendarParsedResult localCalendarParsedResult;
    if (str1 == null)
      localCalendarParsedResult = null;
    while (true)
    {
      return localCalendarParsedResult;
      if (str1.indexOf("BEGIN:VEVENT") < 0)
      {
        localCalendarParsedResult = null;
      }
      else
      {
        String str2 = matchSingleVCardPrefixedField("SUMMARY", str1, true);
        String str3 = matchSingleVCardPrefixedField("DTSTART", str1, true);
        if (str3 == null)
        {
          localCalendarParsedResult = null;
        }
        else
        {
          String str4 = matchSingleVCardPrefixedField("DTEND", str1, true);
          String str5 = matchSingleVCardPrefixedField("LOCATION", str1, true);
          String str6 = matchSingleVCardPrefixedField("DESCRIPTION", str1, true);
          String str7 = matchSingleVCardPrefixedField("GEO", str1, true);
          double d2;
          if (str7 == null)
            d2 = d1;
          while (true)
          {
            try
            {
              localCalendarParsedResult = new CalendarParsedResult(str2, str3, str4, str5, null, str6, d2, d1);
            }
            catch (IllegalArgumentException localIllegalArgumentException)
            {
              localCalendarParsedResult = null;
            }
            break;
            int i = str7.indexOf(';');
            try
            {
              d2 = Double.parseDouble(str7.substring(0, i));
              double d3 = Double.parseDouble(str7.substring(i + 1));
              d1 = d3;
            }
            catch (NumberFormatException localNumberFormatException)
            {
              localCalendarParsedResult = null;
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.VEventResultParser
 * JD-Core Version:    0.6.2
 */