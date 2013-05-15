package com.avast.android.mobilesecurity.app.scanner;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.util.m;

class ah extends BroadcastReceiver
{
  ah(af paramaf)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    m.c("Storage: " + paramIntent.getData());
    this.a.f();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ah
 * JD-Core Version:    0.6.2
 */