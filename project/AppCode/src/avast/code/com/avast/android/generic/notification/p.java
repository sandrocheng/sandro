package com.avast.android.generic.notification;

import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.NotificationCompat.Builder;
import com.avast.android.generic.ae;
import com.avast.android.generic.x;
import java.util.Map;

class p
  implements o
{
  private p(j paramj)
  {
  }

  public Notification a()
  {
    CharSequence localCharSequence1 = j.b(this.a).getText(this.a.f());
    CharSequence localCharSequence2 = j.b(this.a).getText(this.a.e());
    NotificationCompat.Builder localBuilder = j.e(this.a);
    localBuilder.setTicker(localCharSequence1);
    localBuilder.setContentTitle(localCharSequence2);
    localBuilder.setContentText(localCharSequence1);
    Notification localNotification = localBuilder.build();
    if (j.f(this.a).Q())
      localNotification.flags = (0x2 | localNotification.flags);
    return localNotification;
  }

  public Notification a(a parama)
  {
    NotificationCompat.Builder localBuilder = j.e(this.a);
    localBuilder.setTicker(parama.d);
    localBuilder.setContentTitle(parama.i);
    localBuilder.setContentText(parama.j);
    if (parama.b > 0L)
      localBuilder.setProgress((int)parama.b, (int)parama.c, false);
    if (j.d(this.a).size() > 1)
    {
      Resources localResources = j.b(this.a).getResources();
      int i = x.m;
      int j = -1 + j.d(this.a).size();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(-1 + j.d(this.a).size());
      localBuilder.setContentInfo(localResources.getQuantityString(i, j, arrayOfObject2));
    }
    while (true)
    {
      Notification localNotification = localBuilder.build();
      if (j.f(this.a).Q())
        localNotification.flags = (0x2 | localNotification.flags);
      localNotification.flags |= parama.f;
      return localNotification;
      if (parama.b > 0L)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Float.valueOf(100.0F * ((float)parama.c / (float)parama.b));
        localBuilder.setContentInfo(String.format("%.0f%%", arrayOfObject1));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.p
 * JD-Core Version:    0.6.2
 */