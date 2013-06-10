package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class GeoResultParser extends ResultParser
{
  private static final Pattern GEO_URL_PATTERN = Pattern.compile("geo:([\\-0-9.]+),([\\-0-9.]+)(?:,([\\-0-9.]+))?(?:\\?(.*))?", 2);

  public final GeoParsedResult parse(Result paramResult)
  {
    double d1 = 0.0D;
    String str1 = paramResult.getText();
    GeoParsedResult localGeoParsedResult = null;
    if (str1 == null);
    while (true)
    {
      return localGeoParsedResult;
      Matcher localMatcher = GEO_URL_PATTERN.matcher(str1);
      boolean bool1 = localMatcher.matches();
      localGeoParsedResult = null;
      if (bool1)
      {
        String str2 = localMatcher.group(4);
        try
        {
          double d2 = Double.parseDouble(localMatcher.group(1));
          boolean bool2 = d2 < 90.0D;
          localGeoParsedResult = null;
          if (!bool2)
          {
            boolean bool3 = d2 < -90.0D;
            localGeoParsedResult = null;
            if (!bool3)
            {
              double d3 = Double.parseDouble(localMatcher.group(2));
              boolean bool4 = d3 < 180.0D;
              localGeoParsedResult = null;
              if (!bool4)
              {
                boolean bool5 = d3 < -180.0D;
                localGeoParsedResult = null;
                if (!bool5)
                {
                  String str3 = localMatcher.group(3);
                  if (str3 == null);
                  while (true)
                  {
                    localGeoParsedResult = new GeoParsedResult(d2, d3, d1, str2);
                    break;
                    double d4 = Double.parseDouble(localMatcher.group(3));
                    boolean bool6 = d4 < d1;
                    localGeoParsedResult = null;
                    if (bool6)
                      break;
                    d1 = d4;
                  }
                }
              }
            }
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          localGeoParsedResult = null;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.GeoResultParser
 * JD-Core Version:    0.6.2
 */