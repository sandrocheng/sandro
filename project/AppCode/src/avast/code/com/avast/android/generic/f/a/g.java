package com.avast.android.generic.f.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.util.t;
import java.util.Iterator;
import java.util.LinkedList;

class g extends BroadcastReceiver
{
  private g(b paramb)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    t.a("AvastComms", b.a(this.a), "SMS sender result on sending SMS is " + getResultCode());
    if (!paramIntent.hasExtra("smsId"));
    String str;
    do
    {
      return;
      str = paramIntent.getStringExtra("smsId");
    }
    while (str == null);
    t.a("AvastComms", b.a(this.a), "SMS sender SMS intent has SMS ID " + str);
    while (true)
    {
      e locale;
      synchronized (b.b(this.a))
      {
        Iterator localIterator = b.b(this.a).iterator();
        if (localIterator.hasNext())
        {
          locale = (e)localIterator.next();
          if (locale.b.compareTo(str) != 0)
            continue;
          if (locale == null)
            t.a("AvastComms", b.a(this.a), "SMS sender did not find SMS");
        }
      }
      switch (getResultCode())
      {
      default:
        b.a(this.a, locale, getResultCode(), true);
        break;
      case -1:
        b.a(this.a, locale);
        break;
        locale = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.f.a.g
 * JD-Core Version:    0.6.2
 */