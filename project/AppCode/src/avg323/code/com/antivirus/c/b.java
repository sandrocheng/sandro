package com.antivirus.c;

import android.content.Context;
import android.text.TextUtils;
import com.antivirus.wipe.AccountWrapper;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b
{
  public static String a(Context paramContext)
  {
    return new AccountWrapper().getNewMainMailAccount(paramContext);
  }

  public static boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool;
    if ((!paramBoolean) && (paramString.length() == 0))
      bool = true;
    while (true)
    {
      return bool;
      if ((paramBoolean) && (TextUtils.isEmpty(paramString)))
        bool = false;
      else
        bool = Pattern.compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$").matcher(paramString).matches();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.c.b
 * JD-Core Version:    0.6.2
 */