package com.avg.toolkit.UID;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avg.toolkit.f;

public class SharedIdReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("__SAD", paramIntent.getAction());
    localBundle.putAll(paramIntent.getExtras());
    f.a(paramContext, 19000, 19001, localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.UID.SharedIdReceiver
 * JD-Core Version:    0.6.2
 */