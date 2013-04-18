package com.keniu.security.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

final class k extends BroadcastReceiver
{
  k(j paramj)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    if (str1 == null);
    while (true)
    {
      return;
      Uri localUri = paramIntent.getData();
      if (localUri != null)
        if ("android.intent.action.PACKAGE_ADDED".equals(str1))
        {
          String str3 = localUri.getSchemeSpecificPart();
          this.a.e.a(this.a, 6, str3);
        }
        else if ("android.intent.action.PACKAGE_INSTALL".equals(str1))
        {
          this.a.e.a(this.a, 3, localUri.toString());
        }
        else if ("android.intent.action.PACKAGE_REPLACED".equals(str1))
        {
          String str2 = localUri.getSchemeSpecificPart();
          this.a.e.a(this.a, 4, str2);
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.k
 * JD-Core Version:    0.6.2
 */