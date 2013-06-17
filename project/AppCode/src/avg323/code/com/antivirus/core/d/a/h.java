package com.antivirus.core.d.a;

import android.content.Context;
import android.content.Intent;
import android.os.Message;
import com.avg.toolkit.b.e;
import com.avg.toolkit.b.g;
import com.avg.toolkit.f.a;
import java.io.File;

public class h extends g
{
  private String a = "";

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
    while (true)
    {
      synchronized (com.antivirus.core.e.b.a)
      {
        com.antivirus.core.e.b localb = new com.antivirus.core.e.b();
        localb.a(paramContext);
        this.a = localb.d(paramContext);
        localb.a();
        if (this.a == null)
        {
          str = "";
          this.a = str;
          this.i = new File(paramContext.getFilesDir(), "update.flat");
          return true;
        }
      }
      String str = this.a;
    }
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    boolean bool = true;
    try
    {
      synchronized (com.antivirus.core.e.b.a)
      {
        com.antivirus.core.e.b localb = new com.antivirus.core.e.b();
        if ((paramObject != null) && ((paramObject instanceof Boolean)) && (((Boolean)paramObject).booleanValue() == bool))
        {
          if ((this.i.exists()) && (this.i.canRead()))
            localb.a(paramContext, new com.antivirus.core.b(paramContext), this.i, true);
          this.i.delete();
        }
        if (!localb.a(paramContext))
          bool = false;
        new com.antivirus.core.b(paramContext).a(System.currentTimeMillis());
        this.a = null;
        Intent localIntent = new Intent("droidsec.com.update");
        localIntent.putExtra("result", bool);
        localIntent.putExtra("size", 100);
        localIntent.putExtra("progress", 3);
        localIntent.putExtra("type", "File");
        paramContext.sendBroadcast(localIntent);
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a(localException);
        bool = false;
      }
    }
  }

  public boolean b(Context paramContext)
  {
    if (this.a == null)
      this.a = "";
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    this.f = arrayOfObject;
    return true;
  }

  public boolean b(Context paramContext, Object paramObject)
  {
    Intent localIntent = new Intent("droidsec.com.update");
    localIntent.putExtra("result", false);
    paramContext.sendBroadcast(localIntent);
    return false;
  }

  public int b_()
  {
    return 2004;
  }

  public String c()
  {
    return "SecurityUpdates.getSigsZip";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.d.a.h
 * JD-Core Version:    0.6.2
 */