package org.antivirus.core.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import java.util.Map;
import org.antivirus.core.AVCoreService;
import org.antivirus.core.Logger;
import org.antivirus.core.scanners.f;

public final class b extends v
{
  String a;
  String b;
  String c;
  f d;

  public b(a parama)
  {
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.b;
    arrayOfObject[2] = this.c;
    arrayOfObject[3] = Integer.valueOf(this.d.a());
    this.f = arrayOfObject;
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    if (localBundle != null)
    {
      this.a = localBundle.getString("pkgName");
      this.b = localBundle.getString("man");
      this.c = localBundle.getString("dex");
      this.d = ((f)localBundle.getSerializable("loc"));
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(Context paramContext, Object paramObject)
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
        Bundle localBundle = new Bundle();
        localBundle.putString("pkgname", this.a);
        localBundle.putString("cat", str2);
        localBundle.putString("catname", str3);
        Intent localIntent = new Intent();
        localIntent.setComponent(AVCoreService.SERVICE_IDENTIFIER);
        localIntent.putExtra("__SAC", 19);
        localIntent.putExtra("__SAD", localBundle);
        paramContext.startService(localIntent);
        bool = true;
      }
      catch (Exception localException)
      {
        while (true)
          Logger.log(localException);
      }
    }
  }

  public final q b()
  {
    return q.c;
  }

  public final int c()
  {
    return 1014;
  }

  public final String d()
  {
    return "Application.checkapk3";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.b
 * JD-Core Version:    0.6.2
 */