package com.avast.android.generic.notification;

import android.content.ContentResolver;
import android.content.Context;
import android.os.AsyncTask;
import com.avast.android.generic.e;

class n extends AsyncTask
{
  n(j paramj)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    j.b(this.a).getContentResolver().delete(e.a(j.a(this.a)), null, null);
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.n
 * JD-Core Version:    0.6.2
 */