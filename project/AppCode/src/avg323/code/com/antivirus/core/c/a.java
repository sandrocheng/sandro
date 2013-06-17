package com.antivirus.core.c;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import com.antivirus.core.scanners.ad;

public class a extends ContentObserver
{
  private final Uri a = Uri.parse("content://sms/");
  private Context b;

  public a(Context paramContext)
  {
    super(new Handler());
    this.b = paramContext;
  }

  public void a()
  {
    this.b.getContentResolver().registerContentObserver(this.a, true, this);
  }

  public void b()
  {
    this.b.getContentResolver().unregisterContentObserver(this);
  }

  public void onChange(boolean paramBoolean)
  {
    if (ad.c());
    while (true)
    {
      return;
      com.antivirus.core.a.a(this.b, 2000, 3, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.c.a
 * JD-Core Version:    0.6.2
 */