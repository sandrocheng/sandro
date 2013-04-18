package com.ijinshan.kinghelper.firewall.core;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.CallLog.Calls;

public final class o
  implements Runnable
{
  private String b;
  private long c = 0L;

  public o(m paramm, String paramString)
  {
    this.b = paramString;
    this.c = SystemClock.currentThreadTimeMillis();
  }

  public final void run()
  {
    m.a(this.a).removeCallbacks(this);
    ContentResolver localContentResolver = m.b(this.a).getContentResolver();
    String str = String.valueOf(System.currentTimeMillis() - 12000L);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = this.b;
    arrayOfString[1] = str;
    try
    {
      if ((localContentResolver.delete(CallLog.Calls.CONTENT_URI, "number=? and date > ?", arrayOfString) <= 0) && (20000L + this.c < System.currentTimeMillis()))
        m.a(this.a).postDelayed(this, 1000L);
      label92: return;
    }
    catch (Exception localException)
    {
      break label92;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.o
 * JD-Core Version:    0.6.2
 */