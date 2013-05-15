package com.avast.android.generic.internet;

import com.avast.a.a.a.a.m;
import com.avast.android.generic.ae;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.p;
import com.avast.android.generic.util.t;
import com.avast.android.generic.util.z;

public abstract class j
{
  public static String a(AvastService paramAvastService, ae paramae, String paramString)
  {
    String str1 = p.a(paramString, false, false);
    String str2 = paramae.z();
    String str3 = str2 + " ";
    String str4 = str3 + paramae.x() + " M ";
    String str5 = str4 + z.i(paramAvastService) + " ";
    return str5 + str1;
  }

  public static String a(AvastService paramAvastService, ae paramae, String paramString1, String paramString2, String paramString3, m paramm)
  {
    if (paramString3 != null);
    try
    {
      if (!paramString3.equals(""))
      {
        String str7 = p.a(paramString3, true, true);
        paramString3 = str7;
      }
      String str1 = paramString1 + " ";
      String str2 = str1 + paramae.x() + " E ";
      String str3 = str2 + z.i(paramAvastService) + " ";
      String str4 = str3 + paramString2 + " ";
      String str5 = str4 + paramm.ordinal();
      StringBuilder localStringBuilder = new StringBuilder().append(str5).append(" ");
      if (paramString3 != null)
      {
        str6 = " " + paramString3;
        return str6;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        t.a("AvastComms", paramAvastService, "InetSMS, Can not encode error message", localException);
        continue;
        String str6 = "";
      }
    }
  }

  public static String a(AvastService paramAvastService, ae paramae, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramString2 != null);
    try
    {
      String str5 = p.a(paramString2, true, true);
      paramString2 = str5;
      String str1 = paramae.z();
      str2 = str1 + " ";
      if (paramBoolean)
      {
        str3 = str2 + paramae.x() + " P ";
        StringBuilder localStringBuilder = new StringBuilder().append(str3).append(paramString1).append(" ").append(z.i(paramAvastService)).append(" ");
        if (paramString2 == null)
          break label195;
        str4 = " " + paramString2;
        return str4;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str2;
        t.a("AvastComms", paramAvastService, "InetSMS, Can not encode success message", localException);
        continue;
        String str3 = str2 + paramae.x() + " S ";
        continue;
        label195: String str4 = "";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.j
 * JD-Core Version:    0.6.2
 */