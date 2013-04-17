package com.tencent.powermanager.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ModeEventReceiver extends BroadcastReceiver
{
  private static List<a> a = new ArrayList();

  public static void a(a parama)
  {
    if (!a.contains(parama))
      a.add(parama);
  }

  public static void b(a parama)
  {
    if (a.contains(parama))
      a.remove(parama);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("action.mode.status.changed"))
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
        ((a)localIterator.next()).b(paramIntent);
    }
  }

  public static abstract interface a
  {
    public abstract void b(Intent paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.ModeEventReceiver
 * JD-Core Version:    0.6.2
 */