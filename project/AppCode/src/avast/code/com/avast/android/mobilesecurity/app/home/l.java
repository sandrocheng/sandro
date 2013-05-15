package com.avast.android.mobilesecurity.app.home;

import android.os.AsyncTask;
import com.avast.android.mobilesecurity.service.UpdateService;

class l extends AsyncTask
{
  private l(HomeActivity paramHomeActivity)
  {
  }

  protected Boolean a(Void[] paramArrayOfVoid)
  {
    com.avast.android.generic.util.m.c("Asynchronously checking if VPS is outdated.");
    return Boolean.valueOf(UpdateService.f(this.a));
  }

  protected void a(Boolean paramBoolean)
  {
    com.avast.android.generic.util.m.c("Result of VPS outdated check: " + paramBoolean);
    if (paramBoolean.booleanValue())
      HomeActivity.a(this.a, 2130903079, 2131493368, new m(this));
    while (true)
    {
      return;
      HomeActivity.a(this.a, 2130903078, 0, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.l
 * JD-Core Version:    0.6.2
 */