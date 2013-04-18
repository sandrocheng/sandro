package com.keniu.security.protection.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

final class f extends Handler
{
  f(PreventTheftExperienceInfoActivity paramPreventTheftExperienceInfoActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 2)
      this.a.a();
    if (paramMessage.what == 3)
    {
      if (PreventTheftExperienceInfoActivity.b(this.a))
        break label59;
      String str = paramMessage.getData().getString("content");
      this.a.a();
      this.a.a(str);
    }
    while (true)
    {
      return;
      label59: Log.d(PreventTheftExperienceInfoActivity.c(this.a), "activity is destory, can not show dialog");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.f
 * JD-Core Version:    0.6.2
 */