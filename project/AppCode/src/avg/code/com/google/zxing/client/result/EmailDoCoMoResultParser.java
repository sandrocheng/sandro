package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class EmailDoCoMoResultParser extends AbstractDoCoMoResultParser
{
  private static final Pattern ATEXT_ALPHANUMERIC = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

  static boolean isBasicallyValidEmailAddress(String paramString)
  {
    if ((paramString != null) && (ATEXT_ALPHANUMERIC.matcher(paramString).matches()) && (paramString.indexOf('@') >= 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final EmailAddressParsedResult parse(Result paramResult)
  {
    String str1 = paramResult.getText();
    boolean bool1 = str1.startsWith("MATMSG:");
    EmailAddressParsedResult localEmailAddressParsedResult = null;
    if (!bool1);
    while (true)
    {
      return localEmailAddressParsedResult;
      String[] arrayOfString = matchDoCoMoPrefixedField("TO:", str1, true);
      localEmailAddressParsedResult = null;
      if (arrayOfString != null)
      {
        String str2 = arrayOfString[0];
        boolean bool2 = isBasicallyValidEmailAddress(str2);
        localEmailAddressParsedResult = null;
        if (bool2)
          localEmailAddressParsedResult = new EmailAddressParsedResult(str2, matchSingleDoCoMoPrefixedField("SUB:", str1, false), matchSingleDoCoMoPrefixedField("BODY:", str1, false), "mailto:" + str2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.EmailDoCoMoResultParser
 * JD-Core Version:    0.6.2
 */