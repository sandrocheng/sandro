package com.avast.android.generic.notification;

import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v4.app.NotificationCompat.Builder;
import android.widget.RemoteViews;
import com.avast.android.generic.ae;
import com.avast.android.generic.t;
import com.avast.android.generic.util.w;
import com.avast.android.generic.x;
import java.text.DateFormat;
import java.util.Date;
import java.util.Map;

class q
  implements o
{
  private q(j paramj)
  {
  }

  private Notification a(NotificationCompat.Builder paramBuilder)
  {
    Notification localNotification = paramBuilder.build();
    int i = w.a(j.b(this.a));
    localNotification.contentView = new RemoteViews(j.b(this.a).getPackageName(), i);
    Context localContext = j.b(this.a);
    RemoteViews localRemoteViews = localNotification.contentView;
    int[] arrayOfInt1 = new int[1];
    arrayOfInt1[0] = t.aq;
    int[] arrayOfInt2 = new int[3];
    arrayOfInt2[0] = t.E;
    arrayOfInt2[1] = t.h;
    arrayOfInt2[2] = t.R;
    w.a(localContext, localRemoteViews, true, arrayOfInt1, arrayOfInt2);
    localNotification.contentView.setViewVisibility(t.h, 8);
    if (j.f(this.a).Q())
      localNotification.flags = (0x2 | localNotification.flags);
    return localNotification;
  }

  private void a(Notification paramNotification)
  {
    if (j.d(this.a).size() > 1)
    {
      RemoteViews localRemoteViews = paramNotification.contentView;
      int i = t.h;
      Resources localResources = j.b(this.a).getResources();
      int j = x.m;
      int k = -1 + j.d(this.a).size();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(-1 + j.d(this.a).size());
      localRemoteViews.setTextViewText(i, localResources.getQuantityString(j, k, arrayOfObject));
      paramNotification.contentView.setViewVisibility(t.h, 0);
      if (Build.VERSION.SDK_INT >= 9)
      {
        int m = j.d(this.a).size();
        int n = 0;
        if (m > 1)
          n = j.d(this.a).size();
        paramNotification.number = n;
      }
    }
  }

  private void a(a parama, Notification paramNotification)
  {
    if (parama.b == 0L)
      paramNotification.contentView.setTextViewText(t.R, j.g(this.a).format(new Date(parama.h)));
    while (true)
    {
      return;
      if (parama.b == -1L)
      {
        paramNotification.contentView.setTextViewText(t.R, "");
      }
      else
      {
        RemoteViews localRemoteViews = paramNotification.contentView;
        int i = t.R;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Float.valueOf(100.0F * ((float)parama.c / (float)parama.b));
        localRemoteViews.setTextViewText(i, String.format("%.0f%%", arrayOfObject));
      }
    }
  }

  public Notification a()
  {
    CharSequence localCharSequence1 = j.b(this.a).getText(this.a.f());
    CharSequence localCharSequence2 = j.b(this.a).getText(this.a.e());
    NotificationCompat.Builder localBuilder = j.e(this.a);
    localBuilder.setTicker(localCharSequence1);
    localBuilder.setContentTitle(localCharSequence2);
    localBuilder.setContentText(localCharSequence1);
    Notification localNotification = a(localBuilder);
    localNotification.contentView.setTextViewText(t.aq, localCharSequence2);
    localNotification.contentView.setTextViewText(t.E, localCharSequence1);
    localNotification.contentView.setTextViewText(t.R, "");
    return localNotification;
  }

  public Notification a(a parama)
  {
    NotificationCompat.Builder localBuilder = j.e(this.a);
    localBuilder.setTicker(parama.d);
    localBuilder.setContentTitle(parama.i);
    localBuilder.setContentText(parama.j);
    Notification localNotification = a(localBuilder);
    localNotification.flags |= parama.f;
    localNotification.contentView.setTextViewText(t.aq, parama.i);
    localNotification.contentView.setTextViewText(t.E, parama.j);
    a(parama, localNotification);
    a(localNotification);
    return localNotification;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.q
 * JD-Core Version:    0.6.2
 */