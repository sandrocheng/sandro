package com.ijinshan.kinghelper.firewall.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.jxphone.mosecurity.c.c;
import java.io.File;

public final class n
{
  private static final String a = "OldDatabaseConversion";
  private static final String b = "sms";
  private static final String c = "phone_call";
  private static final String d = "date";
  private static final String e = "ring_duration";
  private static final String f = "talk_duration";
  private static final String g = "phone_number";
  private static final String h = "contact";
  private static final String i = "name";
  private static final String j = "phone_number";

  public static void a(Context paramContext)
  {
    File localFile = paramContext.getDatabasePath("mosecurity_comm.db");
    if (localFile.exists())
      new o("converOldData", paramContext, localFile.getPath()).start();
  }

  private static void d(Context paramContext, String paramString)
  {
    Log.d("OldDatabaseConversion", "begin converSmsData>");
    int k = 0;
    SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openDatabase(paramString, null, 0);
    String[] arrayOfString1 = new String[3];
    arrayOfString1[0] = String.valueOf(c.c.ordinal());
    arrayOfString1[1] = String.valueOf(c.e.ordinal());
    arrayOfString1[2] = String.valueOf(c.d.ordinal());
    Cursor localCursor = localSQLiteDatabase.query("sms", null, "list_type = ? or list_type = ? or list_type = ?", arrayOfString1, null, null, null);
    a.a(paramContext);
    int m;
    if (localCursor != null)
      if (localCursor.getCount() > 0)
      {
        int n = localCursor.getColumnIndex("id");
        int i1 = localCursor.getColumnIndex("address");
        int i2 = localCursor.getColumnIndex("body");
        int i3 = localCursor.getColumnIndex("date");
        int i4 = localCursor.getColumnIndex("status");
        int i5 = localCursor.getColumnIndex("type");
        int i6 = localCursor.getColumnIndex("list_type");
        ContentValues localContentValues = new ContentValues();
        if (localCursor.moveToNext())
        {
          int i7 = localCursor.getInt(n);
          String str1 = localCursor.getString(i1);
          String str2 = localCursor.getString(i2);
          long l1 = localCursor.getLong(i3);
          localCursor.getInt(i4);
          localCursor.getShort(i5);
          c localc = c.values()[localCursor.getInt(i6)];
          localContentValues.clear();
          localContentValues.put("address", str1);
          localContentValues.put("body", str2);
          localContentValues.put("date", Long.valueOf(l1));
          localContentValues.put("firewall_log_description", localc.a(paramContext));
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
            arrayOfString2[0] = String.valueOf(i7);
            localSQLiteDatabase.delete("sms", "id=?", arrayOfString2);
            k++;
          }
          StringBuilder localStringBuilder = new StringBuilder().append("converSmsData>re=");
          if (l2 > 0L);
          for (boolean bool = true; ; bool = false)
          {
            Log.d("OldDatabaseConversion", bool + "values=" + localContentValues);
            break;
          }
        }
        m = k;
        localCursor.close();
      }
    while (true)
    {
      localSQLiteDatabase.close();
      Log.d("OldDatabaseConversion", "end converSmsData>sucess=" + m);
      return;
      Log.d("OldDatabaseConversion", "  converSmsData no data");
      m = 0;
      break;
      m = 0;
    }
  }

  private static void e(Context paramContext, String paramString)
  {
    Log.d("OldDatabaseConversion", "begin converCallData>");
    String[] arrayOfString1 = new String[3];
    arrayOfString1[0] = String.valueOf(c.c.ordinal());
    arrayOfString1[1] = String.valueOf(c.e.ordinal());
    arrayOfString1[2] = String.valueOf(c.d.ordinal());
    SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openDatabase(paramString, null, 0);
    Cursor localCursor = localSQLiteDatabase.query("phone_call", null, "list_type = ? or list_type = ? or list_type = ?", arrayOfString1, null, null, null);
    a.a(paramContext);
    if (localCursor != null)
    {
      if (localCursor.getCount() > 0)
      {
        int k = localCursor.getColumnIndex("id");
        int m = localCursor.getColumnIndex("phone_number");
        int n = localCursor.getColumnIndex("date");
        int i1 = localCursor.getColumnIndex("type");
        int i2 = localCursor.getColumnIndex("list_type");
        int i3 = localCursor.getColumnIndex("ring_duration");
        int i4 = localCursor.getColumnIndex("talk_duration");
        ContentValues localContentValues = new ContentValues();
        if (localCursor.moveToNext())
        {
          int i5 = localCursor.getInt(k);
          String str = localCursor.getString(m);
          long l1 = localCursor.getLong(n);
          localCursor.getShort(i1);
          c localc = c.values()[localCursor.getInt(i2)];
          localCursor.getLong(i3);
          long l2 = localCursor.getLong(i4);
          localContentValues.clear();
          localContentValues.put("date", Long.valueOf(l1));
          localContentValues.put("firewall_log_description", localc.a(paramContext));
          localContentValues.put("duration", Long.valueOf(l2));
          localContentValues.put("new", Integer.valueOf(1));
          localContentValues.put("number", str);
          localContentValues.put("type", Integer.valueOf(1));
          long l3 = a.b(localContentValues);
          if (l3 > 0L)
          {
            String[] arrayOfString2 = new String[1];
            arrayOfString2[0] = String.valueOf(i5);
            localSQLiteDatabase.delete("phone_call", "id=?", arrayOfString2);
          }
          StringBuilder localStringBuilder = new StringBuilder().append("converCallData>re=");
          if (l3 > 0L);
          for (boolean bool = true; ; bool = false)
          {
            Log.d("OldDatabaseConversion", bool + "values=" + localContentValues);
            break;
          }
        }
      }
      else
      {
        Log.d("OldDatabaseConversion", "  converCallData no data");
      }
      localCursor.close();
    }
    localSQLiteDatabase.close();
    Log.d("OldDatabaseConversion", "end converCallData>sucess=" + 0);
  }

  private static void f(Context paramContext, String paramString)
  {
    Log.d("OldDatabaseConversion", "begin converUserRuleData>");
    SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openDatabase(paramString, null, 0);
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = String.valueOf(c.c.ordinal());
    arrayOfString1[1] = String.valueOf(c.e.ordinal());
    Cursor localCursor = localSQLiteDatabase.query("contact", null, "list_type=? or list_type =?", arrayOfString1, null, null, null);
    a.a(paramContext);
    if (localCursor != null)
    {
      if (localCursor.getCount() > 0)
      {
        int k = localCursor.getColumnIndex("id");
        int m = localCursor.getColumnIndex("name");
        int n = localCursor.getColumnIndex("phone_number");
        int i1 = localCursor.getColumnIndex("list_type");
        int i2;
        String str1;
        String str2;
        c localc;
        do
        {
          if (!localCursor.moveToNext())
            break;
          i2 = localCursor.getInt(k);
          str1 = localCursor.getString(m);
          str2 = localCursor.getString(n);
          localc = c.values()[localCursor.getInt(i1)];
          if (localc == c.c)
          {
            long l2 = e.a(2, str2, str1, 1);
            if (l2 > 0L)
            {
              String[] arrayOfString3 = new String[1];
              arrayOfString3[0] = String.valueOf(i2);
              localSQLiteDatabase.delete("contact", "id=?", arrayOfString3);
            }
            StringBuilder localStringBuilder2 = new StringBuilder().append("converUserRuleData>BLACK>re=");
            if (l2 > 0L);
            for (boolean bool2 = true; ; bool2 = false)
            {
              Log.d("OldDatabaseConversion", bool2 + "number=" + str2);
              break;
            }
          }
        }
        while (localc != c.e);
        long l1 = e.a(1, str2, str1, 1);
        if (l1 > 0L)
        {
          String[] arrayOfString2 = new String[1];
          arrayOfString2[0] = String.valueOf(i2);
          localSQLiteDatabase.delete("contact", "id=?", arrayOfString2);
        }
        StringBuilder localStringBuilder1 = new StringBuilder().append("converUserRuleData>WHITE>re=");
        if (l1 > 0L);
        for (boolean bool1 = true; ; bool1 = false)
        {
          Log.d("OldDatabaseConversion", bool1 + "number=" + str2);
          break;
        }
      }
      Log.d("OldDatabaseConversion", "  converUserRuleData no data");
      localCursor.close();
    }
    localSQLiteDatabase.close();
    Log.d("OldDatabaseConversion", "end converUserRuleData>sucess=" + 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.n
 * JD-Core Version:    0.6.2
 */