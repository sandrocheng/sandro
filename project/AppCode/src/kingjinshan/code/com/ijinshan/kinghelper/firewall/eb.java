package com.ijinshan.kinghelper.firewall;

import android.a.t;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.os.Handler;
import android.os.Message;
import java.util.Iterator;
import java.util.List;

final class eb extends Thread
{
  eb(ServicesSmsListActivity paramServicesSmsListActivity, ProgressDialog paramProgressDialog, Handler paramHandler)
  {
  }

  public final void run()
  {
    Iterator localIterator1 = ServicesSmsListActivity.e(this.c).b().iterator();
    int i = 0;
    Iterator localIterator2;
    if (localIterator1.hasNext())
      localIterator2 = ((ei)localIterator1.next()).a.iterator();
    while (localIterator2.hasNext())
    {
      ej localej = (ej)localIterator2.next();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = localej.b;
      try
      {
        this.c.getContentResolver().delete(t.a, "address = ? and type = 1", arrayOfString);
        label101: int j = i + 1;
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
        break label101;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.eb
 * JD-Core Version:    0.6.2
 */