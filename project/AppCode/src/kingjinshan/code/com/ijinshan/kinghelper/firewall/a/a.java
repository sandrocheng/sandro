package com.ijinshan.kinghelper.firewall.a;

import android.a.ab;
import android.a.k;
import android.a.w;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.provider.CallLog.Calls;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.ijinshan.kinghelper.firewall.core.v;
import com.ijinshan.kinghelper.firewall.core.y;

public final class a
{
  public static int a = 0;
  public static int b = 0;
  public static int c = 0;
  public static int d = 0;
  public static int e = 0;
  public static int f = 0;
  public static int g = 0;
  public static int h = 0;
  public static int i = 0;
  private static final int j = 3;
  private static final int k = 1;
  private static final int l = 2;
  private static final String m = "kingsoft_firewall_log.db";
  private static final String n = "kingsoft_firewall_log_sms";
  private static final String o = "kingsoft_firewall_log_call";
  private static b p = null;
  private static Context q = null;
  private static boolean r = false;

  public static int a()
  {
    String str;
    Object localObject;
    int i2;
    if (TextUtils.isEmpty(null))
    {
      String[] arrayOfString1 = { "0" };
      str = "read=?";
      localObject = arrayOfString1;
      Cursor localCursor = a(str, (String[])localObject, null);
      if (localCursor == null)
        break label78;
      i2 = localCursor.getCount();
      localCursor.close();
    }
    label78: for (int i1 = i2; ; i1 = 0)
    {
      return i1;
      String[] arrayOfString2 = { "0", null };
      str = "read=? and firewall_log_description=?";
      localObject = arrayOfString2;
      break;
    }
  }

  public static int a(int paramInt)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.delete("kingsoft_firewall_log_sms", "_id=" + paramInt, null);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static int a(long paramLong, ContentValues paramContentValues)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.update("kingsoft_firewall_log_call", paramContentValues, "_id=" + paramLong, null);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static int a(String paramString)
  {
    ContentResolver localContentResolver = q.getContentResolver();
    ContentValues localContentValues = new ContentValues();
    Cursor localCursor = b(paramString, null, null);
    int i1 = 0;
    if (localCursor != null)
    {
      int i2 = localCursor.getColumnIndex("_id");
      while (localCursor.moveToNext())
      {
        localContentValues.clear();
        DatabaseUtils.cursorRowToContentValues(localCursor, localContentValues);
        localContentValues.remove("_id");
        localContentValues.remove("firewall_log_rule_id");
        localContentValues.remove("firewall_log_description");
        localContentValues.remove("_id");
        int i3 = localCursor.getInt(i2);
        if (localContentResolver.insert(CallLog.Calls.CONTENT_URI, localContentValues) != null)
        {
          b(i3);
          i1++;
        }
      }
      localCursor.close();
    }
    return i1;
  }

  private static int a(String paramString, int paramInt)
  {
    String str;
    String[] arrayOfString;
    int i2;
    if (TextUtils.isEmpty(paramString))
    {
      str = "read=? and logtype=?";
      arrayOfString = new String[2];
      arrayOfString[0] = "0";
      arrayOfString[1] = Integer.toString(paramInt);
      Cursor localCursor = a(str, arrayOfString, null);
      if (localCursor == null)
        break label90;
      i2 = localCursor.getCount();
      localCursor.close();
    }
    label90: for (int i1 = i2; ; i1 = 0)
    {
      return i1;
      str = "read=? and firewall_log_description=? and logtype=?";
      arrayOfString = new String[3];
      arrayOfString[0] = "0";
      arrayOfString[1] = paramString;
      arrayOfString[2] = Integer.toString(paramInt);
      break;
    }
  }

