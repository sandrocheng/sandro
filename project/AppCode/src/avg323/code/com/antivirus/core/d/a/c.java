package com.antivirus.core.d.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import com.avg.toolkit.b.e;
import java.util.Map;

public class c extends com.avg.toolkit.b.g
{
  String a;
  String b;
  String c;
  com.antivirus.core.scanners.g d;
  int e = 99999;

  public e a()
  {
    return e.c;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    int i;
    if (localBundle != null)
    {
      this.a = localBundle.getString("pkgName");
      this.b = localBundle.getString("man");
      this.c = localBundle.getString("dex");
      if (localBundle.getInt("cutoff") == 0)
      {
        i = 99999;
        this.e = i;
        this.d = ((com.antivirus.core.scanners.g)localBundle.getSerializable("loc"));
      }
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i = localBundle.getInt("cutoff");
      break;
    }
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    this.f = null;
    boolean bool;
    if (!(paramObject instanceof Map))
      bool = false;
    while (true)
    {
      return bool;
      Map localMap = (Map)paramObject;
      Object localObject1 = localMap.get("STATUS");
      if ((localObject1 == null) || (!(localObject1 instanceof String)))
      {
        bool = false;
        continue;
      }
      String str1 = (String)localObject1;
      String str2;
      String str3;
      if ((str1 != null) && (str1.equals("remove")) && (!TextUtils.isEmpty(this.a)))
      {
        Object localObject2 = localMap.get("CATID");
        if ((localObject2 == null) || (!(localObject2 instanceof String)))
        {
          bool = false;
          continue;
        }
        str2 = (String)localObject2;
        Object localObject3 = localMap.get("CATNAME");
        if ((localObject3 == null) || (!(localObject3 instanceof String)))
        {
          bool = false;
          continue;
        }
        str3 = (String)localObject3;
      }
      try
      {
        if (Integer.parseInt(str2) < this.e)
        {
          Bundle localBundle = new Bundle();
          localBundle.putString("pkgname", this.a);
          localBundle.putString("cat", str2);
          localBundle.putString("catname", str3);
          com.antivirus.core.a.a(paramContext, 2000, 11, localBundle);
        }
        bool = true;
      }
      catch (Exception localException)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  public boolean b(Context paramContext)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    arrayOfObject[2] = this.c;
    arrayOfObject[3] = Integer.valueOf(this.d.a());
    this.f = arrayOfObject;
    return true;
  }

  public int b_()
  {
    return 2005;
  }

  public String c()
  {
    return "Application.checkapk3";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.d.a.c
 * JD-Core Version:    0.6.2
 */