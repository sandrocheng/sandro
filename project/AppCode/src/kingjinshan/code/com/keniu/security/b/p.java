package com.keniu.security.b;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CallLog.Calls;
import com.ijinshan.kinghelper.a.i;
import com.jxphone.mosecurity.b.a.a;
import com.jxphone.mosecurity.c.j;
import com.keniu.security.e;
import java.util.Collection;
import java.util.LinkedHashMap;

final class p
  implements o
{
  private ContentResolver a;

  public p(Context paramContext)
  {
    this.a = paramContext.getContentResolver();
  }

  private static j b(Cursor paramCursor)
  {
    j localj = new j(paramCursor.getString(1));
    localj.b(paramCursor.getInt(0));
    localj.a(paramCursor.getLong(2));
    localj.c(paramCursor.getInt(3));
    localj.c(1000L * paramCursor.getLong(4));
    return localj;
  }

  // ERROR //
  private j c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 21	com/keniu/security/b/p:a	Landroid/content/ContentResolver;
    //   4: getstatic 66	android/provider/CallLog$Calls:CONTENT_URI	Landroid/net/Uri;
    //   7: getstatic 72	com/keniu/security/e:fK	[Ljava/lang/String;
    //   10: new 74	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   17: ldc 77
    //   19: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: aload_1
    //   23: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc 83
    //   28: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: aconst_null
    //   35: ldc 89
    //   37: invokevirtual 95	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   40: astore 6
    //   42: aload 6
    //   44: ifnull +39 -> 83
    //   47: aload 6
    //   49: invokeinterface 99 1 0
    //   54: ifeq +29 -> 83
    //   57: aload 6
    //   59: invokestatic 25	com/keniu/security/b/p:b	(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/j;
    //   62: astore 9
    //   64: aload 6
    //   66: ifnull +10 -> 76
    //   69: aload 6
    //   71: invokeinterface 102 1 0
    //   76: aload 9
    //   78: astore 5
    //   80: aload 5
    //   82: areturn
    //   83: aload 6
    //   85: ifnull +10 -> 95
    //   88: aload 6
    //   90: invokeinterface 102 1 0
    //   95: aconst_null
    //   96: astore 5
    //   98: goto -18 -> 80
    //   101: astore 4
    //   103: aconst_null
    //   104: astore_3
    //   105: aload 4
    //   107: invokevirtual 105	android/database/SQLException:printStackTrace	()V
    //   110: aload_3
    //   111: ifnull +9 -> 120
    //   114: aload_3
    //   115: invokeinterface 102 1 0
    //   120: aconst_null
    //   121: astore 5
    //   123: goto -43 -> 80
    //   126: astore_2
    //   127: aconst_null
    //   128: astore_3
    //   129: aload_3
    //   130: ifnull +9 -> 139
    //   133: aload_3
    //   134: invokeinterface 102 1 0
    //   139: aload_2
    //   140: athrow
    //   141: astore 8
    //   143: aload 6
    //   145: astore_3
    //   146: aload 8
    //   148: astore_2
    //   149: goto -20 -> 129
    //   152: astore_2
    //   153: goto -24 -> 129
    //   156: astore 7
    //   158: aload 6
    //   160: astore_3
    //   161: aload 7
    //   163: astore 4
    //   165: goto -60 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   0	42	101	android/database/SQLException
    //   0	42	126	finally
    //   47	64	141	finally
    //   105	110	152	finally
    //   47	64	156	android/database/SQLException
  }

  private Cursor d()
  {
    try
    {
      Cursor localCursor2 = this.a.query(CallLog.Calls.CONTENT_URI, e.fK, null, null, "date desc");
      localCursor1 = localCursor2;
      return localCursor1;
    }
    catch (Exception localException)
    {
      while (true)
        Cursor localCursor1 = null;
    }
  }

  public final boolean a(int paramInt)
  {
    ContentResolver localContentResolver = this.a;
    Uri localUri = CallLog.Calls.CONTENT_URI;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = Integer.toString(paramInt);
    if (localContentResolver.delete(localUri, "_id=?", arrayOfString) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(int paramInt, long paramLong)
  {
    ContentResolver localContentResolver = this.a;
    Uri localUri = CallLog.Calls.CONTENT_URI;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = Integer.toString(paramInt);
    arrayOfString[1] = Long.toString(paramLong);
    if (localContentResolver.delete(localUri, "_id=? and date>=?", arrayOfString) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(j paramj)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("number", paramj.d());
    localContentValues.put("date", Long.valueOf(paramj.c()));
    localContentValues.put("type", Integer.valueOf(paramj.f()));
    localContentValues.put("duration", Long.valueOf(paramj.i() / 1000L));
    localContentValues.put("new", Boolean.valueOf(false));
    if (this.a.insert(CallLog.Calls.CONTENT_URI, localContentValues) != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(String paramString)
  {
    if (this.a.delete(CallLog.Calls.CONTENT_URI, "number like '%" + paramString + "'", null) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(String paramString, long paramLong)
  {
    j localj = c(paramString);
    boolean bool;
    if (localj == null)
      bool = false;
    while (true)
    {
      return bool;
      if (this.a.delete(CallLog.Calls.CONTENT_URI, "number like '%" + paramString + "'" + " and " + "date" + ">=" + Long.toString(paramLong) + " and " + "_id" + "=" + Integer.toString(localj.b()), null) == 1)
        bool = true;
      else
        bool = false;
    }
  }

  public final j[] a()
  {
    Cursor localCursor = d();
    LinkedHashMap localLinkedHashMap;
    if (localCursor != null)
      try
      {
        localLinkedHashMap = new LinkedHashMap(localCursor.getCount());
        while (localCursor.moveToNext())
        {
          String str = i.a(localCursor.getString(1));
          if (!localLinkedHashMap.containsKey(str))
            localLinkedHashMap.put(str, b(localCursor));
        }
      }
      finally
      {
        localCursor.close();
      }
    else
      localLinkedHashMap = new LinkedHashMap(0);
    j[] arrayOfj = new j[localLinkedHashMap.size()];
    localLinkedHashMap.values().toArray(arrayOfj);
    localLinkedHashMap.clear();
    localCursor.close();
    return arrayOfj;
  }

  public final a b(String paramString)
  {
    return new q(this.a.query(CallLog.Calls.CONTENT_URI, e.fK, "number like '%" + paramString + "'", null, "date desc"));
  }

  public final j b()
  {
    Cursor localCursor = d();
    if (localCursor != null);
    try
    {
      if (localCursor.moveToNext())
      {
        j localj2 = b(localCursor);
        localCursor.close();
        return localj1;
      }
      localCursor.close();
      j localj1 = null;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final a c()
  {
    return new q(d());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.p
 * JD-Core Version:    0.6.2
 */