package com.ijinshan.bootmanager.c;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public final class a
{
  private static final String a = "kingsoft_autoboot_white.db";
  private static final String b = "autoboot_white";
  private b c;
  private SQLiteDatabase d;

  public a(Context paramContext)
  {
    if (this.c == null)
      this.c = new b(this, paramContext);
    this.d = this.c.getWritableDatabase();
  }

  private boolean b(com.ijinshan.bootmanager.b.a parama)
  {
    boolean bool2;
    if (parama == null)
    {
      bool2 = false;
      return bool2;
    }
    String[] arrayOfString = new String[1];
    arrayOfString[0] = parama.c();
    Cursor localCursor = this.d.query("autoboot_white", null, " packageName = ?", arrayOfString, null, null, null);
    if ((localCursor != null) && (localCursor.getCount() != 0));
    for (boolean bool1 = true; ; bool1 = false)
    {
      if (localCursor != null)
        localCursor.close();
      bool2 = bool1;
      break;
    }
  }

  // ERROR //
  public final long a(com.ijinshan.bootmanager.b.a parama, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +13 -> 16
    //   6: ldc2_w 60
    //   9: lstore 13
    //   11: aload_0
    //   12: monitorexit
    //   13: lload 13
    //   15: lreturn
    //   16: new 63	android/content/ContentValues
    //   19: dup
    //   20: invokespecial 64	android/content/ContentValues:<init>	()V
    //   23: astore_3
    //   24: aload_3
    //   25: ldc 66
    //   27: aload_1
    //   28: invokevirtual 41	com/ijinshan/bootmanager/b/a:c	()Ljava/lang/String;
    //   31: invokevirtual 70	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: aload_3
    //   35: ldc 72
    //   37: aload_1
    //   38: invokevirtual 75	com/ijinshan/bootmanager/b/a:e	()Ljava/lang/String;
    //   41: invokevirtual 70	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   44: aload_3
    //   45: ldc 77
    //   47: aload_2
    //   48: invokevirtual 70	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: iconst_1
    //   52: anewarray 36	java/lang/String
    //   55: astore 5
    //   57: aload 5
    //   59: iconst_0
    //   60: aload_1
    //   61: invokevirtual 41	com/ijinshan/bootmanager/b/a:c	()Ljava/lang/String;
    //   64: aastore
    //   65: aload_0
    //   66: getfield 33	com/ijinshan/bootmanager/c/a:d	Landroid/database/sqlite/SQLiteDatabase;
    //   69: invokevirtual 80	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   72: aload_1
    //   73: ifnonnull +52 -> 125
    //   76: iconst_0
    //   77: istore 10
    //   79: iload 10
    //   81: ifeq +110 -> 191
    //   84: aload_0
    //   85: getfield 33	com/ijinshan/bootmanager/c/a:d	Landroid/database/sqlite/SQLiteDatabase;
    //   88: ldc 11
    //   90: aload_3
    //   91: ldc 43
    //   93: aload 5
    //   95: invokevirtual 84	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   98: i2l
    //   99: lstore 13
    //   101: aload_0
    //   102: getfield 33	com/ijinshan/bootmanager/c/a:d	Landroid/database/sqlite/SQLiteDatabase;
    //   105: invokevirtual 87	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   108: aload_0
    //   109: getfield 33	com/ijinshan/bootmanager/c/a:d	Landroid/database/sqlite/SQLiteDatabase;
    //   112: invokevirtual 90	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   115: goto -104 -> 11
    //   118: astore 4
    //   120: aload_0
    //   121: monitorexit
    //   122: aload 4
    //   124: athrow
    //   125: iconst_1
    //   126: anewarray 36	java/lang/String
    //   129: astore 7
    //   131: aload 7
    //   133: iconst_0
    //   134: aload_1
    //   135: invokevirtual 41	com/ijinshan/bootmanager/b/a:c	()Ljava/lang/String;
    //   138: aastore
    //   139: aload_0
    //   140: getfield 33	com/ijinshan/bootmanager/c/a:d	Landroid/database/sqlite/SQLiteDatabase;
    //   143: ldc 11
    //   145: aconst_null
    //   146: ldc 43
    //   148: aload 7
    //   150: aconst_null
    //   151: aconst_null
    //   152: aconst_null
    //   153: invokevirtual 49	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   156: astore 8
    //   158: aload 8
    //   160: ifnull +70 -> 230
    //   163: aload 8
    //   165: invokeinterface 55 1 0
    //   170: ifeq +60 -> 230
    //   173: iconst_1
    //   174: istore 9
    //   176: aload 8
    //   178: ifnull +45 -> 223
    //   181: aload 8
    //   183: invokeinterface 58 1 0
    //   188: goto +35 -> 223
    //   191: aload_0
    //   192: getfield 33	com/ijinshan/bootmanager/c/a:d	Landroid/database/sqlite/SQLiteDatabase;
    //   195: ldc 11
    //   197: aconst_null
    //   198: aload_3
    //   199: invokevirtual 94	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   202: lstore 11
    //   204: lload 11
    //   206: lstore 13
    //   208: goto -107 -> 101
    //   211: astore 6
    //   213: aload_0
    //   214: getfield 33	com/ijinshan/bootmanager/c/a:d	Landroid/database/sqlite/SQLiteDatabase;
    //   217: invokevirtual 90	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   220: aload 6
    //   222: athrow
    //   223: iload 9
    //   225: istore 10
    //   227: goto -148 -> 79
    //   230: iconst_0
    //   231: istore 9
    //   233: goto -57 -> 176
    //
    // Exception table:
    //   from	to	target	type
    //   16	72	118	finally
    //   108	115	118	finally
    //   213	223	118	finally
    //   84	108	211	finally
    //   125	204	211	finally
  }

  public final void a()
  {
    if (this.d != null)
      this.d.close();
    if (this.c != null)
      this.c.close();
  }

  public final boolean a(com.ijinshan.bootmanager.b.a parama)
  {
    boolean bool2;
    if (parama == null)
    {
      bool2 = false;
      return bool2;
    }
    String[] arrayOfString = new String[1];
    arrayOfString[0] = parama.c();
    Cursor localCursor = this.d.query("autoboot_white", null, " packageName = ? and type = '0'", arrayOfString, null, null, null);
    if ((localCursor != null) && (localCursor.getCount() != 0));
    for (boolean bool1 = true; ; bool1 = false)
    {
      if (localCursor != null)
        localCursor.close();
      bool2 = bool1;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.c.a
 * JD-Core Version:    0.6.2
 */