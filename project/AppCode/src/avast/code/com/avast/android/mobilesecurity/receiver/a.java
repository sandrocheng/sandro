package com.avast.android.mobilesecurity.receiver;

import android.os.AsyncTask;
import com.avast.android.generic.g.e;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.service.UpdateService;
import com.avast.android.mobilesecurity.t;

class a extends AsyncTask
{
  a(AppInstallService paramAppInstallService, t paramt)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    i.a(e.b, this.b);
    this.a.e(System.currentTimeMillis());
    UpdateService.c(this.b);
    UpdateService.e(this.b);
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.a
 * JD-Core Version:    0.6.2
 */