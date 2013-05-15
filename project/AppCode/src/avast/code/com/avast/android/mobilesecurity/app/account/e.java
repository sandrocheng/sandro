package com.avast.android.mobilesecurity.app.account;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.avast.android.generic.internet.c.a.av;
import java.util.Calendar;
import java.util.TimeZone;

public class e
{
  private final ContentResolver a;

  public e(Context paramContext)
  {
    this.a = paramContext.getContentResolver();
  }

  private static Calendar b()
  {
    Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
    localCalendar.set(11, 0);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    localCalendar.set(14, 0);
    return localCalendar;
  }

  public void a(int paramInt1, int paramInt2, av paramav)
  {
    f localf = new f(this.a, paramav);
    Integer[] arrayOfInteger = new Integer[2];
    arrayOfInteger[0] = Integer.valueOf(paramInt1);
    arrayOfInteger[1] = Integer.valueOf(paramInt2);
    localf.execute(arrayOfInteger);
  }

  public void a(Uri paramUri, String paramString, av paramav)
  {
    g localg = new g(this.a, paramav);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramUri.toString();
    arrayOfString[1] = paramString;
    localg.execute(arrayOfString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.e
 * JD-Core Version:    0.6.2
 */