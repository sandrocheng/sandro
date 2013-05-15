package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.AudioManager;
import android.os.Handler;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.k;

class n extends f
{
  n(PhoneStateChangeReceiver paramPhoneStateChangeReceiver, Context paramContext, u paramu)
  {
    super(paramContext);
  }

  public void a(Cursor paramCursor1, Cursor paramCursor2, String paramString)
  {
    if (paramCursor1.getInt(paramCursor1.getColumnIndex("incomingCall")) > 0)
      if (paramCursor2 == null)
        break label257;
    label257: for (String str = paramCursor2.getString(paramCursor2.getColumnIndex("lookupKey")); ; str = null)
    {
      if (PhoneStateChangeReceiver.a(this.b));
      while (true)
      {
        return;
        int i = PhoneStateChangeReceiver.a().getRingerMode();
        PhoneStateChangeReceiver.a().setRingerMode(0);
        PhoneStateChangeReceiver.a(this.b, this.c);
        PhoneStateChangeReceiver.a(this.b, true);
        PhoneStateChangeReceiver.a().setRingerMode(i);
        this.b.a.postDelayed(new o(this, paramString), 2000L);
        m.c("PhoneCallBlocker: blocking call with key " + str + " and number " + paramString);
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("lookupKey", str);
        localContentValues.put("phone", paramString);
        localContentValues.put("groupId", Integer.valueOf(paramCursor1.getInt(paramCursor1.getColumnIndex("_id"))));
        localContentValues.put("type", Integer.valueOf(0));
        localContentValues.put("direction", Integer.valueOf(0));
        this.c.getContentResolver().insert(k.a(), localContentValues);
        this.a.a(y.E, null, paramString, null, null, Long.valueOf(1L), null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.n
 * JD-Core Version:    0.6.2
 */