package com.avast.android.generic.b;

import android.content.Context;
import android.text.TextUtils;
import com.avast.android.generic.util.z;

public class k
{
  public r a;
  public String b;
  public String c;

  public k()
  {
    this.a = r.a;
    this.b = null;
  }

  public k(Context paramContext, String paramString1, String paramString2)
  {
    this.a = r.d;
    this.b = paramString1;
    if (TextUtils.isEmpty(paramString2))
      throw new Exception("Target tool is empty");
    if (paramString2.equalsIgnoreCase("MS"))
      paramString2 = "mobilesecurity";
    label147: 
    while (true)
    {
      String str1 = "com.avast.android." + paramString2.toLowerCase();
      String str2;
      if (!z.b(paramContext, str1))
      {
        throw new Exception("Target tool not found");
        if (paramString2.equalsIgnoreCase("AT"))
        {
          str2 = z.b(paramContext);
          if (str2 == null)
            throw new Exception("Target tool not found");
        }
      }
      for (this.c = str2; ; this.c = str1)
      {
        return;
        if (!paramString2.equalsIgnoreCase("BU"))
          break label147;
        paramString2 = "backup";
        break;
      }
    }
  }

  public k(r paramr, String paramString)
  {
    this.a = paramr;
    this.b = paramString;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.k
 * JD-Core Version:    0.6.2
 */