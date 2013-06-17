package com.google.android.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class b extends BroadcastReceiver
{
  private static boolean a = false;

  static final String b(Context paramContext)
  {
    return paramContext.getPackageName() + ".GCMIntentService";
  }

  protected String a(Context paramContext)
  {
    return b(paramContext);
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.v("GCMBroadcastReceiver", "onReceive: " + paramIntent.getAction());
    if (!a)
    {
      a = true;
      String str2 = getClass().getName();
      if (!str2.equals(b.class.getName()))
        c.a(str2);
    }
    String str1 = a(paramContext);
    Log.v("GCMBroadcastReceiver", "GCM IntentService class: " + str1);
    a.a(paramContext, paramIntent, str1);
    setResult(-1, null, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.a.b
 * JD-Core Version:    0.6.2
 */