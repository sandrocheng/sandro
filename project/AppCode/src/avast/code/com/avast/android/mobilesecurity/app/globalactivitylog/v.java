package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.os.AsyncTask;
import java.io.File;

class v extends AsyncTask
{
  v(u paramu)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    synchronized (this.a)
    {
      if ((u.c(this.a)) && (u.d(this.a).exists()))
        u.d(this.a).delete();
      return null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.v
 * JD-Core Version:    0.6.2
 */