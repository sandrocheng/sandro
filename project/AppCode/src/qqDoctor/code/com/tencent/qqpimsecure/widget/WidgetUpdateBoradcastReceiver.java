package com.tencent.qqpimsecure.widget;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import bsh;
import bss;

public final class WidgetUpdateBoradcastReceiver extends BroadcastReceiver
{
  public static void a(String paramString)
  {
    bsh localbsh = bss.a().a(paramString, Boolean.valueOf(false));
    if (localbsh != null)
    {
      new StringBuilder("foreUpdate() - ").append(paramString).toString();
      localbsh.c();
    }
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("update_manager_name");
    if (str != null)
    {
      bsh localbsh = bss.a().a(str, Boolean.valueOf(true));
      if (localbsh != null)
        localbsh.c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.widget.WidgetUpdateBoradcastReceiver
 * JD-Core Version:    0.6.2
 */