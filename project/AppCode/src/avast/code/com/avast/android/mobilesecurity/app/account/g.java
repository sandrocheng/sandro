package com.avast.android.mobilesecurity.app.account;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.os.AsyncTask;
import com.avast.android.generic.internet.c.a.av;
import com.avast.android.mobilesecurity.n;
import java.util.Calendar;

class g extends AsyncTask
{
  ContentResolver a;
  av b;

  public g(ContentResolver paramContentResolver, av paramav)
  {
    this.a = paramContentResolver;
    this.b = paramav;
  }

  protected Void a(String[] paramArrayOfString)
  {
    String str1 = paramArrayOfString[0];
    String str2 = paramArrayOfString[1];
    Calendar localCalendar = Calendar.getInstance();
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("date", Long.valueOf(localCalendar.getTimeInMillis() / 1000L));
    localContentValues.put("uri", str1);
    localContentValues.put("virus_name", str2);
    localContentValues.put("scan_type", Integer.valueOf(this.b.a()));
    this.a.update(n.a(), localContentValues, "uri= ?", new String[] { str1 });
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.g
 * JD-Core Version:    0.6.2
 */