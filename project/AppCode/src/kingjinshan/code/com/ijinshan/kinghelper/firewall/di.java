package com.ijinshan.kinghelper.firewall;

import android.a.t;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.os.Handler;
import android.os.Message;
import java.util.Iterator;
import java.util.List;

final class di extends Thread
{
  di(ServiceSmsGroupActivity paramServiceSmsGroupActivity, ProgressDialog paramProgressDialog, Handler paramHandler)
  {
  }

  public final void run()
  {
    Iterator localIterator = ServiceSmsGroupActivity.a(this.c).e().iterator();
    int i = 0;
    while (true)
    {
      String[] arrayOfString;
      if (localIterator.hasNext())
      {
        ej localej = (ej)localIterator.next();
        arrayOfString = new String[1];
        arrayOfString[0] = localej.b;
      }
      try
      {
        this.c.getContentResolver().delete(t.a, "address = ? and type = 1", arrayOfString);
        label71: int j = i + 1;
        this.a.setProgress(j);
        i = j;
        continue;
        Message localMessage = Message.obtain();
        this.b.sendMessage(localMessage);
        this.a.dismiss();
        return;
      }
      catch (Exception localException)
      {
        break label71;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.di
 * JD-Core Version:    0.6.2
 */