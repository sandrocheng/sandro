package com.keniu.security.b;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import com.ijinshan.kinghelper.a.i;
import com.jxphone.mosecurity.b.a.a;
import com.jxphone.mosecurity.c.l;
import com.keniu.security.e;
import java.util.Collection;
import java.util.LinkedHashMap;

final class v
  implements u
{
  private static final String a = "address";
  private static final String b = "date";
  private static final String c = "body";
  private static final String d = "read";
  private ContentResolver e;

  public v(Context paramContext)
  {
    this.e = paramContext.getContentResolver();
  }

  private static l b(Cursor paramCursor)
  {
    l locall = new l();
    locall.d(paramCursor.getInt(0));
    locall.a(paramCursor.getString(1));
    locall.b(paramCursor.getString(2));
    locall.a(paramCursor.getLong(3));
    locall.b(paramCursor.getInt(4));
    return locall;
  }

  private Cursor d()
  {
    return this.e.query(e.fB, e.fD, "type=1 or type=2", null, "date desc");
  }

  public final int a(String paramString, long paramLong)
  {
    ContentResolver localContentResolver = this.e;
    Uri localUri = e.fB;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = paramString;
    arrayOfString[1] = Long.toString(paramLong);
    return localContentResolver.delete(localUri, "address=? and date>=?", arrayOfString);
  }

  public final boolean a(int paramInt, long paramLong)
  {
    ContentResolver localContentResolver = this.e;
    Uri localUri = e.fB;
    String[] arrayOfString = new String[2];
    arrayOfString[0] = Integer.toString(paramInt);
    arrayOfString[1] = Long.toString(paramLong);
    if (localContentResolver.delete(localUri, "_id=? and date>=?", arrayOfString) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(l paraml)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("address", paraml.b());
    localContentValues.put("body", paraml.c());
    localContentValues.put("date", Long.valueOf(paraml.d()));
    localContentValues.put("type", Integer.valueOf(paraml.f()));
    localContentValues.put("read", Integer.valueOf(1));
    if (this.e.insert(e.fC, localContentValues) != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(String paramString)
  {
    if (this.e.delete(e.fB, "address like '%" + paramString + "'", null) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final l[] a()
  {
    Cursor localCursor = d();
    LinkedHashMap localLinkedHashMap;
    try
    {
      localLinkedHashMap = new LinkedHashMap(localCursor.getCount());
      while (localCursor.moveToNext())
      {
        String str1 = localCursor.getString(1);
        String str2 = i.a(str1);
        if (!localLinkedHashMap.containsKey(str2))
        {
          l locall = new l();
          locall.a(str1);
          locall.b(localCursor.getString(2));
          locall.a(localCursor.getLong(3));
          locall.b(localCursor.getInt(4));
          locall.c(localCursor.getInt(5));
          localLinkedHashMap.put(str2, locall);
        }
      }
    }
    finally
    {
      localCursor.close();
    }
    l[] arrayOfl = new l[localLinkedHashMap.size()];
    localLinkedHashMap.values().toArray(arrayOfl);
    localLinkedHashMap.clear();
    localCursor.close();
    return arrayOfl;
  }

  public final a b(String paramString)
  {
    return new x(this.e.query(e.fB, e.fD, "type in (?,?) and address like '%" + paramString + "'", new String[] { "1", "2" }, "date desc"));
  }

  // ERROR //
  public final l b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/keniu/security/b/v:e	Landroid/content/ContentResolver;
    //   4: getstatic 74	com/keniu/security/e:fB	Landroid/net/Uri;
    //   7: getstatic 78	com/keniu/security/e:fD	[Ljava/lang/String;
    //   10: ldc 80
    //   12: aconst_null
    //   13: ldc 82
    //   15: invokevirtual 88	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   18: astore_3
    //   19: aload_3
    //   20: ifnonnull +19 -> 39
    //   23: aload_3
    //   24: ifnull +9 -> 33
    //   27: aload_3
    //   28: invokeinterface 197 1 0
    //   33: aconst_null
    //   34: astore 6
    //   36: aload 6
    //   38: areturn
    //   39: aload_3
    //   40: invokeinterface 180 1 0
    //   45: ifeq +30 -> 75
    //   48: aload_3
    //   49: invokestatic 37	com/keniu/security/b/v:b	(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    //   52: astore 7
    //   54: aload 7
    //   56: astore 5
    //   58: aload_3
    //   59: ifnull +9 -> 68
    //   62: aload_3
    //   63: invokeinterface 197 1 0
    //   68: aload 5
    //   70: astore 6
    //   72: goto -36 -> 36
    //   75: aconst_null
    //   76: astore 5
    //   78: goto -20 -> 58
    //   81: astore_1
    //   82: aconst_null
    //   83: astore_2
    //   84: aload_2
    //   85: ifnull +9 -> 94
    //   88: aload_2
    //   89: invokeinterface 197 1 0
    //   94: aload_1
    //   95: athrow
    //   96: astore 4
    //   98: aload_3
    //   99: astore_2
    //   100: aload 4
    //   102: astore_1
    //   103: goto -19 -> 84
    //
    // Exception table:
    //   from	to	target	type
    //   0	19	81	finally
    //   39	54	96	finally
  }

  public final a c()
  {
    return new x(d());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.v
 * JD-Core Version:    0.6.2
 */