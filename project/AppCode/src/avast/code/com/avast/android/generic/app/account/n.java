package com.avast.android.generic.app.account;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.util.t;

class n extends BroadcastReceiver
{
  n(m paramm)
  {
  }

  private void a(Context paramContext, Intent paramIntent)
  {
    Context localContext = paramContext.getApplicationContext();
    String str = paramIntent.getStringExtra("registration_id");
    if (paramIntent.getStringExtra("error") != null)
    {
      t.a("AvastComms", localContext, "C2DM registration received C2DM registration error (" + m.a(this.a) + ")");
      m.b(this.a);
      m.a(this.a, paramIntent.getStringExtra("error"));
    }
    while (true)
    {
      return;
      if (paramIntent.getStringExtra("unregistered") != null)
      {
        t.a("AvastComms", localContext, "C2DM registration received C2DM unregistered event");
      }
      else if (str != null)
      {
        t.a("AvastComms", localContext, "C2DM registration detected successful registration (ID " + str + ")");
        m.b(this.a);
        m.b(this.a, str);
      }
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!this.a.a.isAdded());
    while (true)
    {
      return;
      a(paramContext, paramIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.n
 * JD-Core Version:    0.6.2
 */