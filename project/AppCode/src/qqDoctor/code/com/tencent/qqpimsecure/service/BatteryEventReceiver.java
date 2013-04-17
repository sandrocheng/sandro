package com.tencent.qqpimsecure.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BatteryEventReceiver extends BroadcastReceiver
{
  public static int a;
  public static boolean b;
  private static List<a> d = new ArrayList();
  private static Intent e = null;
  private String c = "BatteryEventReceiver";

  public static void a(a parama)
  {
    if (e != null)
      parama.a();
    if (!d.contains(parama))
      d.add(parama);
  }

  public static void b(a parama)
  {
    if (d.contains(parama))
      d.remove(parama);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.BATTERY_CHANGED"))
    {
      e = paramIntent;
      int i = paramIntent.getIntExtra("level", 0);
      int j = paramIntent.getIntExtra("scale", 100);
      int k = i * 100 / j;
      a = k;
      if (k > 100)
        a = 100;
      int m = paramIntent.getIntExtra("status", 1);
      if (m == 2)
        if (b);
      for (b = true; ; b = false)
        do
        {
          Iterator localIterator = d.iterator();
          while (localIterator.hasNext())
            ((a)localIterator.next()).a();
        }
        while ((m == 5) || ((m != 4) && (m != 3)) || (!b));
    }
  }

  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.BatteryEventReceiver
 * JD-Core Version:    0.6.2
 */