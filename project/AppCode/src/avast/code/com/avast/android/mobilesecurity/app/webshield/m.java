package com.avast.android.mobilesecurity.app.webshield;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Date;

class m extends Handler
{
  public m(WebshieldService paramWebshieldService, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    n localn = (n)paramMessage.obj;
    if (localn.g() != null);
    for (String str = localn.g() + "=0"; ; str = null)
      try
      {
        Cursor localCursor2 = this.a.getContentResolver().query(localn.b(), localn.d(), str, null, localn.e() + " DESC ");
        localCursor1 = localCursor2;
        if (localCursor1 == null)
          return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          Cursor localCursor1 = null;
          continue;
          if (!localCursor1.moveToFirst())
          {
            localCursor1.close();
          }
          else
          {
            int i = localCursor1.getColumnIndex(localn.e());
            int j = localCursor1.getColumnIndex(localn.f());
            if (WebshieldService.b(this.a).before(new Date(localCursor1.getLong(i))))
            {
              WebshieldService.b(this.a).setTime(localCursor1.getLong(i));
              com.avast.android.generic.util.m.c(localn + " browser surfed to " + localCursor1.getString(j));
              WebshieldService.a(this.a, localCursor1.getString(j), localn);
            }
            localCursor1.close();
          }
        }
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.m
 * JD-Core Version:    0.6.2
 */