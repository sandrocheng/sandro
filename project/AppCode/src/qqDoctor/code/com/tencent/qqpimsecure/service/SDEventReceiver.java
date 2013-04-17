package com.tencent.qqpimsecure.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import ay;
import fi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SDEventReceiver extends BroadcastReceiver
{
  private static List<ay> b = new ArrayList();
  private String a = "SDEventReceiver";
  private boolean c = false;

  private static void a()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
      localIterator.next();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      String str = paramIntent.getAction();
      if (str != null)
      {
        new StringBuilder("action:").append(str).toString();
        if (((str.equals("android.intent.action.MEDIA_MOUNTED")) || (str.equals("android.intent.action.MEDIA_REMOVED")) || (str.equals("android.intent.action.MEDIA_EJECT"))) && (!this.c))
        {
          this.c = true;
          fi.b();
          a();
          this.c = false;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.SDEventReceiver
 * JD-Core Version:    0.6.2
 */