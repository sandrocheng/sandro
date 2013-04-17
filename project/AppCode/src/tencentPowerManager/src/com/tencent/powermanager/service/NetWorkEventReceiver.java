package com.tencent.powermanager.service;

import af;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import bo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NetWorkEventReceiver extends BroadcastReceiver
{
  private static List<a> a = new ArrayList();

  private static void a()
  {
    try
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
        ((a)localIterator.next()).a();
    }
    finally
    {
    }
  }

  public static void a(a parama)
  {
    try
    {
      if (!a.contains(parama))
        a.add(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void b(a parama)
  {
    try
    {
      if (a.contains(parama))
        a.remove(parama);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      new StringBuilder("action：").append(paramIntent.getAction()).toString();
      af.b();
      bo.a().a(af.a().c());
      a();
    }
  }

  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.service.NetWorkEventReceiver
 * JD-Core Version:    0.6.2
 */