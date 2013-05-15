package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.k;

class l extends f
{
  l(MessageReceiver paramMessageReceiver, Context paramContext, u paramu)
  {
    super(paramContext);
  }

  public void a(Cursor paramCursor1, Cursor paramCursor2, String paramString)
  {
    m.c("MessageReceiver: lookup, matchGroup");
    StringBuilder localStringBuilder = new StringBuilder().append("lookup, incoming sms blocking: ");
    boolean bool;
    if (paramCursor1.getInt(paramCursor1.getColumnIndex("incomingSMS")) > 0)
    {
      bool = true;
      m.b("MessageReceiver", bool);
      if (paramCursor1.getInt(paramCursor1.getColumnIndex("incomingSMS")) > 0)
        if (paramCursor2 == null)
          break label277;
    }
    label277: for (String str = paramCursor2.getString(paramCursor2.getColumnIndex("lookupKey")); ; str = null)
    {
      if (this.b.getAbortBroadcast());
      while (true)
      {
        return;
        bool = false;
        break;
        m.c("MessageReceiver: lookup, aborting broadcast");
        this.b.abortBroadcast();
        m.c("MessageReceiver: blocking contact with key " + str + " with number " + paramString);
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("lookupKey", str);
        localContentValues.put("phone", paramString);
        localContentValues.put("text", MessageReceiver.a(this.b));
        localContentValues.put("groupId", Integer.valueOf(paramCursor1.getInt(paramCursor1.getColumnIndex("_id"))));
        localContentValues.put("type", Integer.valueOf(1));
        localContentValues.put("direction", Integer.valueOf(0));
        this.c.getContentResolver().insert(k.a(), localContentValues);
        this.a.a(y.D, null, paramString, null, null, null, null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.l
 * JD-Core Version:    0.6.2
 */