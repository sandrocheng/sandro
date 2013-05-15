package com.avast.android.generic.f.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.util.t;

class f extends BroadcastReceiver
{
  private f(b paramb)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    t.a("AvastComms", b.a(this.a), "SMS sender got SMS sending part result of " + getResultCode());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.f.a.f
 * JD-Core Version:    0.6.2
 */