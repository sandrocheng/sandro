package com.avast.android.generic.notification;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.os.AsyncTask;
import com.avast.android.generic.e;

class l extends AsyncTask
{
  l(j paramj, a parama)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("contentText", this.a.j.toString());
    localContentValues.put("contentTitle", this.a.i.toString());
    localContentValues.put("flags", Integer.valueOf(this.a.f));
    localContentValues.put("number", Integer.valueOf(this.a.e));
    int i;
    if ((0x2 & this.a.f) > 0)
    {
      i = 1;
      localContentValues.put("ongoing", Integer.valueOf(i));
      if (this.a.b != -1L)
        break label189;
    }
    label189: for (float f = -1.0F; ; f = 100.0F * ((float)this.a.c / (float)this.a.b))
    {
      localContentValues.put("percentage", Float.valueOf(f));
      localContentValues.put("timestamp", Long.valueOf(System.currentTimeMillis()));
      this.a.g.a(localContentValues);
      j.b(this.b).getContentResolver().update(e.a(j.a(this.b), this.a.a), localContentValues, null, null);
      return null;
      i = 0;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.l
 * JD-Core Version:    0.6.2
 */