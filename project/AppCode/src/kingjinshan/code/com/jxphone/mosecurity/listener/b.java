package com.jxphone.mosecurity.listener;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.ijinshan.kinghelper.firewall.core.m;
import com.jxphone.mosecurity.d.l;
import com.jxphone.mosecurity.logic.a.g;
import com.jxphone.mosecurity.logic.h;

public final class b extends PhoneStateListener
{
  private final g a;
  private Display b;
  private m c;

  public b(Context paramContext)
  {
    this.a = h.b(paramContext);
    this.b = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    this.c = new m(paramContext);
    this.c.a();
  }

  public final void onCallStateChanged(int paramInt, String paramString)
  {
    if (paramInt == 1)
    {
      this.a.a(0, 1);
      Log.e("CallStateListener", ">>onCallStateChanged>>callLogic>>handleCall");
      if (1 != this.a.a(paramString, 3, this.b))
        if ((!l.b) || (!TextUtils.isEmpty(paramString)));
    }
    label132: 
    while (true)
    {
      return;
      this.c.onCallStateChanged(paramInt, paramString);
      this.a.a(1);
      continue;
      if (paramInt == 0)
        this.a.b();
      while (true)
      {
        if ((l.b) && (TextUtils.isEmpty(paramString)))
          break label132;
        this.c.onCallStateChanged(paramInt, paramString);
        break;
        if (paramInt == 2)
          this.a.a();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.b
 * JD-Core Version:    0.6.2
 */