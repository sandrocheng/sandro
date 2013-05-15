package com.avast.android.generic.service;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

class f extends Handler
{
  f(WakefulIntentService paramWakefulIntentService)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    Toast.makeText(this.a.getApplicationContext(), localBundle.getInt("res"), localBundle.getInt("dur")).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.f
 * JD-Core Version:    0.6.2
 */