  public static int a(String paramString, String[] paramArrayOfString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.delete("kingsoft_firewall_log_sms", paramString, paramArrayOfString);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  private static int a(String paramString, String[] paramArrayOfString, ContentValues paramContentValues)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.update("kingsoft_firewall_log_sms", paramContentValues, paramString, paramArrayOfString);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static long a(ContentValues paramContentValues)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        long l1 = localSQLiteDatabase.insert("kingsoft_firewall_log_sms", null, paramContentValues);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return l1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static long a(String paramString, g paramg)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("type", Integer.valueOf(1));
      localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("new", Integer.valueOf(1));
      localContentValues.put("duration", Integer.valueOf(0));
      localContentValues.put("number", paramString);
      localContentValues.put("firewall_log_description", paramg.h);
      localContentValues.put("firewall_log_rule_id", Integer.valueOf(paramg.i));
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        long l1 = localSQLiteDatabase.insert("kingsoft_firewall_log_call", null, localContentValues);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return l1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static long a(String paramString, v paramv, g paramg)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("exp", Long.valueOf(paramv.g));
      localContentValues.put("ct_l", paramv.b);
      localContentValues.put("m_size", Long.valueOf(paramv.d));
      localContentValues.put("tr_id", paramv.e);
      localContentValues.put("ct_t", Integer.valueOf(paramv.a));
      localContentValues.put("v", Integer.valueOf(paramv.f));
      localContentValues.put("firewall_from", Integer.valueOf(c));
      localContentValues.put("logtype", Integer.valueOf(h));
      localContentValues.put("address", paramString);
      localContentValues.put("read", Integer.valueOf(0));
      localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("firewall_log_time", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("firewall_log_description", paramg.h);
      localContentValues.put("firewall_log_rule_id", Integer.valueOf(paramg.i));
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        long l1 = localSQLiteDatabase.insert("kingsoft_firewall_log_sms", null, localContentValues);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return l1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static long a(String paramString1, String paramString2, g paramg)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("address", paramString1);
      localContentValues.put("service_center", "");
      localContentValues.put("read", Integer.valueOf(0));
      localContentValues.put("protocol", Integer.valueOf(0));
      localContentValues.put("body", paramString2);
      localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("person", Integer.valueOf(-1));
      localContentValues.put("firewall_from", Integer.valueOf(c));
      localContentValues.put("logtype", Integer.valueOf(i));
      localContentValues.put("firewall_log_time", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("firewall_log_description", paramg.h);
      localContentValues.put("firewall_log_rule_id", Integer.valueOf(paramg.i));
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        long l1 = localSQLiteDatabase.insert("kingsoft_firewall_log_sms", null, localContentValues);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return l1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static long a(SmsMessage[] paramArrayOfSmsMessage, g paramg)
  {
    int i1 = 0;
    try
    {
      String str = paramArrayOfSmsMessage[0].getOriginatingAddress();
      StringBuilder localStringBuilder = new StringBuilder();
      int i2 = paramArrayOfSmsMessage.length;
      while (true)
        if (i1 < i2)
          try
          {
            localStringBuilder.append(paramArrayOfSmsMessage[i1].getDisplayMessageBody());
            i1++;
          }
          catch (Exception localException)
          {
          }
      SmsMessage localSmsMessage = paramArrayOfSmsMessage[0];
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("address", str);
      if (localSmsMessage.getPseudoSubject().length() > 0)
        localContentValues.put("subject", localSmsMessage.getPseudoSubject());
      localContentValues.put("service_center", localSmsMessage.getServiceCenterAddress());
      localContentValues.put("read", Integer.valueOf(0));
      localContentValues.put("protocol", Integer.valueOf(localSmsMessage.getProtocolIdentifier()));
      localContentValues.put("body", localStringBuilder.toString());
      localContentValues.put("date", Long.valueOf(y.a(q, localSmsMessage)));
      localContentValues.put("person", Integer.valueOf(-1));
      localContentValues.put("logtype", Integer.valueOf(g));
      localContentValues.put("firewall_log_time", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("firewall_log_description", paramg.h);
      localContentValues.put("firewall_log_rule_id", Integer.valueOf(paramg.i));
      localContentValues.put("firewall_from", Integer.valueOf(c));
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        long l1 = localSQLiteDatabase.insert("kingsoft_firewall_log_sms", null, localContentValues);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return l1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static Cursor a(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    return p.getReadableDatabase().query("kingsoft_firewall_log_sms", null, paramString1, paramArrayOfString, null, null, paramString2);
  }

  private static Uri a(ContentResolver paramContentResolver, Cursor paramCursor)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("address", paramCursor.getString(paramCursor.getColumnIndex("address")));
    localContentValues.put("subject", paramCursor.getString(paramCursor.getColumnIndex("subject")));
    localContentValues.put("service_center", paramCursor.getString(paramCursor.getColumnIndex("service_center")));
    localContentValues.put("read", paramCursor.getString(paramCursor.getColumnIndex("read")));
    localContentValues.put("protocol", paramCursor.getString(paramCursor.getColumnIndex("protocol")));
    localContentValues.put("person", paramCursor.getString(paramCursor.getColumnIndex("person")));
    localContentValues.put("body", paramCursor.getString(paramCursor.getColumnIndex("body")));
    localContentValues.put("date", paramCursor.getString(paramCursor.getColumnIndex("date")));
    return paramContentResolver.insert(w.a, localContentValues);
  }

  public static String a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    String str1;
    for (String str2 = paramString; ; str2 = paramString + str1)
    {
      return str2;
      str1 = paramContext.getString(2131427637);
    }
  }

  public static String a(Context paramContext, String paramString, int paramInt)
  {
    String str;
    if (TextUtils.isEmpty(paramString))
      str = paramString;
    while (true)
    {
      return str;
      if (paramInt == h)
        str = paramString + paramContext.getString(2131427853);
      else if (paramInt == i)
        str = paramContext.getString(2131427854);
      else
        str = paramString + paramContext.getString(2131427636);
    }
  }

  public static void a(Context paramContext)
  {
    if (q == null)
      q = paramContext.getApplicationContext();
    if (p == null)
      p = new b(q);
    if ((p != null) && (!r))
    {
      p.getWritableDatabase();
      r = true;
    }
  }

  public static boolean a(String paramString1, String paramString2)
  {
    String[] arrayOfString = { paramString1, paramString2 };
    Cursor localCursor = p.getReadableDatabase().query("kingsoft_firewall_log_sms", null, "address = ? and tr_id = ?", arrayOfString, null, null, null);
    if (localCursor != null)
      if (localCursor.getCount() > 0)
        localCursor.close();
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      localCursor.close();
    }
  }

  public static int b()
  {
    Cursor localCursor = b("new=?", new String[] { "1" }, null);
    int i2;
    if (localCursor != null)
    {
      i2 = localCursor.getCount();
      localCursor.close();
    }
    for (int i1 = i2; ; i1 = 0)
      return i1;
  }

  public static int b(int paramInt)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.delete("kingsoft_firewall_log_call", "_id=" + paramInt, null);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static int b(long paramLong, ContentValues paramContentValues)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.update("kingsoft_firewall_log_sms", paramContentValues, "_id=" + paramLong, null);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  private static int b(String paramString)
  {
    ContentResolver localContentResolver = q.getContentResolver();
    Cursor localCursor = a(paramString, null, null);
    int i1 = 0;
    if (localCursor != null)
    {
      int i2 = localCursor.getColumnIndex("_id");
      while (localCursor.moveToNext())
      {
        int i3 = localCursor.getInt(localCursor.getColumnIndex("logtype"));
        if (i3 != i)
          if (i3 == h)
          {
            int i5 = localCursor.getInt(i2);
            if (b(localContentResolver, localCursor) != null)
            {
              a(i5);
              i1++;
            }
          }
          else if (i3 == g)
          {
            int i4 = localCursor.getInt(i2);
            ContentValues localContentValues = new ContentValues();
            localContentValues.put("address", localCursor.getString(localCursor.getColumnIndex("address")));
            localContentValues.put("subject", localCursor.getString(localCursor.getColumnIndex("subject")));
            localContentValues.put("service_center", localCursor.getString(localCursor.getColumnIndex("service_center")));
            localContentValues.put("read", localCursor.getString(localCursor.getColumnIndex("read")));
            localContentValues.put("protocol", localCursor.getString(localCursor.getColumnIndex("protocol")));
            localContentValues.put("person", localCursor.getString(localCursor.getColumnIndex("person")));
            localContentValues.put("body", localCursor.getString(localCursor.getColumnIndex("body")));
            localContentValues.put("date", localCursor.getString(localCursor.getColumnIndex("date")));
            if (localContentResolver.insert(w.a, localContentValues) != null)
            {
              a(i4);
              i1++;
            }
          }
      }
      localCursor.close();
    }
    return i1;
  }

  public static int b(String paramString, String[] paramArrayOfString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.delete("kingsoft_firewall_log_call", paramString, paramArrayOfString);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static long b(ContentValues paramContentValues)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        long l1 = localSQLiteDatabase.insert("kingsoft_firewall_log_call", null, paramContentValues);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return l1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static Cursor b(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    return p.getReadableDatabase().query("kingsoft_firewall_log_call", null, paramString1, paramArrayOfString, null, null, paramString2);
  }

  private static Uri b(ContentResolver paramContentResolver, Cursor paramCursor)
  {
    ContentValues localContentValues = new ContentValues();
    String str = paramCursor.getString(paramCursor.getColumnIndex("address"));
    try
    {
      localContentValues.put("thread_id", String.valueOf(ab.a(q, str)));
      localContentValues.put("ct_l", paramCursor.getString(paramCursor.getColumnIndex("ct_l")));
      localContentValues.put("date", Long.valueOf(paramCursor.getLong(paramCursor.getColumnIndex("date")) / 1000L));
      localContentValues.put("read", paramCursor.getString(paramCursor.getColumnIndex("read")));
      localContentValues.put("exp", paramCursor.getString(paramCursor.getColumnIndex("exp")));
      localContentValues.put("m_type", paramCursor.getString(paramCursor.getColumnIndex("ct_t")));
      localContentValues.put("m_size", paramCursor.getString(paramCursor.getColumnIndex("m_size")));
      localContentValues.put("tr_id", paramCursor.getString(paramCursor.getColumnIndex("tr_id")));
      localContentValues.put("v", Integer.valueOf(paramCursor.getInt(paramCursor.getColumnIndex("v"))));
      Uri localUri2 = paramContentResolver.insert(k.ay, localContentValues);
      localUri1 = localUri2;
      return localUri1;
    }
    catch (Exception localException)
    {
      while (true)
        Uri localUri1 = null;
    }
  }

  public static int c(ContentValues paramContentValues)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.update("kingsoft_firewall_log_call", paramContentValues, null, null);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  private static int c(String paramString, String[] paramArrayOfString)
  {
    return q.getContentResolver().delete(CallLog.Calls.CONTENT_URI, paramString, paramArrayOfString);
  }

  public static Cursor c(int paramInt)
  {
    return a("_id=" + paramInt, null, null);
  }

  private static void c()
  {
    if (q != null)
      q = null;
    if (p != null)
      p.close();
  }

  private static int d()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.delete("kingsoft_firewall_log_sms", null, null);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static Cursor d(int paramInt)
  {
    return b("_id=" + paramInt, null, null);
  }

  private static int e()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = p.getWritableDatabase();
      localSQLiteDatabase.beginTransaction();
      try
      {
        int i1 = localSQLiteDatabase.delete("kingsoft_firewall_log_call", null, null);
        localSQLiteDatabase.setTransactionSuccessful();
        localSQLiteDatabase.endTransaction();
        return i1;
      }
      finally
      {
        localObject2 = finally;
        localSQLiteDatabase.endTransaction();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public static int e(int paramInt)
  {
    return a("_id=" + paramInt);
  }

  public static int f(int paramInt)
  {
    return b("_id=" + paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.a.a
 * JD-Core Version:    0.6.2
 */