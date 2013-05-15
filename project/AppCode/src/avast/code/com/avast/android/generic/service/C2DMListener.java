package com.avast.android.generic.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.b.d;
import com.avast.android.generic.util.ax;
import com.avast.android.generic.util.t;

public class C2DMListener extends BroadcastReceiver
{
  private void a(Context paramContext, Intent paramIntent)
  {
    Context localContext = paramContext.getApplicationContext();
    String str1 = paramIntent.getStringExtra("registration_id");
    if (paramIntent.getStringExtra("error") != null)
    {
      String str2 = paramIntent.getStringExtra("error");
      t.a("AvastComms", localContext, "C2DM listener received C2DM registration error (" + str2 + ")");
      ax.b(localContext);
      Intent localIntent3 = new Intent();
      localIntent3.setAction("com.avast.android.generic.action.C2DM_ERROR");
      localIntent3.putExtra("error", str2);
      com.avast.android.generic.util.ae.a(localContext, localIntent3, localContext.getPackageName());
    }
    while (true)
    {
      return;
      if (paramIntent.getStringExtra("unregistered") != null)
      {
        t.a("AvastComms", localContext, "C2DM listener received C2DM unregistered event");
        ax.b(localContext);
        Intent localIntent2 = new Intent();
        localIntent2.setAction("com.avast.android.generic.action.ACTION_C2DM_REMOVE");
        com.avast.android.generic.util.ae.a(localContext, localIntent2, localContext.getPackageName());
      }
      else if (str1 != null)
      {
        t.a("AvastComms", localContext, "C2DM listener detected successful registration (ID " + str1 + ")");
        ax.b(localContext);
        Intent localIntent1 = new Intent();
        localIntent1.setAction("com.avast.android.generic.action.ACTION_C2DM_SUCCESS");
        localIntent1.putExtra("registration", str1);
        com.avast.android.generic.util.ae.a(localContext, localIntent1, localContext.getPackageName());
      }
    }
  }

  private void b(Context paramContext, Intent paramIntent)
  {
    Context localContext = paramContext.getApplicationContext();
    String str1 = paramIntent.getExtras().getString("uid");
    String str2 = paramIntent.getExtras().getString("message");
    String str3;
    if ((str1 != null) && (str2 != null) && (!str1.equals("")) && (!str2.equals("")))
    {
      t.b(localContext, "C2DM", "Message received with ID " + str1 + ": " + str2 + ", will be dispatched");
      if (!str1.equals("NONE"))
        break label200;
      str3 = ((com.avast.android.generic.ae)ad.a(localContext, com.avast.android.generic.ae.class)).z();
      if (!TextUtils.isEmpty(str3))
        break label131;
    }
    while (true)
    {
      return;
      label131: if (str2.equals(str3 + " CONNCHECK"))
      {
        try
        {
          Intent localIntent2 = new Intent("com.avast.android.generic.action.ACTION_CONNECTION_CHECK_RECEIVED");
          com.avast.android.generic.util.ae.a(localIntent2);
          localContext.sendBroadcast(localIntent2, "com.avast.android.generic.COMM_PERMISSION");
        }
        catch (Exception localException)
        {
          t.a("AvastGeneric", "Unable to broadcast conn check intent", localException);
        }
        continue;
        label200: ax.b(localContext);
        Intent localIntent1 = new Intent();
        localIntent1.setAction("com.avast.android.generic.action.ACTION_C2DM_MESSAGE");
        localIntent1.putExtra("uid", str1);
        localIntent1.putExtra("message", str2);
        d.a(localContext, localIntent1, null, str1, str2);
      }
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Context localContext = paramContext.getApplicationContext();
    if (paramIntent.getAction().equals("com.google.android.c2dm.intent.REGISTRATION"))
      a(localContext, paramIntent);
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("com.google.android.c2dm.intent.RECEIVE"))
        b(localContext, paramIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.C2DMListener
 * JD-Core Version:    0.6.2
 */