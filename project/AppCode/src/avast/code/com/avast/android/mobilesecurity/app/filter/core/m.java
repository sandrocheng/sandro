package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.k;

class m extends f
{
  m(OutgoingCallReceiver paramOutgoingCallReceiver, Context paramContext, u paramu)
  {
    super(paramContext);
  }

  public void a(Cursor paramCursor1, Cursor paramCursor2, String paramString)
  {
    String str2;
    String str1;
    if (paramCursor1.getInt(paramCursor1.getColumnIndex("outgoingCall")) > 0)
    {
      if (paramCursor2 == null)
        break label236;
      str2 = paramCursor2.getString(paramCursor2.getColumnIndex("lookupKey"));
      str1 = paramCursor2.getString(paramCursor2.getColumnIndex("phone"));
    }
    while (true)
    {
      if (OutgoingCallReceiver.a(this.b));
      while (true)
      {
        return;
        this.b.setResultData(null);
        OutgoingCallReceiver.a(this.b, true);
        com.avast.android.generic.util.m.c("OutgoingCallReceiver blocking call with key " + str2 + " and number " + str1);
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("lookupKey", str2);
        localContentValues.put("phone", str1);
        localContentValues.put("groupId", Integer.valueOf(paramCursor1.getInt(paramCursor1.getColumnIndex("_id"))));
        localContentValues.put("type", Integer.valueOf(0));
        localContentValues.put("direction", Integer.valueOf(1));
        this.c.getContentResolver().insert(k.a(), localContentValues);
        this.a.a(y.E, null, str1, null, null, Long.valueOf(0L), null);
        continue;
        com.avast.android.generic.util.m.c("OutgoingCallReceiver filter doesn't have enabled block outgoing call, skip this filter");
      }
      label236: str1 = paramString;
      str2 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.m
 * JD-Core Version:    0.6.2
 */