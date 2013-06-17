package com.antivirus.callmessagefilter.callblocker;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

public class c extends ContentObserver
{
  private final Uri a = Uri.parse("content://call_log/calls");
  private Context b;

  public c(Context paramContext)
  {
    super(new Handler());
    this.b = paramContext;
  }

  public void a()
  {
    try
    {
      this.b.getContentResolver().registerContentObserver(this.a, true, this);
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      while (true)
        com.avg.toolkit.f.a.a("Unable to register calls content observer");
    }
  }

  public void b()
  {
    try
    {
      this.b.getContentResolver().unregisterContentObserver(this);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a("Unable to register calls content observer");
    }
  }

  public void onChange(boolean paramBoolean)
  {
    com.antivirus.core.a.a(this.b, 12000, 2, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.callmessagefilter.callblocker.c
 * JD-Core Version:    0.6.2
 */