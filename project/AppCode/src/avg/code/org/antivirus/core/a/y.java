package org.antivirus.core.a;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.c.b;

public final class y extends v
{
  private String b = "";

  public y(x paramx)
  {
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    if (this.b == null)
      this.b = "";
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.b;
    this.f = arrayOfObject;
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    while (true)
    {
      synchronized (b.a)
      {
        b localb = new b();
        localb.a(paramContext);
        this.b = localb.d(paramContext);
        localb.a();
        if (this.b == null)
        {
          str = "";
          this.b = str;
          this.j = new File(paramContext.getFilesDir(), "update.flat");
          return true;
        }
      }
      String str = this.b;
    }
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    try
    {
      synchronized (b.a)
      {
        b localb = new b();
        if ((paramObject != null) && ((paramObject instanceof Boolean)) && (((Boolean)paramObject).booleanValue() == true))
        {
          if ((this.j.exists()) && (this.j.canRead()))
            localb.a(paramContext, this.i, this.j);
          this.j.delete();
        }
        HashMap localHashMap;
        for (bool = true; ; bool = false)
        {
          this.i.setLastSecurityUpdate(System.currentTimeMillis());
          this.b = null;
          Intent localIntent = new Intent("droidsec.com.update");
          localIntent.putExtra("result", bool);
          localIntent.putExtra("size", 100);
          localIntent.putExtra("progress", 3);
          localIntent.putExtra("type", "File");
          paramContext.sendBroadcast(localIntent);
          return bool;
          localHashMap = (HashMap)paramObject;
          str = (String)localHashMap.get("type");
          if (!TextUtils.isEmpty(str))
          {
            if (!"FULL".equals(str))
              break;
            localb.a(paramContext, localHashMap);
          }
          if (localb.a(paramContext))
            break label286;
        }
        if ("INC".equals(str))
          localb.b(paramContext, localHashMap);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        String str;
        Logger.log(localException);
        boolean bool = false;
        continue;
        if (!"NOCHANGE".equals(str))
        {
          Logger.errorBadAgrument();
          continue;
          label286: bool = true;
        }
      }
    }
  }

  public final q b()
  {
    return q.c;
  }

  public final boolean b(Context paramContext)
  {
    Intent localIntent = new Intent("droidsec.com.update");
    localIntent.putExtra("result", false);
    paramContext.sendBroadcast(localIntent);
    return false;
  }

  public final int c()
  {
    return 1024;
  }

  public final String d()
  {
    return "SecurityUpdates.getSigsFlat";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.y
 * JD-Core Version:    0.6.2
 */