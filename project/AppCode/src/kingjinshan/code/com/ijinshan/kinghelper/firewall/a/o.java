package com.ijinshan.kinghelper.firewall.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.jxphone.mosecurity.c.c;

final class o extends Thread
{
  o(String paramString1, Context paramContext, String paramString2)
  {
    super(paramString1);
  }

  public final void run()
  {
    Context localContext = this.a;
    String str1 = this.b;
    Log.d("OldDatabaseConversion", "begin converSmsData>");
    int i = 0;
    SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openDatabase(str1, null, 0);
    String[] arrayOfString1 = new String[3];
    arrayOfString1[0] = String.valueOf(c.c.ordinal());
    arrayOfString1[1] = String.valueOf(c.e.ordinal());
    arrayOfString1[2] = String.valueOf(c.d.ordinal());
    Cursor localCursor = localSQLiteDatabase.query("sms", null, "list_type = ? or list_type = ? or list_type = ?", arrayOfString1, null, null, null);
    a.a(localContext);
    int k;
    if (localCursor != null)
      if (localCursor.getCount() > 0)
      {
        int m = localCursor.getColumnIndex("id");
        int n = localCursor.getColumnIndex("address");
        int i1 = localCursor.getColumnIndex("body");
        int i2 = localCursor.getColumnIndex("date");
        int i3 = localCursor.getColumnIndex("status");
        int i4 = localCursor.getColumnIndex("type");
        int i5 = localCursor.getColumnIndex("list_type");
        ContentValues localContentValues = new ContentValues();
        if (localCursor.moveToNext())
        {
          int i6 = localCursor.getInt(m);
          String str2 = localCursor.getString(n);
          String str3 = localCursor.getString(i1);
          long l1 = localCursor.getLong(i2);
          localCursor.getInt(i3);
          localCursor.getShort(i4);
          c localc = c.values()[localCursor.getInt(i5)];
          localContentValues.clear();
          localContentValues.put("address", str2);
          localContentValues.put("body", str3);
          localContentValues.put("date", Long.valueOf(l1));
          localContentValues.put("firewall_log_description", localc.a(localContext));
          localContentValues.put("person", Integer.valueOf(-1));
          localContentValues.put("protocol", Integer.valueOf(0));
          localContentValues.put("read", Integer.valueOf(1));
          localContentValues.put("firewall_log_rule_id", Integer.valueOf(-1));
          localContentValues.put("service_center", "");
          localContentValues.put("subject", "");
          localContentValues.put("firewall_log_time", Long.valueOf(l1));
          localContentValues.put("firewall_from", Integer.valueOf(a.b));
          localContentValues.put("logtype", Integer.valueOf(a.g));
          long l2 = a.a(localContentValues);
          if (l2 > 0L)
          {
            String[] arrayOfString2 = new String[1];
            arrayOfString2[0] = String.valueOf(i6);
            localSQLiteDatabase.delete("sms", "id=?", arrayOfString2);
            i++;
          }
          StringBuilder localStringBuilder = new StringBuilder().append("converSmsData>re=");
          if (l2 > 0L);
          for (boolean bool = true; ; bool = false)
          {
            Log.d("OldDatabaseConversion", bool + "values=" + localContentValues);
            break;
          }
        }
        k = i;
        localCursor.close();
      }
    for (int j = k; ; j = 0)
    {
      localSQLiteDatabase.close();
      Log.d("OldDatabaseConversion", "end converSmsData>sucess=" + j);
      n.b(this.a, this.b);
      n.c(this.a, this.b);
      return;
      Log.d("OldDatabaseConversion", "  converSmsData no data");
      k = 0;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.o
 * JD-Core Version:    0.6.2
 */