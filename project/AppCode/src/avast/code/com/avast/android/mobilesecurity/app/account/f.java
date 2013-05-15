package com.avast.android.mobilesecurity.app.account;

import a.a.a.a.a.a;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.os.AsyncTask;
import com.avast.android.generic.internet.c.a.av;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.g;
import java.util.Calendar;

class f extends AsyncTask
{
  ContentResolver a;
  av b;

  public f(ContentResolver paramContentResolver, av paramav)
  {
    this.a = paramContentResolver;
    this.b = paramav;
  }

  protected Void a(Integer[] paramArrayOfInteger)
  {
    int i = paramArrayOfInteger[0].intValue();
    int j = paramArrayOfInteger[1].intValue();
    Calendar localCalendar = e.a();
    String str = "date=" + localCalendar.getTimeInMillis() / 1000L + " AND " + "scan_type" + "=" + this.b.a();
    Cursor localCursor = this.a.query(g.a(), null, str, null, null);
    int m;
    int k;
    if (localCursor != null)
      if (localCursor.moveToFirst())
      {
        m = localCursor.getInt(localCursor.getColumnIndex("infected"));
        k = localCursor.getInt(localCursor.getColumnIndex("scanned"));
        localCursor.close();
      }
    while (true)
    {
      int n = m + i;
      int i1 = k + j;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("date", Long.valueOf(localCalendar.getTimeInMillis() / 1000L));
      localContentValues.put("scan_type", Integer.valueOf(this.b.a()));
      localContentValues.put("infected", Integer.valueOf(n));
      localContentValues.put("scanned", Integer.valueOf(i1));
      try
      {
        this.a.update(g.a(), localContentValues, str, null);
        return null;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
        {
          a.a().a("AntivirusActivityHelper IllegalArgumentException", localIllegalArgumentException);
          m.b("AntivirusActivityHelper", "Caught exception that doesn't make any sense.", localIllegalArgumentException);
        }
      }
      k = 0;
      m = 0;
      break;
      k = 0;
      m = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.f
 * JD-Core Version:    0.6.2
 */