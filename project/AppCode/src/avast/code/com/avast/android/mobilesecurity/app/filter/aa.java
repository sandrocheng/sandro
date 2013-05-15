package com.avast.android.mobilesecurity.app.filter;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.filter.core.f;
import com.avast.android.mobilesecurity.k;
import java.util.Iterator;
import java.util.Queue;

class aa extends f
{
  aa(z paramz, Context paramContext, long paramLong)
  {
    super(paramContext);
  }

  public void a(Cursor paramCursor1, Cursor paramCursor2, String paramString)
  {
    long l = paramCursor1.getLong(paramCursor1.getColumnIndex("_id"));
    m.b("SmsBlockOfferActivity", "LookupSupport matched id '" + l + "' and we want '" + this.a + "'" + ".");
    if (l != this.a);
    while (true)
    {
      return;
      if (paramCursor1.getInt(paramCursor1.getColumnIndex("incomingSMS")) > 0);
      for (boolean bool = true; ; bool = false)
      {
        m.b("SmsBlockOfferActivity", "LookupSupport matched group blocks messages: " + bool);
        if (!bool)
          break;
        this.b.a = false;
        ContentValues localContentValues1 = new ContentValues();
        localContentValues1.put("lookupKey", (String)null);
        localContentValues1.put("phone", SmsBlockOfferActivity.b(this.b.c));
        localContentValues1.put("text", SmsBlockOfferActivity.d(this.b.c));
        localContentValues1.put("groupId", Long.valueOf(this.a));
        localContentValues1.put("type", Integer.valueOf(1));
        localContentValues1.put("direction", Integer.valueOf(0));
        this.b.b.insert(k.a(), localContentValues1);
        Iterator localIterator = SmsBlockOfferActivity.h(this.b.c).iterator();
        while (localIterator.hasNext())
        {
          Bundle localBundle = (Bundle)localIterator.next();
          String str = localBundle.getString("number");
          if ((str != null) && (str.equals(SmsBlockOfferActivity.b(this.b.c))))
          {
            localIterator.remove();
            ContentValues localContentValues2 = new ContentValues();
            localContentValues2.put("lookupKey", (String)null);
            localContentValues2.put("phone", str);
            localContentValues2.put("text", localBundle.getString("message_text"));
            localContentValues2.put("groupId", Long.valueOf(this.a));
            localContentValues2.put("type", Integer.valueOf(1));
            localContentValues2.put("direction", Integer.valueOf(0));
            this.b.b.insert(k.a(), localContentValues2);
          }
        }
      }
      Intent localIntent = new Intent(this.b.c, SmsBlockOfferActivity.class);
      localIntent.setAction("SmsBlockOfferActivity.REMOVE_NUMBER");
      localIntent.putExtra("number", SmsBlockOfferActivity.b(this.b.c));
      localIntent.addFlags(268435456);
      this.b.c.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.aa
 * JD-Core Version:    0.6.2
 */