package com.avg.tuneup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avg.toolkit.f;

public class ShutDownReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    f.a(paramContext, 11000, 5, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.ShutDownReceiver
 * JD-Core Version:    0.6.2
 */