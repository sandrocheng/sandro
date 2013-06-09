package org.antivirus.core.c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils.InsertHelper;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.zip.Adler32;
import org.antivirus.core.Logger;

public final class b
{
  public static final Object a = new Object();
  public static ArrayList b;
  DatabaseUtils.InsertHelper c = null;
  Adler32 d = null;
  ContentValues e = new ContentValues();
  private SQLiteDatabase f = null;
  private a g = null;
  private Adler32 h = new Adler32();

  private void a(SQLiteDatabase paramSQLiteDatabase, String paramString, d paramd)
  {
    int i = 0;
    switch (c.a[paramd.ordinal()])
    {
    default:
    case 1:
    case 3:
    case 2:
    case 4:
    }
    while (true)
    {
      return;
      String str1 = "manifestsig";
      label45: this.e.clear();
      if (paramString != null)
        try
        {
          String[] arrayOfString1 = paramString.split("\\|");
          if ((arrayOfString1 != null) && (arrayOfString1.length > 0))
          {
            int j = arrayOfString1.length;
            while (i < j)
            {
              String str2 = arrayOfString1[i];
              if (!TextUtils.isEmpty(str2))
              {
                String[] arrayOfString2 = str2.split(":");
                if ((arrayOfString2 != null) && (arrayOfString2.length == 2) && (!TextUtils.isEmpty(arrayOfString2[0])) && (!TextUtils.isEmpty(arrayOfString2[1])))
                {
                  this.e.put("cat", arrayOfString2[0]);
                  this.e.put("sha", arrayOfString2[1]);
                  paramSQLiteDatabase.insert(str1, null, this.e);
                  this.e.clear();
                }
              }
              i++;
            }
            str1 = "bpacksig";
            break label45;
            str1 = "classessig";
            break label45;
            str1 = "mediasig";
          }
        }
        catch (Exception localException)
        {
          Logger.log(localException);
        }
    }
  }

  private static void a(Object paramObject, ContentValues paramContentValues, SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramObject != null)
    {
      String[] arrayOfString1 = ((String)paramObject).split("\\|");
      if ((arrayOfString1 != null) && (arrayOfString1.length > 0))
      {
        paramSQLiteDatabase.delete("categories", "1", null);
        int i = arrayOfString1.length;
        for (int j = 0; j < i; j++)
        {
          String str = arrayOfString1[j];
          if (!TextUtils.isEmpty(str))
          {
            String[] arrayOfString2 = str.split(":");
            if ((arrayOfString2 != null) && (arrayOfString2.length == 2) && (!TextUtils.isEmpty(arrayOfString2[0])) && (!TextUtils.isEmpty(arrayOfString2[1])))
              paramContentValues.put("_id", arrayOfString2[0]);
            paramContentValues.put("cat_name", arrayOfString2[1]);
            paramSQLiteDatabase.insert("categories", null, paramContentValues);
          }
        }
      }
    }
  }

  // ERROR //
  private e b(Context paramContext, d paramd, String paramString, int paramInt)
  {
    // Byte code:
    //   0: new 121	org/antivirus/core/c/e
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 124	org/antivirus/core/c/e:<init>	(Lorg/antivirus/core/c/b;)V
    //   8: astore 5
    //   10: aload 5
    //   12: iconst_0
    //   13: putfield 127	org/antivirus/core/c/e:c	Z
    //   16: aload_0
    //   17: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   20: ifnonnull +42 -> 62
    //   23: aload_0
    //   24: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   27: ifnull +10 -> 37
    //   30: aload_0
    //   31: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   34: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   37: aload_0
    //   38: new 129	org/antivirus/core/c/a
    //   41: dup
    //   42: aload_1
    //   43: ldc 134
    //   45: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   48: putfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   56: invokevirtual 141	org/antivirus/core/c/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   59: putfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   62: aload_0
    //   63: getfield 39	org/antivirus/core/c/b:d	Ljava/util/zip/Adler32;
    //   66: ifnonnull +14 -> 80
    //   69: aload_0
    //   70: new 32	java/util/zip/Adler32
    //   73: dup
    //   74: invokespecial 33	java/util/zip/Adler32:<init>	()V
    //   77: putfield 39	org/antivirus/core/c/b:d	Ljava/util/zip/Adler32;
    //   80: getstatic 52	org/antivirus/core/c/c:a	[I
    //   83: aload_2
    //   84: invokevirtual 58	org/antivirus/core/c/d:ordinal	()I
    //   87: iaload
    //   88: tableswitch	default:+281 -> 369, 1:+223->311, 2:+230->318
    //   113: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   116: ifnull +247 -> 363
    //   119: aload_0
    //   120: getfield 39	org/antivirus/core/c/b:d	Ljava/util/zip/Adler32;
    //   123: invokevirtual 144	java/util/zip/Adler32:reset	()V
    //   126: aload_0
    //   127: getfield 39	org/antivirus/core/c/b:d	Ljava/util/zip/Adler32;
    //   130: aload_3
    //   131: invokevirtual 148	java/lang/String:getBytes	()[B
    //   134: invokevirtual 152	java/util/zip/Adler32:update	([B)V
    //   137: new 154	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 155	java/lang/StringBuilder:<init>	()V
    //   144: aload_0
    //   145: getfield 39	org/antivirus/core/c/b:d	Ljava/util/zip/Adler32;
    //   148: invokevirtual 159	java/util/zip/Adler32:getValue	()J
    //   151: invokevirtual 163	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   154: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: astore 11
    //   159: aload_0
    //   160: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   163: aload 10
    //   165: iconst_2
    //   166: anewarray 67	java/lang/String
    //   169: dup
    //   170: iconst_0
    //   171: ldc 87
    //   173: aastore
    //   174: dup
    //   175: iconst_1
    //   176: ldc 81
    //   178: aastore
    //   179: ldc 169
    //   181: iconst_2
    //   182: anewarray 67	java/lang/String
    //   185: dup
    //   186: iconst_0
    //   187: aload 11
    //   189: aastore
    //   190: dup
    //   191: iconst_1
    //   192: aload_3
    //   193: aastore
    //   194: aconst_null
    //   195: aconst_null
    //   196: ldc 171
    //   198: invokevirtual 175	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   201: astore 12
    //   203: aload 12
    //   205: astore 7
    //   207: aload 7
    //   209: ifnull +123 -> 332
    //   212: aload 7
    //   214: invokeinterface 180 1 0
    //   219: ifle +113 -> 332
    //   222: aload 7
    //   224: invokeinterface 184 1 0
    //   229: ifeq +96 -> 325
    //   232: aload 7
    //   234: iconst_1
    //   235: invokeinterface 188 2 0
    //   240: iload 4
    //   242: if_icmpge -20 -> 222
    //   245: aload 5
    //   247: iconst_1
    //   248: putfield 127	org/antivirus/core/c/e:c	Z
    //   251: aload 5
    //   253: aload_3
    //   254: putfield 191	org/antivirus/core/c/e:a	Ljava/lang/String;
    //   257: aload 5
    //   259: aload 7
    //   261: iconst_1
    //   262: invokeinterface 188 2 0
    //   267: putfield 194	org/antivirus/core/c/e:b	I
    //   270: goto -48 -> 222
    //   273: astore 6
    //   275: aload 6
    //   277: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   280: new 47	java/lang/Exception
    //   283: dup
    //   284: ldc 196
    //   286: invokespecial 199	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   289: athrow
    //   290: astore 8
    //   292: aload 7
    //   294: astore 9
    //   296: aload 9
    //   298: ifnull +10 -> 308
    //   301: aload 9
    //   303: invokeinterface 200 1 0
    //   308: aload 8
    //   310: athrow
    //   311: ldc 60
    //   313: astore 10
    //   315: goto -203 -> 112
    //   318: ldc 97
    //   320: astore 10
    //   322: goto -210 -> 112
    //   325: aload 7
    //   327: invokeinterface 200 1 0
    //   332: aload 7
    //   334: ifnull +10 -> 344
    //   337: aload 7
    //   339: invokeinterface 200 1 0
    //   344: aload 5
    //   346: areturn
    //   347: astore 8
    //   349: aconst_null
    //   350: astore 9
    //   352: goto -56 -> 296
    //   355: astore 6
    //   357: aconst_null
    //   358: astore 7
    //   360: goto -85 -> 275
    //   363: aconst_null
    //   364: astore 7
    //   366: goto -34 -> 332
    //   369: ldc 60
    //   371: astore 10
    //   373: goto -261 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   212	270	273	java/lang/Exception
    //   325	332	273	java/lang/Exception
    //   212	270	290	finally
    //   275	290	290	finally
    //   325	332	290	finally
    //   16	203	347	finally
    //   16	203	355	java/lang/Exception
  }

  private void b(SQLiteDatabase paramSQLiteDatabase, String paramString, d paramd)
  {
    int i = 0;
    switch (c.a[paramd.ordinal()])
    {
    default:
    case 1:
    case 3:
    case 2:
    case 4:
    }
    while (true)
    {
      return;
      String str1 = "manifestsig";
      this.e.clear();
      if (paramString != null)
        try
        {
          String[] arrayOfString1 = paramString.split("\\|");
          if ((arrayOfString1 != null) && (arrayOfString1.length > 0))
          {
            int j = arrayOfString1.length;
            label80: if (i < j)
            {
              String str2 = arrayOfString1[i];
              String[] arrayOfString2;
              if (!TextUtils.isEmpty(str2))
              {
                arrayOfString2 = str2.substring(1).split(":");
                if ((arrayOfString2 != null) && (arrayOfString2.length == 2) && (!TextUtils.isEmpty(arrayOfString2[0])) && (!TextUtils.isEmpty(arrayOfString2[1])))
                {
                  if ('+' != str2.charAt(0))
                    break label230;
                  this.e.put("cat", arrayOfString2[0]);
                  this.e.put("sha", arrayOfString2[1]);
                  paramSQLiteDatabase.insert(str1, null, this.e);
                  this.e.clear();
                }
              }
              while (true)
              {
                i++;
                break label80;
                str1 = "bpacksig";
                break;
                str1 = "classessig";
                break;
                str1 = "mediasig";
                break;
                label230: if ('-' == str2.charAt(0))
                {
                  String[] arrayOfString3 = new String[2];
                  arrayOfString3[0] = arrayOfString2[1];
                  arrayOfString3[1] = arrayOfString2[0];
                  paramSQLiteDatabase.delete(str1, "sha=? and cat=?", arrayOfString3);
                }
              }
            }
          }
        }
        catch (Exception localException)
        {
          Logger.log(localException);
        }
    }
  }

  // ERROR //
  private String f(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ldc 134
    //   5: invokevirtual 217	android/content/Context:getDatabasePath	(Ljava/lang/String;)Ljava/io/File;
    //   8: invokevirtual 222	java/io/File:exists	()Z
    //   11: ifeq +199 -> 210
    //   14: aload_0
    //   15: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   18: ifnonnull +42 -> 60
    //   21: aload_0
    //   22: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   25: ifnull +10 -> 35
    //   28: aload_0
    //   29: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   32: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   35: aload_0
    //   36: new 129	org/antivirus/core/c/a
    //   39: dup
    //   40: aload_1
    //   41: ldc 134
    //   43: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   46: putfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   49: aload_0
    //   50: aload_0
    //   51: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   54: invokevirtual 141	org/antivirus/core/c/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   57: putfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   60: aload_0
    //   61: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   64: ifnull +204 -> 268
    //   67: aload_0
    //   68: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   71: ldc 224
    //   73: iconst_1
    //   74: anewarray 67	java/lang/String
    //   77: dup
    //   78: iconst_0
    //   79: ldc 226
    //   81: aastore
    //   82: ldc 228
    //   84: iconst_1
    //   85: anewarray 67	java/lang/String
    //   88: dup
    //   89: iconst_0
    //   90: ldc 230
    //   92: aastore
    //   93: aconst_null
    //   94: aconst_null
    //   95: aconst_null
    //   96: invokevirtual 175	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   99: astore 7
    //   101: aload 7
    //   103: ifnull +156 -> 259
    //   106: aload 7
    //   108: invokeinterface 180 1 0
    //   113: ifle +139 -> 252
    //   116: aload 7
    //   118: invokeinterface 184 1 0
    //   123: pop
    //   124: aload 7
    //   126: iconst_0
    //   127: invokeinterface 233 2 0
    //   132: astore 13
    //   134: aload 13
    //   136: astore 10
    //   138: aload 7
    //   140: invokeinterface 200 1 0
    //   145: aload 10
    //   147: astore_3
    //   148: aload_2
    //   149: ifnull +9 -> 158
    //   152: aload_2
    //   153: invokeinterface 200 1 0
    //   158: aload_0
    //   159: invokevirtual 235	org/antivirus/core/c/b:a	()V
    //   162: aload_3
    //   163: areturn
    //   164: astore 5
    //   166: aconst_null
    //   167: astore 6
    //   169: ldc 237
    //   171: astore_3
    //   172: aload 6
    //   174: ifnull +10 -> 184
    //   177: aload 6
    //   179: invokeinterface 200 1 0
    //   184: aload_0
    //   185: invokevirtual 235	org/antivirus/core/c/b:a	()V
    //   188: goto -26 -> 162
    //   191: astore 4
    //   193: aload_2
    //   194: ifnull +9 -> 203
    //   197: aload_2
    //   198: invokeinterface 200 1 0
    //   203: aload_0
    //   204: invokevirtual 235	org/antivirus/core/c/b:a	()V
    //   207: aload 4
    //   209: athrow
    //   210: ldc 239
    //   212: astore_3
    //   213: goto -51 -> 162
    //   216: astore 9
    //   218: aload 7
    //   220: astore_2
    //   221: aload 9
    //   223: astore 4
    //   225: goto -32 -> 193
    //   228: astore 8
    //   230: aload 7
    //   232: astore 6
    //   234: ldc 237
    //   236: astore_3
    //   237: goto -65 -> 172
    //   240: astore 11
    //   242: aload 10
    //   244: astore_3
    //   245: aload 7
    //   247: astore 6
    //   249: goto -77 -> 172
    //   252: ldc 237
    //   254: astore 10
    //   256: goto -118 -> 138
    //   259: aload 7
    //   261: astore_2
    //   262: ldc 237
    //   264: astore_3
    //   265: goto -117 -> 148
    //   268: ldc 237
    //   270: astore_3
    //   271: aconst_null
    //   272: astore_2
    //   273: goto -125 -> 148
    //
    // Exception table:
    //   from	to	target	type
    //   14	101	164	java/lang/Exception
    //   14	101	191	finally
    //   106	134	216	finally
    //   138	145	216	finally
    //   106	134	228	java/lang/Exception
    //   138	145	240	java/lang/Exception
  }

  // ERROR //
  private boolean g(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ldc 134
    //   5: invokevirtual 217	android/content/Context:getDatabasePath	(Ljava/lang/String;)Ljava/io/File;
    //   8: invokevirtual 222	java/io/File:exists	()Z
    //   11: ifeq +256 -> 267
    //   14: aload_0
    //   15: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   18: ifnonnull +42 -> 60
    //   21: aload_0
    //   22: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   25: ifnull +10 -> 35
    //   28: aload_0
    //   29: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   32: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   35: aload_0
    //   36: new 129	org/antivirus/core/c/a
    //   39: dup
    //   40: aload_1
    //   41: ldc 134
    //   43: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   46: putfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   49: aload_0
    //   50: aload_0
    //   51: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   54: invokevirtual 141	org/antivirus/core/c/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   57: putfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   60: aload_0
    //   61: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   64: ifnull +423 -> 487
    //   67: aload_0
    //   68: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   71: ldc 242
    //   73: iconst_1
    //   74: anewarray 67	java/lang/String
    //   77: dup
    //   78: iconst_0
    //   79: ldc 244
    //   81: aastore
    //   82: ldc 246
    //   84: bipush 7
    //   86: anewarray 67	java/lang/String
    //   89: dup
    //   90: iconst_0
    //   91: ldc 95
    //   93: aastore
    //   94: dup
    //   95: iconst_1
    //   96: ldc 108
    //   98: aastore
    //   99: dup
    //   100: iconst_2
    //   101: ldc 99
    //   103: aastore
    //   104: dup
    //   105: iconst_3
    //   106: ldc 248
    //   108: aastore
    //   109: dup
    //   110: iconst_4
    //   111: ldc 97
    //   113: aastore
    //   114: dup
    //   115: iconst_5
    //   116: ldc 60
    //   118: aastore
    //   119: dup
    //   120: bipush 6
    //   122: ldc 224
    //   124: aastore
    //   125: aconst_null
    //   126: aconst_null
    //   127: aconst_null
    //   128: invokevirtual 175	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   131: astore 8
    //   133: aload 8
    //   135: astore 9
    //   137: aload 9
    //   139: ifnull +338 -> 477
    //   142: aload 9
    //   144: invokeinterface 180 1 0
    //   149: istore 19
    //   151: iload 19
    //   153: bipush 7
    //   155: if_icmpeq +316 -> 471
    //   158: iconst_0
    //   159: istore 16
    //   161: aload 9
    //   163: invokeinterface 200 1 0
    //   168: aconst_null
    //   169: astore 11
    //   171: iload 16
    //   173: istore 10
    //   175: iload 10
    //   177: ifeq +284 -> 461
    //   180: aload_0
    //   181: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   184: ldc 97
    //   186: aconst_null
    //   187: ldc 250
    //   189: aconst_null
    //   190: aconst_null
    //   191: aconst_null
    //   192: aconst_null
    //   193: invokevirtual 175	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   196: astore 13
    //   198: aload 13
    //   200: astore 9
    //   202: aload 9
    //   204: ifnull +247 -> 451
    //   207: aload 9
    //   209: invokeinterface 253 1 0
    //   214: istore 15
    //   216: iload 15
    //   218: iconst_4
    //   219: if_icmpeq +225 -> 444
    //   222: iconst_0
    //   223: istore 16
    //   225: aload 9
    //   227: invokeinterface 200 1 0
    //   232: iload 16
    //   234: istore 7
    //   236: aload_2
    //   237: ifnull +9 -> 246
    //   240: aload_2
    //   241: invokeinterface 200 1 0
    //   246: aload_0
    //   247: invokevirtual 235	org/antivirus/core/c/b:a	()V
    //   250: aload_0
    //   251: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   254: ifnull +10 -> 264
    //   257: aload_0
    //   258: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   261: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   264: iload 7
    //   266: ireturn
    //   267: iconst_0
    //   268: istore 7
    //   270: aconst_null
    //   271: astore_2
    //   272: goto -36 -> 236
    //   275: astore 4
    //   277: aload 4
    //   279: astore 5
    //   281: aconst_null
    //   282: astore 6
    //   284: iconst_1
    //   285: istore 7
    //   287: aload 5
    //   289: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   292: aload 6
    //   294: ifnull +10 -> 304
    //   297: aload 6
    //   299: invokeinterface 200 1 0
    //   304: aload_0
    //   305: invokevirtual 235	org/antivirus/core/c/b:a	()V
    //   308: aload_0
    //   309: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   312: ifnull -48 -> 264
    //   315: aload_0
    //   316: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   319: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   322: goto -58 -> 264
    //   325: astore_3
    //   326: aload_2
    //   327: ifnull +9 -> 336
    //   330: aload_2
    //   331: invokeinterface 200 1 0
    //   336: aload_0
    //   337: invokevirtual 235	org/antivirus/core/c/b:a	()V
    //   340: aload_0
    //   341: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   344: ifnull +10 -> 354
    //   347: aload_0
    //   348: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   351: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   354: aload_3
    //   355: athrow
    //   356: astore_3
    //   357: aload 9
    //   359: astore_2
    //   360: goto -34 -> 326
    //   363: astore_3
    //   364: aload 11
    //   366: astore_2
    //   367: goto -41 -> 326
    //   370: astore_3
    //   371: aload 6
    //   373: astore_2
    //   374: goto -48 -> 326
    //   377: astore 18
    //   379: aload 9
    //   381: astore 6
    //   383: aload 18
    //   385: astore 5
    //   387: iconst_1
    //   388: istore 7
    //   390: goto -103 -> 287
    //   393: astore 17
    //   395: iload 16
    //   397: istore 7
    //   399: aload 9
    //   401: astore 6
    //   403: aload 17
    //   405: astore 5
    //   407: goto -120 -> 287
    //   410: astore 12
    //   412: aload 12
    //   414: astore 5
    //   416: aload 11
    //   418: astore 6
    //   420: iload 10
    //   422: istore 7
    //   424: goto -137 -> 287
    //   427: astore 14
    //   429: aload 9
    //   431: astore 6
    //   433: aload 14
    //   435: astore 5
    //   437: iload 10
    //   439: istore 7
    //   441: goto -154 -> 287
    //   444: iload 10
    //   446: istore 16
    //   448: goto -223 -> 225
    //   451: aload 9
    //   453: astore_2
    //   454: iload 10
    //   456: istore 7
    //   458: goto -222 -> 236
    //   461: aload 11
    //   463: astore_2
    //   464: iload 10
    //   466: istore 7
    //   468: goto -232 -> 236
    //   471: iconst_1
    //   472: istore 16
    //   474: goto -313 -> 161
    //   477: iconst_1
    //   478: istore 10
    //   480: aload 9
    //   482: astore 11
    //   484: goto -309 -> 175
    //   487: iconst_1
    //   488: istore 7
    //   490: aconst_null
    //   491: astore_2
    //   492: goto -256 -> 236
    //
    // Exception table:
    //   from	to	target	type
    //   2	133	275	java/lang/Exception
    //   2	133	325	finally
    //   142	151	356	finally
    //   161	168	356	finally
    //   207	216	356	finally
    //   225	232	356	finally
    //   180	198	363	finally
    //   287	292	370	finally
    //   142	151	377	java/lang/Exception
    //   161	168	393	java/lang/Exception
    //   225	232	393	java/lang/Exception
    //   180	198	410	java/lang/Exception
    //   207	216	427	java/lang/Exception
  }

  private static boolean h(Context paramContext)
  {
    boolean bool1 = false;
    try
    {
      File localFile = paramContext.getDatabasePath("secdb");
      boolean bool2 = localFile.exists();
      bool1 = false;
      if (!bool2)
      {
        bool1 = true;
      }
      else
      {
        boolean bool3 = localFile.exists();
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = localFile.canWrite();
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = localFile.delete();
            bool1 = bool5;
          }
        }
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
    return bool1;
  }

  // ERROR //
  public final ArrayList a(Context paramContext, d paramd)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 261	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 262	java/util/ArrayList:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore 8
    //   17: aconst_null
    //   18: astore_3
    //   19: aload 8
    //   21: ifnonnull +48 -> 69
    //   24: aload_0
    //   25: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   28: astore 16
    //   30: aconst_null
    //   31: astore_3
    //   32: aload 16
    //   34: ifnull +10 -> 44
    //   37: aload_0
    //   38: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   41: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   44: aload_0
    //   45: new 129	org/antivirus/core/c/a
    //   48: dup
    //   49: aload_1
    //   50: ldc 134
    //   52: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   55: putfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   58: aload_0
    //   59: aload_0
    //   60: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   63: invokevirtual 141	org/antivirus/core/c/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   66: putfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   69: getstatic 52	org/antivirus/core/c/c:a	[I
    //   72: aload_2
    //   73: invokevirtual 58	org/antivirus/core/c/d:ordinal	()I
    //   76: iaload
    //   77: istore 9
    //   79: aconst_null
    //   80: astore_3
    //   81: iload 9
    //   83: tableswitch	default:+213 -> 296, 4:+226->309, 5:+219->302
    //   105: lconst_1
    //   106: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   109: istore 11
    //   111: aconst_null
    //   112: astore_3
    //   113: iload 11
    //   115: ifeq +9 -> 124
    //   118: aconst_null
    //   119: astore 12
    //   121: goto +178 -> 299
    //   124: aload_0
    //   125: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   128: astore 13
    //   130: aconst_null
    //   131: astore_3
    //   132: aload 13
    //   134: ifnull +140 -> 274
    //   137: aload_0
    //   138: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   141: aload 10
    //   143: iconst_1
    //   144: anewarray 67	java/lang/String
    //   147: dup
    //   148: iconst_0
    //   149: ldc 87
    //   151: aastore
    //   152: aconst_null
    //   153: aconst_null
    //   154: aconst_null
    //   155: aconst_null
    //   156: aconst_null
    //   157: invokevirtual 175	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   160: astore_3
    //   161: aload_3
    //   162: ifnull +112 -> 274
    //   165: aload_3
    //   166: invokeinterface 180 1 0
    //   171: ifle +103 -> 274
    //   174: aload_3
    //   175: invokeinterface 184 1 0
    //   180: ifeq +88 -> 268
    //   183: aload_3
    //   184: iconst_0
    //   185: invokeinterface 233 2 0
    //   190: astore 14
    //   192: aload 14
    //   194: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   197: ifne -23 -> 174
    //   200: aload 4
    //   202: new 67	java/lang/String
    //   205: dup
    //   206: aload 14
    //   208: invokestatic 267	org/a/a/a/a/a:a	(Ljava/lang/String;)[B
    //   211: invokespecial 269	java/lang/String:<init>	([B)V
    //   214: invokevirtual 272	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   217: invokevirtual 276	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   220: pop
    //   221: goto -47 -> 174
    //   224: astore 6
    //   226: aload 6
    //   228: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   231: aload_0
    //   232: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   235: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   238: aload_0
    //   239: aconst_null
    //   240: putfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   243: new 47	java/lang/Exception
    //   246: dup
    //   247: ldc 196
    //   249: invokespecial 199	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   252: athrow
    //   253: astore 5
    //   255: aload_3
    //   256: ifnull +9 -> 265
    //   259: aload_3
    //   260: invokeinterface 200 1 0
    //   265: aload 5
    //   267: athrow
    //   268: aload_3
    //   269: invokeinterface 200 1 0
    //   274: aload_3
    //   275: ifnull +9 -> 284
    //   278: aload_3
    //   279: invokeinterface 200 1 0
    //   284: aload 4
    //   286: astore 12
    //   288: goto +11 -> 299
    //   291: astore 7
    //   293: goto -50 -> 243
    //   296: aconst_null
    //   297: astore 12
    //   299: aload 12
    //   301: areturn
    //   302: ldc 248
    //   304: astore 10
    //   306: goto -202 -> 104
    //   309: ldc 99
    //   311: astore 10
    //   313: goto -209 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   11	221	224	java/lang/Exception
    //   268	274	224	java/lang/Exception
    //   11	221	253	finally
    //   226	231	253	finally
    //   231	243	253	finally
    //   243	253	253	finally
    //   268	274	253	finally
    //   231	243	291	java/lang/Exception
  }

  public final ArrayList a(Context paramContext, d paramd, int paramInt)
  {
    Cursor localCursor = null;
    ArrayList localArrayList1 = new ArrayList();
    while (true)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase1 = this.f;
        localCursor = null;
        if (localSQLiteDatabase1 == null)
        {
          a locala = this.g;
          localCursor = null;
          if (locala != null)
            this.g.close();
          this.g = new a(paramContext, "secdb");
          this.f = this.g.getReadableDatabase();
        }
        int i = c.a[paramd.ordinal()];
        localCursor = null;
        switch (i)
        {
        default:
          boolean bool = TextUtils.isEmpty((CharSequence)localObject2);
          localCursor = null;
          if (bool)
          {
            localArrayList2 = null;
            break label365;
          }
          SQLiteDatabase localSQLiteDatabase2 = this.f;
          localCursor = null;
          if (localSQLiteDatabase2 == null)
            break label343;
          localCursor = this.f.query((String)localObject2, new String[] { "sha", "cat" }, null, null, null, null, "cat ASC");
          if ((localCursor == null) || (localCursor.getCount() <= 0))
            break label343;
          if (localCursor.moveToNext())
          {
            e locale = new e(this);
            if ((TextUtils.isEmpty(localCursor.getString(0))) || (TextUtils.isEmpty(localCursor.getString(1))) || (Integer.parseInt(localCursor.getString(1)) >= paramInt))
              continue;
            locale.a = new String(org.a.a.a.a.a.a(localCursor.getString(0))).toLowerCase();
            locale.b = localCursor.getInt(1);
            localArrayList1.add(locale);
            continue;
          }
          break;
        case 3:
        case 4:
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        throw new Exception("could not access database");
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
      localCursor.close();
      label343: if (localCursor != null)
        localCursor.close();
      ArrayList localArrayList2 = localArrayList1;
      break label365;
      localArrayList2 = null;
      label365: return localArrayList2;
      Object localObject2 = "bpacksig";
      continue;
      localObject2 = "mediasig";
    }
  }

  public final e a(Context paramContext, d paramd, String paramString, int paramInt)
  {
    try
    {
      e locale2 = b(paramContext, paramd, paramString, paramInt);
      locale1 = locale2;
      return locale1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Logger.log(localException);
        e locale1 = null;
      }
    }
  }

  public final void a()
  {
    if ((this.f != null) && (this.f.isOpen()))
    {
      this.f.close();
      this.f = null;
    }
    if (this.g != null)
    {
      this.g.close();
      this.g = null;
    }
  }

  // ERROR //
  public final void a(Context paramContext, java.util.HashMap paramHashMap)
  {
    // Byte code:
    //   0: new 129	org/antivirus/core/c/a
    //   3: dup
    //   4: aload_1
    //   5: ldc 134
    //   7: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   10: astore_3
    //   11: aload_3
    //   12: invokevirtual 293	org/antivirus/core/c/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore 9
    //   17: aload 9
    //   19: astore 7
    //   21: aload_0
    //   22: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   25: invokevirtual 63	android/content/ContentValues:clear	()V
    //   28: aload 7
    //   30: invokevirtual 296	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   33: aload 7
    //   35: ldc_w 298
    //   38: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   41: aload 7
    //   43: ldc_w 303
    //   46: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   49: aload 7
    //   51: ldc_w 305
    //   54: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   57: aload 7
    //   59: ldc_w 307
    //   62: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   65: aload 7
    //   67: ldc_w 309
    //   70: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   73: aload 7
    //   75: ldc_w 311
    //   78: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   81: aload 7
    //   83: ldc_w 313
    //   86: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   89: aload 7
    //   91: invokestatic 316	org/antivirus/core/c/a:a	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   94: aload_2
    //   95: ldc_w 318
    //   98: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   101: astore 10
    //   103: aload 10
    //   105: ifnull +17 -> 122
    //   108: aload_0
    //   109: aload 7
    //   111: aload 10
    //   113: checkcast 67	java/lang/String
    //   116: getstatic 327	org/antivirus/core/c/d:c	Lorg/antivirus/core/c/d;
    //   119: invokespecial 329	org/antivirus/core/c/b:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    //   122: aload_2
    //   123: ldc_w 331
    //   126: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   129: astore 11
    //   131: aload 11
    //   133: ifnull +17 -> 150
    //   136: aload_0
    //   137: aload 7
    //   139: aload 11
    //   141: checkcast 67	java/lang/String
    //   144: getstatic 333	org/antivirus/core/c/d:e	Lorg/antivirus/core/c/d;
    //   147: invokespecial 329	org/antivirus/core/c/b:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    //   150: aload_2
    //   151: ldc_w 335
    //   154: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   157: astore 12
    //   159: aload 12
    //   161: ifnull +43 -> 204
    //   164: aload 12
    //   166: checkcast 67	java/lang/String
    //   169: astore 20
    //   171: getstatic 337	org/antivirus/core/c/d:d	Lorg/antivirus/core/c/d;
    //   174: astore 21
    //   176: getstatic 52	org/antivirus/core/c/c:a	[I
    //   179: aload 21
    //   181: invokevirtual 58	org/antivirus/core/c/d:ordinal	()I
    //   184: iaload
    //   185: tableswitch	default:+19 -> 204, 5:+224->409
    //   205: ldc_w 339
    //   208: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   211: astore 13
    //   213: aload 13
    //   215: ifnull +17 -> 232
    //   218: aload_0
    //   219: aload 7
    //   221: aload 13
    //   223: checkcast 67	java/lang/String
    //   226: getstatic 341	org/antivirus/core/c/d:b	Lorg/antivirus/core/c/d;
    //   229: invokespecial 329	org/antivirus/core/c/b:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    //   232: aload_2
    //   233: ldc_w 343
    //   236: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   239: astore 14
    //   241: aload 14
    //   243: ifnull +17 -> 260
    //   246: aload_0
    //   247: aload 7
    //   249: aload 14
    //   251: checkcast 67	java/lang/String
    //   254: getstatic 345	org/antivirus/core/c/d:a	Lorg/antivirus/core/c/d;
    //   257: invokespecial 329	org/antivirus/core/c/b:a	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    //   260: aload_2
    //   261: ldc_w 347
    //   264: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   267: astore 15
    //   269: aload 15
    //   271: ifnull +56 -> 327
    //   274: aload_0
    //   275: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   278: invokevirtual 63	android/content/ContentValues:clear	()V
    //   281: aload_0
    //   282: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   285: ldc 226
    //   287: aload 15
    //   289: invokevirtual 348	java/lang/Object:toString	()Ljava/lang/String;
    //   292: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   295: aload_0
    //   296: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   299: ldc_w 350
    //   302: ldc 230
    //   304: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   307: aload 7
    //   309: ldc 224
    //   311: aconst_null
    //   312: aload_0
    //   313: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   316: invokevirtual 93	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   319: pop2
    //   320: aload_0
    //   321: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   324: invokevirtual 63	android/content/ContentValues:clear	()V
    //   327: aload_2
    //   328: ldc_w 352
    //   331: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   334: astore 16
    //   336: aload_0
    //   337: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   340: invokevirtual 63	android/content/ContentValues:clear	()V
    //   343: aload 16
    //   345: ifnull +14 -> 359
    //   348: aload 16
    //   350: aload_0
    //   351: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   354: aload 7
    //   356: invokestatic 354	org/antivirus/core/c/b:a	(Ljava/lang/Object;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V
    //   359: aload 7
    //   361: invokevirtual 357	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   364: aload 7
    //   366: invokevirtual 360	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   369: aload 7
    //   371: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   374: aload_3
    //   375: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   378: aload_2
    //   379: ldc_w 347
    //   382: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   385: astore 17
    //   387: aload 17
    //   389: ifnull +19 -> 408
    //   392: new 362	org/antivirus/core/EngineSettings
    //   395: dup
    //   396: aload_1
    //   397: invokespecial 365	org/antivirus/core/EngineSettings:<init>	(Landroid/content/Context;)V
    //   400: aload 17
    //   402: invokevirtual 348	java/lang/Object:toString	()Ljava/lang/String;
    //   405: invokevirtual 368	org/antivirus/core/EngineSettings:setSecDbVersion	(Ljava/lang/String;)V
    //   408: return
    //   409: aload_0
    //   410: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   413: invokevirtual 63	android/content/ContentValues:clear	()V
    //   416: aload 20
    //   418: ifnull -214 -> 204
    //   421: aload 20
    //   423: ldc 65
    //   425: invokevirtual 71	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   428: astore 23
    //   430: aload 23
    //   432: ifnull -228 -> 204
    //   435: aload 23
    //   437: arraylength
    //   438: ifle -234 -> 204
    //   441: aload 23
    //   443: arraylength
    //   444: istore 24
    //   446: iconst_0
    //   447: istore 25
    //   449: iload 25
    //   451: iload 24
    //   453: if_icmpge -249 -> 204
    //   456: aload 23
    //   458: iload 25
    //   460: aaload
    //   461: astore 26
    //   463: aload 26
    //   465: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   468: ifne +34 -> 502
    //   471: aload_0
    //   472: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   475: ldc 87
    //   477: aload 26
    //   479: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   482: aload 7
    //   484: ldc 248
    //   486: aconst_null
    //   487: aload_0
    //   488: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   491: invokevirtual 93	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   494: pop2
    //   495: aload_0
    //   496: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   499: invokevirtual 63	android/content/ContentValues:clear	()V
    //   502: iinc 25 1
    //   505: goto -56 -> 449
    //   508: astore 22
    //   510: aload 22
    //   512: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   515: goto -311 -> 204
    //   518: astore 4
    //   520: aload 7
    //   522: astore 5
    //   524: aload 4
    //   526: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   529: aload 5
    //   531: ifnull +8 -> 539
    //   534: aload 5
    //   536: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   539: aload_3
    //   540: ifnull -132 -> 408
    //   543: aload_3
    //   544: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   547: goto -139 -> 408
    //   550: astore 8
    //   552: aload 8
    //   554: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   557: goto -149 -> 408
    //   560: astore 6
    //   562: aconst_null
    //   563: astore_3
    //   564: aconst_null
    //   565: astore 7
    //   567: aload 7
    //   569: ifnull +8 -> 577
    //   572: aload 7
    //   574: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   577: aload_3
    //   578: ifnull +7 -> 585
    //   581: aload_3
    //   582: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   585: aload 6
    //   587: athrow
    //   588: astore 6
    //   590: aconst_null
    //   591: astore 7
    //   593: goto -26 -> 567
    //   596: astore 6
    //   598: goto -31 -> 567
    //   601: astore 6
    //   603: aload 5
    //   605: astore 7
    //   607: goto -40 -> 567
    //   610: astore 4
    //   612: aconst_null
    //   613: astore_3
    //   614: aconst_null
    //   615: astore 5
    //   617: goto -93 -> 524
    //   620: astore 4
    //   622: aconst_null
    //   623: astore 5
    //   625: goto -101 -> 524
    //
    // Exception table:
    //   from	to	target	type
    //   421	502	508	java/lang/Exception
    //   21	374	518	java/lang/Exception
    //   409	416	518	java/lang/Exception
    //   510	515	518	java/lang/Exception
    //   534	547	550	java/lang/Exception
    //   572	588	550	java/lang/Exception
    //   0	11	560	finally
    //   378	408	560	finally
    //   11	17	588	finally
    //   374	378	588	finally
    //   21	374	596	finally
    //   409	416	596	finally
    //   421	502	596	finally
    //   510	515	596	finally
    //   524	529	601	finally
    //   0	11	610	java/lang/Exception
    //   378	408	610	java/lang/Exception
    //   11	17	620	java/lang/Exception
    //   374	378	620	java/lang/Exception
  }

  // ERROR //
  public final void a(Context paramContext, org.antivirus.core.EngineSettings paramEngineSettings, File paramFile)
  {
    // Byte code:
    //   0: invokestatic 374	java/lang/System:currentTimeMillis	()J
    //   3: pop2
    //   4: new 376	java/io/FileInputStream
    //   7: dup
    //   8: aload_3
    //   9: invokespecial 379	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   12: astore 7
    //   14: new 381	java/io/InputStreamReader
    //   17: dup
    //   18: aload 7
    //   20: invokespecial 384	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   23: astore 8
    //   25: new 386	java/io/BufferedReader
    //   28: dup
    //   29: aload 8
    //   31: sipush 8048
    //   34: invokespecial 389	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   37: astore 9
    //   39: iconst_0
    //   40: istore 10
    //   42: aconst_null
    //   43: astore 11
    //   45: aconst_null
    //   46: astore 12
    //   48: aconst_null
    //   49: astore 13
    //   51: aconst_null
    //   52: astore 14
    //   54: aconst_null
    //   55: astore 15
    //   57: iload 10
    //   59: ifne +1878 -> 1937
    //   62: aload 9
    //   64: invokevirtual 392	java/io/BufferedReader:ready	()Z
    //   67: ifeq +1870 -> 1937
    //   70: aload 9
    //   72: invokevirtual 395	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   75: astore 32
    //   77: aload 32
    //   79: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   82: ifne -25 -> 57
    //   85: aload 32
    //   87: invokevirtual 398	java/lang/String:trim	()Ljava/lang/String;
    //   90: astore 33
    //   92: aload 33
    //   94: ldc_w 400
    //   97: invokevirtual 404	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   100: ifeq +362 -> 462
    //   103: aload_0
    //   104: getfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   107: ifnull +15 -> 122
    //   110: aload_0
    //   111: getfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   114: invokevirtual 407	android/database/DatabaseUtils$InsertHelper:close	()V
    //   117: aload_0
    //   118: aconst_null
    //   119: putfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   122: aload 33
    //   124: ldc_w 409
    //   127: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   130: ifeq +23 -> 153
    //   133: getstatic 417	org/antivirus/core/c/f:b	Lorg/antivirus/core/c/f;
    //   136: astore 81
    //   138: aload_0
    //   139: aconst_null
    //   140: putfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   143: aload 81
    //   145: astore 11
    //   147: aconst_null
    //   148: astore 12
    //   150: goto -93 -> 57
    //   153: aload 33
    //   155: ldc_w 419
    //   158: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   161: ifeq +23 -> 184
    //   164: getstatic 421	org/antivirus/core/c/f:c	Lorg/antivirus/core/c/f;
    //   167: astore 80
    //   169: aload_0
    //   170: aconst_null
    //   171: putfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   174: aload 80
    //   176: astore 11
    //   178: aconst_null
    //   179: astore 12
    //   181: goto -124 -> 57
    //   184: aload 33
    //   186: ldc_w 423
    //   189: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   192: ifeq +39 -> 231
    //   195: getstatic 425	org/antivirus/core/c/f:a	Lorg/antivirus/core/c/f;
    //   198: astore 78
    //   200: getstatic 345	org/antivirus/core/c/d:a	Lorg/antivirus/core/c/d;
    //   203: astore 79
    //   205: aload_0
    //   206: new 406	android/database/DatabaseUtils$InsertHelper
    //   209: dup
    //   210: aload 14
    //   212: ldc 97
    //   214: invokespecial 428	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   217: putfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   220: aload 78
    //   222: astore 11
    //   224: aload 79
    //   226: astore 12
    //   228: goto -171 -> 57
    //   231: aload 33
    //   233: ldc_w 430
    //   236: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   239: ifeq +39 -> 278
    //   242: getstatic 425	org/antivirus/core/c/f:a	Lorg/antivirus/core/c/f;
    //   245: astore 76
    //   247: getstatic 341	org/antivirus/core/c/d:b	Lorg/antivirus/core/c/d;
    //   250: astore 77
    //   252: aload_0
    //   253: new 406	android/database/DatabaseUtils$InsertHelper
    //   256: dup
    //   257: aload 14
    //   259: ldc 60
    //   261: invokespecial 428	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   264: putfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   267: aload 76
    //   269: astore 11
    //   271: aload 77
    //   273: astore 12
    //   275: goto -218 -> 57
    //   278: aload 33
    //   280: ldc_w 432
    //   283: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   286: ifeq +39 -> 325
    //   289: getstatic 425	org/antivirus/core/c/f:a	Lorg/antivirus/core/c/f;
    //   292: astore 74
    //   294: getstatic 327	org/antivirus/core/c/d:c	Lorg/antivirus/core/c/d;
    //   297: astore 75
    //   299: aload_0
    //   300: new 406	android/database/DatabaseUtils$InsertHelper
    //   303: dup
    //   304: aload 14
    //   306: ldc 95
    //   308: invokespecial 428	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   311: putfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   314: aload 74
    //   316: astore 11
    //   318: aload 75
    //   320: astore 12
    //   322: goto -265 -> 57
    //   325: aload 33
    //   327: ldc_w 434
    //   330: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   333: ifeq +39 -> 372
    //   336: getstatic 425	org/antivirus/core/c/f:a	Lorg/antivirus/core/c/f;
    //   339: astore 72
    //   341: getstatic 337	org/antivirus/core/c/d:d	Lorg/antivirus/core/c/d;
    //   344: astore 73
    //   346: aload_0
    //   347: new 406	android/database/DatabaseUtils$InsertHelper
    //   350: dup
    //   351: aload 14
    //   353: ldc 248
    //   355: invokespecial 428	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   358: putfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   361: aload 72
    //   363: astore 11
    //   365: aload 73
    //   367: astore 12
    //   369: goto -312 -> 57
    //   372: aload 33
    //   374: ldc_w 436
    //   377: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   380: ifeq +39 -> 419
    //   383: getstatic 425	org/antivirus/core/c/f:a	Lorg/antivirus/core/c/f;
    //   386: astore 70
    //   388: getstatic 333	org/antivirus/core/c/d:e	Lorg/antivirus/core/c/d;
    //   391: astore 71
    //   393: aload_0
    //   394: new 406	android/database/DatabaseUtils$InsertHelper
    //   397: dup
    //   398: aload 14
    //   400: ldc 99
    //   402: invokespecial 428	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   405: putfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   408: aload 70
    //   410: astore 11
    //   412: aload 71
    //   414: astore 12
    //   416: goto -359 -> 57
    //   419: aload 33
    //   421: ldc_w 438
    //   424: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   427: ifeq +1928 -> 2355
    //   430: getstatic 440	org/antivirus/core/c/f:d	Lorg/antivirus/core/c/f;
    //   433: astore 69
    //   435: aload 13
    //   437: getstatic 445	org/antivirus/core/c/g:b	Lorg/antivirus/core/c/g;
    //   440: if_acmpne +1905 -> 2345
    //   443: aload 14
    //   445: ldc_w 307
    //   448: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   451: aload 14
    //   453: ldc_w 447
    //   456: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   459: goto +1886 -> 2345
    //   462: aload 11
    //   464: ifnull -407 -> 57
    //   467: aload 12
    //   469: ifnonnull +741 -> 1210
    //   472: getstatic 449	org/antivirus/core/c/c:b	[I
    //   475: aload 11
    //   477: invokevirtual 450	org/antivirus/core/c/f:ordinal	()I
    //   480: iaload
    //   481: tableswitch	default:+1883 -> 2364, 1:+27->508, 2:+482->963, 3:+631->1112
    //   509: lload_3
    //   510: ldc_w 452
    //   513: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   516: istore 58
    //   518: iload 58
    //   520: ifeq +358 -> 878
    //   523: new 129	org/antivirus/core/c/a
    //   526: dup
    //   527: aload_1
    //   528: ldc 134
    //   530: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   533: astore 62
    //   535: aload 62
    //   537: invokevirtual 293	org/antivirus/core/c/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   540: astore 68
    //   542: aload 68
    //   544: astore 64
    //   546: aload 64
    //   548: invokevirtual 296	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   551: aload 64
    //   553: ldc_w 298
    //   556: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   559: aload 64
    //   561: ldc_w 303
    //   564: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   567: aload 64
    //   569: ldc_w 305
    //   572: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   575: aload 64
    //   577: ldc_w 307
    //   580: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   583: aload 64
    //   585: ldc_w 309
    //   588: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   591: aload 64
    //   593: ldc_w 311
    //   596: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   599: aload 64
    //   601: ldc_w 313
    //   604: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   607: aload 64
    //   609: invokevirtual 357	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   612: aload 64
    //   614: invokevirtual 360	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   617: aload 64
    //   619: ldc_w 454
    //   622: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   625: aload 64
    //   627: invokestatic 316	org/antivirus/core/c/a:a	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   630: aload 64
    //   632: ifnull +8 -> 640
    //   635: aload 64
    //   637: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   640: aload 62
    //   642: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   645: new 129	org/antivirus/core/c/a
    //   648: dup
    //   649: aload_1
    //   650: ldc 134
    //   652: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   655: astore 18
    //   657: aload 18
    //   659: invokevirtual 293	org/antivirus/core/c/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   662: astore 66
    //   664: aload 66
    //   666: astore 17
    //   668: aload 17
    //   670: invokevirtual 296	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   673: getstatic 456	org/antivirus/core/c/g:a	Lorg/antivirus/core/c/g;
    //   676: astore 67
    //   678: aload 67
    //   680: astore 13
    //   682: aload 18
    //   684: astore 15
    //   686: aload 17
    //   688: astore 14
    //   690: goto -633 -> 57
    //   693: astore 63
    //   695: aconst_null
    //   696: astore 62
    //   698: aconst_null
    //   699: astore 64
    //   701: aload 63
    //   703: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   706: aload 64
    //   708: ifnull +8 -> 716
    //   711: aload 64
    //   713: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   716: aload 62
    //   718: ifnull -73 -> 645
    //   721: aload 62
    //   723: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   726: goto -81 -> 645
    //   729: astore 16
    //   731: aload 15
    //   733: astore 18
    //   735: aload 14
    //   737: astore 17
    //   739: aload 9
    //   741: astore 21
    //   743: aload 8
    //   745: astore 20
    //   747: aload 7
    //   749: astore 19
    //   751: aload 16
    //   753: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   756: new 47	java/lang/Exception
    //   759: dup
    //   760: invokespecial 457	java/lang/Exception:<init>	()V
    //   763: athrow
    //   764: astore 22
    //   766: aload 21
    //   768: astore 9
    //   770: aload 20
    //   772: astore 8
    //   774: aload 19
    //   776: astore 7
    //   778: aload 17
    //   780: astore 14
    //   782: aload 18
    //   784: astore 15
    //   786: aload 14
    //   788: ifnull +8 -> 796
    //   791: aload 14
    //   793: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   796: aload 15
    //   798: ifnull +8 -> 806
    //   801: aload 15
    //   803: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   806: aload 9
    //   808: ifnull +8 -> 816
    //   811: aload 9
    //   813: invokevirtual 458	java/io/BufferedReader:close	()V
    //   816: aload 8
    //   818: ifnull +8 -> 826
    //   821: aload 8
    //   823: invokevirtual 459	java/io/InputStreamReader:close	()V
    //   826: aload 7
    //   828: ifnull +8 -> 836
    //   831: aload 7
    //   833: invokevirtual 460	java/io/FileInputStream:close	()V
    //   836: aload 22
    //   838: athrow
    //   839: astore 4
    //   841: aload 4
    //   843: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   846: return
    //   847: astore 65
    //   849: aconst_null
    //   850: astore 62
    //   852: aconst_null
    //   853: astore 64
    //   855: aload 64
    //   857: ifnull +8 -> 865
    //   860: aload 64
    //   862: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   865: aload 62
    //   867: ifnull +8 -> 875
    //   870: aload 62
    //   872: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   875: aload 65
    //   877: athrow
    //   878: aload 33
    //   880: ldc_w 462
    //   883: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   886: ifeq +51 -> 937
    //   889: new 129	org/antivirus/core/c/a
    //   892: dup
    //   893: aload_1
    //   894: ldc 134
    //   896: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   899: astore 18
    //   901: aload 18
    //   903: invokevirtual 293	org/antivirus/core/c/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   906: astore 59
    //   908: aload 59
    //   910: astore 17
    //   912: aload 17
    //   914: invokevirtual 296	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   917: getstatic 445	org/antivirus/core/c/g:b	Lorg/antivirus/core/c/g;
    //   920: astore 60
    //   922: aload 60
    //   924: astore 13
    //   926: aload 18
    //   928: astore 15
    //   930: aload 17
    //   932: astore 14
    //   934: goto -877 -> 57
    //   937: aload 33
    //   939: ldc_w 464
    //   942: invokevirtual 412	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   945: ifeq -888 -> 57
    //   948: getstatic 466	org/antivirus/core/c/g:c	Lorg/antivirus/core/c/g;
    //   951: astore 61
    //   953: iconst_1
    //   954: istore 10
    //   956: aload 61
    //   958: astore 13
    //   960: goto -903 -> 57
    //   963: aload_0
    //   964: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   967: invokevirtual 63	android/content/ContentValues:clear	()V
    //   970: aload 33
    //   972: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   975: ifne +77 -> 1052
    //   978: aload_0
    //   979: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   982: ldc 226
    //   984: aload 33
    //   986: invokestatic 472	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   989: invokestatic 476	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   992: invokevirtual 479	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   995: aload_0
    //   996: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   999: ldc_w 350
    //   1002: ldc 230
    //   1004: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1007: aload 14
    //   1009: ldc 224
    //   1011: aload_0
    //   1012: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1015: ldc 228
    //   1017: iconst_1
    //   1018: anewarray 67	java/lang/String
    //   1021: dup
    //   1022: iconst_0
    //   1023: ldc 230
    //   1025: aastore
    //   1026: invokevirtual 482	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   1029: ifne +16 -> 1045
    //   1032: aload 14
    //   1034: ldc 224
    //   1036: aconst_null
    //   1037: aload_0
    //   1038: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1041: invokevirtual 93	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   1044: pop2
    //   1045: aload_0
    //   1046: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1049: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1052: aload 14
    //   1054: invokevirtual 357	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   1057: aload 14
    //   1059: invokevirtual 360	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   1062: aload 13
    //   1064: getstatic 445	org/antivirus/core/c/g:b	Lorg/antivirus/core/c/g;
    //   1067: if_acmpne +11 -> 1078
    //   1070: aload 14
    //   1072: ldc_w 484
    //   1075: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   1078: aload 14
    //   1080: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   1083: aconst_null
    //   1084: astore 17
    //   1086: aload 15
    //   1088: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   1091: aconst_null
    //   1092: astore 18
    //   1094: aload_2
    //   1095: aload 33
    //   1097: invokevirtual 368	org/antivirus/core/EngineSettings:setSecDbVersion	(Ljava/lang/String;)V
    //   1100: iconst_1
    //   1101: istore 10
    //   1103: aconst_null
    //   1104: astore 15
    //   1106: aconst_null
    //   1107: astore 14
    //   1109: goto -1052 -> 57
    //   1112: aload_0
    //   1113: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1116: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1119: aload 33
    //   1121: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1124: ifne -1067 -> 57
    //   1127: aload 33
    //   1129: ldc 79
    //   1131: invokevirtual 71	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1134: astore 53
    //   1136: aload 53
    //   1138: ifnull -1081 -> 57
    //   1141: aload 53
    //   1143: arraylength
    //   1144: iconst_2
    //   1145: if_icmplt -1088 -> 57
    //   1148: aload 53
    //   1150: iconst_0
    //   1151: aaload
    //   1152: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1155: ifne -1098 -> 57
    //   1158: aload 53
    //   1160: iconst_1
    //   1161: aaload
    //   1162: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1165: ifne -1108 -> 57
    //   1168: aload_0
    //   1169: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1172: ldc 116
    //   1174: aload 53
    //   1176: iconst_0
    //   1177: aaload
    //   1178: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1181: aload_0
    //   1182: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1185: ldc 118
    //   1187: aload 53
    //   1189: iconst_1
    //   1190: aaload
    //   1191: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1194: aload 14
    //   1196: ldc 108
    //   1198: aconst_null
    //   1199: aload_0
    //   1200: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1203: invokevirtual 93	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   1206: pop2
    //   1207: goto -1150 -> 57
    //   1210: aload 13
    //   1212: ifnull -1155 -> 57
    //   1215: getstatic 486	org/antivirus/core/c/c:c	[I
    //   1218: aload 13
    //   1220: invokevirtual 487	org/antivirus/core/c/g:ordinal	()I
    //   1223: iaload
    //   1224: tableswitch	default:+1151 -> 2375, 1:+24->1248, 2:+282->1506
    //   1249: fconst_1
    //   1250: getstatic 337	org/antivirus/core/c/d:d	Lorg/antivirus/core/c/d;
    //   1253: if_acmpne +75 -> 1328
    //   1256: aload_0
    //   1257: getfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   1260: ifnull -1203 -> 57
    //   1263: aload_0
    //   1264: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1267: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1270: aload_0
    //   1271: getfield 35	org/antivirus/core/c/b:h	Ljava/util/zip/Adler32;
    //   1274: invokevirtual 144	java/util/zip/Adler32:reset	()V
    //   1277: aload 33
    //   1279: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1282: ifne -1225 -> 57
    //   1285: aload_0
    //   1286: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1289: ldc 87
    //   1291: aload 33
    //   1293: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1296: aload_0
    //   1297: getfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   1300: aload_0
    //   1301: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1304: invokevirtual 490	android/database/DatabaseUtils$InsertHelper:insert	(Landroid/content/ContentValues;)J
    //   1307: pop2
    //   1308: aload_0
    //   1309: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1312: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1315: goto -1258 -> 57
    //   1318: astore 50
    //   1320: aload 50
    //   1322: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   1325: goto -1268 -> 57
    //   1328: aload_0
    //   1329: getfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   1332: ifnull -1275 -> 57
    //   1335: aload_0
    //   1336: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1339: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1342: aload_0
    //   1343: getfield 35	org/antivirus/core/c/b:h	Ljava/util/zip/Adler32;
    //   1346: invokevirtual 144	java/util/zip/Adler32:reset	()V
    //   1349: aload 33
    //   1351: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1354: ifne -1297 -> 57
    //   1357: aload 33
    //   1359: ldc 79
    //   1361: invokevirtual 71	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1364: astore 47
    //   1366: aload 47
    //   1368: ifnull -1311 -> 57
    //   1371: aload 47
    //   1373: arraylength
    //   1374: iconst_2
    //   1375: if_icmplt -1318 -> 57
    //   1378: aload 47
    //   1380: iconst_0
    //   1381: aaload
    //   1382: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1385: ifne -1328 -> 57
    //   1388: aload 47
    //   1390: iconst_1
    //   1391: aaload
    //   1392: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1395: ifne -1338 -> 57
    //   1398: aload_0
    //   1399: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1402: ldc 81
    //   1404: aload 47
    //   1406: iconst_0
    //   1407: aaload
    //   1408: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1411: aload_0
    //   1412: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1415: ldc 87
    //   1417: aload 47
    //   1419: iconst_1
    //   1420: aaload
    //   1421: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1424: aload 12
    //   1426: getstatic 345	org/antivirus/core/c/d:a	Lorg/antivirus/core/c/d;
    //   1429: if_acmpeq +11 -> 1440
    //   1432: aload 12
    //   1434: getstatic 341	org/antivirus/core/c/d:b	Lorg/antivirus/core/c/d;
    //   1437: if_acmpne +37 -> 1474
    //   1440: aload_0
    //   1441: getfield 35	org/antivirus/core/c/b:h	Ljava/util/zip/Adler32;
    //   1444: aload 47
    //   1446: iconst_1
    //   1447: aaload
    //   1448: invokevirtual 148	java/lang/String:getBytes	()[B
    //   1451: invokevirtual 152	java/util/zip/Adler32:update	([B)V
    //   1454: aload_0
    //   1455: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1458: ldc_w 492
    //   1461: aload_0
    //   1462: getfield 35	org/antivirus/core/c/b:h	Ljava/util/zip/Adler32;
    //   1465: invokevirtual 159	java/util/zip/Adler32:getValue	()J
    //   1468: invokestatic 476	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1471: invokevirtual 479	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1474: aload_0
    //   1475: getfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   1478: aload_0
    //   1479: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1482: invokevirtual 490	android/database/DatabaseUtils$InsertHelper:insert	(Landroid/content/ContentValues;)J
    //   1485: pop2
    //   1486: aload_0
    //   1487: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1490: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1493: goto -1436 -> 57
    //   1496: astore 46
    //   1498: aload 46
    //   1500: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   1503: goto -1446 -> 57
    //   1506: aload 12
    //   1508: getstatic 337	org/antivirus/core/c/d:d	Lorg/antivirus/core/c/d;
    //   1511: if_acmpne +145 -> 1656
    //   1514: getstatic 52	org/antivirus/core/c/c:a	[I
    //   1517: aload 12
    //   1519: invokevirtual 58	org/antivirus/core/c/d:ordinal	()I
    //   1522: iaload
    //   1523: tableswitch	default:+858 -> 2381, 5:+17->1540
    //   1541: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1544: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1547: aload 33
    //   1549: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1552: ifne -1495 -> 57
    //   1555: bipush 43
    //   1557: aload 33
    //   1559: iconst_0
    //   1560: invokevirtual 208	java/lang/String:charAt	(I)C
    //   1563: if_icmpne +50 -> 1613
    //   1566: aload_0
    //   1567: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1570: ldc 87
    //   1572: aload 33
    //   1574: iconst_1
    //   1575: invokevirtual 204	java/lang/String:substring	(I)Ljava/lang/String;
    //   1578: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1581: aload_0
    //   1582: getfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   1585: aload_0
    //   1586: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1589: invokevirtual 490	android/database/DatabaseUtils$InsertHelper:insert	(Landroid/content/ContentValues;)J
    //   1592: pop2
    //   1593: aload_0
    //   1594: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1597: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1600: goto -1543 -> 57
    //   1603: astore 41
    //   1605: aload 41
    //   1607: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   1610: goto -1553 -> 57
    //   1613: bipush 45
    //   1615: aload 33
    //   1617: iconst_0
    //   1618: invokevirtual 208	java/lang/String:charAt	(I)C
    //   1621: if_icmpne -1564 -> 57
    //   1624: iconst_1
    //   1625: anewarray 67	java/lang/String
    //   1628: astore 42
    //   1630: aload 42
    //   1632: iconst_0
    //   1633: aload 33
    //   1635: iconst_1
    //   1636: invokevirtual 204	java/lang/String:substring	(I)Ljava/lang/String;
    //   1639: aastore
    //   1640: aload 14
    //   1642: ldc 248
    //   1644: ldc_w 494
    //   1647: aload 42
    //   1649: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   1652: pop
    //   1653: goto -1596 -> 57
    //   1656: getstatic 52	org/antivirus/core/c/c:a	[I
    //   1659: aload 12
    //   1661: invokevirtual 58	org/antivirus/core/c/d:ordinal	()I
    //   1664: iaload
    //   1665: tableswitch	default:+719 -> 2384, 1:+722->2387, 2:+736->2401, 3:+729->2394, 4:+217->1882
    //   1697: getfield 35	org/antivirus/core/c/b:h	Ljava/util/zip/Adler32;
    //   1700: invokevirtual 144	java/util/zip/Adler32:reset	()V
    //   1703: aload_0
    //   1704: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1707: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1710: aload 33
    //   1712: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1715: ifne -1658 -> 57
    //   1718: aload 33
    //   1720: iconst_1
    //   1721: invokevirtual 204	java/lang/String:substring	(I)Ljava/lang/String;
    //   1724: ldc 79
    //   1726: invokevirtual 71	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1729: astore 36
    //   1731: aload 36
    //   1733: ifnull -1676 -> 57
    //   1736: aload 36
    //   1738: arraylength
    //   1739: iconst_2
    //   1740: if_icmplt -1683 -> 57
    //   1743: aload 36
    //   1745: iconst_0
    //   1746: aaload
    //   1747: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1750: ifne -1693 -> 57
    //   1753: aload 36
    //   1755: iconst_1
    //   1756: aaload
    //   1757: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1760: ifne -1703 -> 57
    //   1763: bipush 43
    //   1765: aload 33
    //   1767: iconst_0
    //   1768: invokevirtual 208	java/lang/String:charAt	(I)C
    //   1771: if_icmpne +118 -> 1889
    //   1774: aload_0
    //   1775: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1778: ldc 81
    //   1780: aload 36
    //   1782: iconst_0
    //   1783: aaload
    //   1784: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1787: aload_0
    //   1788: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1791: ldc 87
    //   1793: aload 36
    //   1795: iconst_1
    //   1796: aaload
    //   1797: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1800: aload 12
    //   1802: getstatic 345	org/antivirus/core/c/d:a	Lorg/antivirus/core/c/d;
    //   1805: if_acmpeq +11 -> 1816
    //   1808: aload 12
    //   1810: getstatic 341	org/antivirus/core/c/d:b	Lorg/antivirus/core/c/d;
    //   1813: if_acmpne +37 -> 1850
    //   1816: aload_0
    //   1817: getfield 35	org/antivirus/core/c/b:h	Ljava/util/zip/Adler32;
    //   1820: aload 36
    //   1822: iconst_1
    //   1823: aaload
    //   1824: invokevirtual 148	java/lang/String:getBytes	()[B
    //   1827: invokevirtual 152	java/util/zip/Adler32:update	([B)V
    //   1830: aload_0
    //   1831: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1834: ldc_w 492
    //   1837: aload_0
    //   1838: getfield 35	org/antivirus/core/c/b:h	Ljava/util/zip/Adler32;
    //   1841: invokevirtual 159	java/util/zip/Adler32:getValue	()J
    //   1844: invokestatic 476	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1847: invokevirtual 479	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   1850: aload_0
    //   1851: getfield 37	org/antivirus/core/c/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   1854: aload_0
    //   1855: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1858: invokevirtual 490	android/database/DatabaseUtils$InsertHelper:insert	(Landroid/content/ContentValues;)J
    //   1861: pop2
    //   1862: aload_0
    //   1863: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   1866: invokevirtual 63	android/content/ContentValues:clear	()V
    //   1869: goto -1812 -> 57
    //   1872: astore 35
    //   1874: aload 35
    //   1876: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   1879: goto -1822 -> 57
    //   1882: ldc 99
    //   1884: astore 34
    //   1886: goto -190 -> 1696
    //   1889: bipush 45
    //   1891: aload 33
    //   1893: iconst_0
    //   1894: invokevirtual 208	java/lang/String:charAt	(I)C
    //   1897: if_icmpne -1840 -> 57
    //   1900: iconst_2
    //   1901: anewarray 67	java/lang/String
    //   1904: astore 37
    //   1906: aload 37
    //   1908: iconst_0
    //   1909: aload 36
    //   1911: iconst_1
    //   1912: aaload
    //   1913: aastore
    //   1914: aload 37
    //   1916: iconst_1
    //   1917: aload 36
    //   1919: iconst_0
    //   1920: aaload
    //   1921: aastore
    //   1922: aload 14
    //   1924: aload 34
    //   1926: ldc 210
    //   1928: aload 37
    //   1930: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   1933: pop
    //   1934: goto -1877 -> 57
    //   1937: aload 9
    //   1939: invokevirtual 458	java/io/BufferedReader:close	()V
    //   1942: aload 8
    //   1944: invokevirtual 459	java/io/InputStreamReader:close	()V
    //   1947: aload 7
    //   1949: invokevirtual 460	java/io/FileInputStream:close	()V
    //   1952: aload 14
    //   1954: ifnull +8 -> 1962
    //   1957: aload 14
    //   1959: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   1962: aload 15
    //   1964: ifnull +8 -> 1972
    //   1967: aload 15
    //   1969: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   1972: invokestatic 374	java/lang/System:currentTimeMillis	()J
    //   1975: pop2
    //   1976: goto -1130 -> 846
    //   1979: astore 31
    //   1981: goto -19 -> 1962
    //   1984: astore 30
    //   1986: goto -14 -> 1972
    //   1989: astore 27
    //   1991: goto -1195 -> 796
    //   1994: astore 26
    //   1996: goto -1190 -> 806
    //   1999: astore 25
    //   2001: goto -1185 -> 816
    //   2004: astore 24
    //   2006: goto -1180 -> 826
    //   2009: astore 23
    //   2011: goto -1175 -> 836
    //   2014: astore 22
    //   2016: aconst_null
    //   2017: astore 15
    //   2019: aconst_null
    //   2020: astore 14
    //   2022: aconst_null
    //   2023: astore 9
    //   2025: aconst_null
    //   2026: astore 8
    //   2028: aconst_null
    //   2029: astore 7
    //   2031: goto -1245 -> 786
    //   2034: astore 22
    //   2036: aconst_null
    //   2037: astore 15
    //   2039: aconst_null
    //   2040: astore 14
    //   2042: aconst_null
    //   2043: astore 9
    //   2045: aconst_null
    //   2046: astore 8
    //   2048: goto -1262 -> 786
    //   2051: astore 22
    //   2053: aconst_null
    //   2054: astore 15
    //   2056: aconst_null
    //   2057: astore 14
    //   2059: aconst_null
    //   2060: astore 9
    //   2062: goto -1276 -> 786
    //   2065: astore 22
    //   2067: aload 18
    //   2069: astore 15
    //   2071: goto -1285 -> 786
    //   2074: astore 22
    //   2076: aload 18
    //   2078: astore 15
    //   2080: aload 17
    //   2082: astore 14
    //   2084: goto -1298 -> 786
    //   2087: astore 22
    //   2089: aload 18
    //   2091: astore 15
    //   2093: goto -1307 -> 786
    //   2096: astore 22
    //   2098: aload 18
    //   2100: astore 15
    //   2102: aload 17
    //   2104: astore 14
    //   2106: goto -1320 -> 786
    //   2109: astore 22
    //   2111: aconst_null
    //   2112: astore 14
    //   2114: goto -1328 -> 786
    //   2117: astore 22
    //   2119: aconst_null
    //   2120: astore 15
    //   2122: aconst_null
    //   2123: astore 14
    //   2125: goto -1339 -> 786
    //   2128: astore 22
    //   2130: aconst_null
    //   2131: astore 9
    //   2133: goto -1347 -> 786
    //   2136: astore 22
    //   2138: aconst_null
    //   2139: astore 9
    //   2141: aconst_null
    //   2142: astore 8
    //   2144: goto -1358 -> 786
    //   2147: astore 16
    //   2149: aconst_null
    //   2150: astore 18
    //   2152: aconst_null
    //   2153: astore 17
    //   2155: aconst_null
    //   2156: astore 21
    //   2158: aconst_null
    //   2159: astore 20
    //   2161: aconst_null
    //   2162: astore 19
    //   2164: goto -1413 -> 751
    //   2167: astore 16
    //   2169: aload 7
    //   2171: astore 19
    //   2173: aconst_null
    //   2174: astore 18
    //   2176: aconst_null
    //   2177: astore 17
    //   2179: aconst_null
    //   2180: astore 21
    //   2182: aconst_null
    //   2183: astore 20
    //   2185: goto -1434 -> 751
    //   2188: astore 16
    //   2190: aload 8
    //   2192: astore 20
    //   2194: aload 7
    //   2196: astore 19
    //   2198: aconst_null
    //   2199: astore 18
    //   2201: aconst_null
    //   2202: astore 17
    //   2204: aconst_null
    //   2205: astore 21
    //   2207: goto -1456 -> 751
    //   2210: astore 16
    //   2212: aload 14
    //   2214: astore 17
    //   2216: aload 9
    //   2218: astore 21
    //   2220: aload 8
    //   2222: astore 20
    //   2224: aload 7
    //   2226: astore 19
    //   2228: goto -1477 -> 751
    //   2231: astore 16
    //   2233: aload 9
    //   2235: astore 21
    //   2237: aload 8
    //   2239: astore 20
    //   2241: aload 7
    //   2243: astore 19
    //   2245: goto -1494 -> 751
    //   2248: astore 16
    //   2250: aload 15
    //   2252: astore 18
    //   2254: aload 9
    //   2256: astore 21
    //   2258: aload 7
    //   2260: astore 19
    //   2262: aload 8
    //   2264: astore 20
    //   2266: aconst_null
    //   2267: astore 17
    //   2269: goto -1518 -> 751
    //   2272: astore 16
    //   2274: aload 14
    //   2276: astore 17
    //   2278: aload 15
    //   2280: astore 18
    //   2282: aload 7
    //   2284: astore 19
    //   2286: aload 8
    //   2288: astore 20
    //   2290: aconst_null
    //   2291: astore 21
    //   2293: goto -1542 -> 751
    //   2296: astore 16
    //   2298: aload 15
    //   2300: astore 18
    //   2302: aload 14
    //   2304: astore 17
    //   2306: aload 7
    //   2308: astore 19
    //   2310: aconst_null
    //   2311: astore 21
    //   2313: aconst_null
    //   2314: astore 20
    //   2316: goto -1565 -> 751
    //   2319: astore 65
    //   2321: aconst_null
    //   2322: astore 64
    //   2324: goto -1469 -> 855
    //   2327: astore 65
    //   2329: goto -1474 -> 855
    //   2332: astore 63
    //   2334: aconst_null
    //   2335: astore 64
    //   2337: goto -1636 -> 701
    //   2340: astore 63
    //   2342: goto -1641 -> 701
    //   2345: aload 69
    //   2347: astore 11
    //   2349: aconst_null
    //   2350: astore 12
    //   2352: goto -2295 -> 57
    //   2355: aconst_null
    //   2356: astore 11
    //   2358: aconst_null
    //   2359: astore 12
    //   2361: goto -2304 -> 57
    //   2364: iconst_1
    //   2365: istore 10
    //   2367: goto -2310 -> 57
    //   2370: astore 22
    //   2372: goto -1586 -> 786
    //   2375: iconst_1
    //   2376: istore 10
    //   2378: goto -2321 -> 57
    //   2381: goto -2324 -> 57
    //   2384: goto -2327 -> 57
    //   2387: ldc 60
    //   2389: astore 34
    //   2391: goto -695 -> 1696
    //   2394: ldc 95
    //   2396: astore 34
    //   2398: goto -702 -> 1696
    //   2401: ldc 97
    //   2403: astore 34
    //   2405: goto -709 -> 1696
    //
    // Exception table:
    //   from	to	target	type
    //   523	535	693	java/lang/Exception
    //   62	518	729	java/lang/Exception
    //   635	657	729	java/lang/Exception
    //   711	726	729	java/lang/Exception
    //   860	901	729	java/lang/Exception
    //   937	1083	729	java/lang/Exception
    //   1112	1277	729	java/lang/Exception
    //   1320	1349	729	java/lang/Exception
    //   1498	1547	729	java/lang/Exception
    //   1605	1610	729	java/lang/Exception
    //   1656	1710	729	java/lang/Exception
    //   1874	1886	729	java/lang/Exception
    //   1937	1942	729	java/lang/Exception
    //   751	764	764	finally
    //   0	4	839	java/lang/Exception
    //   836	839	839	java/lang/Exception
    //   1972	1976	839	java/lang/Exception
    //   523	535	847	finally
    //   1277	1315	1318	java/lang/Exception
    //   1349	1493	1496	java/lang/Exception
    //   1547	1600	1603	java/lang/Exception
    //   1613	1653	1603	java/lang/Exception
    //   1710	1869	1872	java/lang/Exception
    //   1889	1934	1872	java/lang/Exception
    //   1957	1962	1979	java/lang/Exception
    //   1967	1972	1984	java/lang/Exception
    //   791	796	1989	java/lang/Exception
    //   801	806	1994	java/lang/Exception
    //   811	816	1999	java/lang/Exception
    //   821	826	2004	java/lang/Exception
    //   831	836	2009	java/lang/Exception
    //   4	14	2014	finally
    //   14	25	2034	finally
    //   25	39	2051	finally
    //   657	664	2065	finally
    //   668	678	2074	finally
    //   901	908	2087	finally
    //   912	922	2096	finally
    //   1086	1091	2109	finally
    //   1094	1100	2117	finally
    //   1942	1947	2128	finally
    //   1947	1952	2136	finally
    //   4	14	2147	java/lang/Exception
    //   14	25	2167	java/lang/Exception
    //   25	39	2188	java/lang/Exception
    //   657	664	2210	java/lang/Exception
    //   901	908	2210	java/lang/Exception
    //   668	678	2231	java/lang/Exception
    //   912	922	2231	java/lang/Exception
    //   1094	1100	2231	java/lang/Exception
    //   1086	1091	2248	java/lang/Exception
    //   1942	1947	2272	java/lang/Exception
    //   1947	1952	2296	java/lang/Exception
    //   535	542	2319	finally
    //   546	630	2327	finally
    //   701	706	2327	finally
    //   535	542	2332	java/lang/Exception
    //   546	630	2340	java/lang/Exception
    //   62	518	2370	finally
    //   635	657	2370	finally
    //   711	726	2370	finally
    //   860	901	2370	finally
    //   937	1083	2370	finally
    //   1112	1277	2370	finally
    //   1277	1315	2370	finally
    //   1320	1349	2370	finally
    //   1349	1493	2370	finally
    //   1498	1547	2370	finally
    //   1547	1600	2370	finally
    //   1605	1610	2370	finally
    //   1613	1653	2370	finally
    //   1656	1710	2370	finally
    //   1710	1869	2370	finally
    //   1874	1886	2370	finally
    //   1889	1934	2370	finally
    //   1937	1942	2370	finally
  }

  // ERROR //
  public final boolean a(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 498	org/antivirus/core/c/b:g	(Landroid/content/Context;)Z
    //   7: istore_3
    //   8: iload_3
    //   9: ifne +282 -> 291
    //   12: aload_0
    //   13: invokevirtual 235	org/antivirus/core/c/b:a	()V
    //   16: aload_1
    //   17: invokestatic 500	org/antivirus/core/c/b:h	(Landroid/content/Context;)Z
    //   20: ifeq +271 -> 291
    //   23: new 219	java/io/File
    //   26: dup
    //   27: aload_1
    //   28: invokevirtual 504	android/content/Context:getFilesDir	()Ljava/io/File;
    //   31: invokevirtual 507	java/io/File:getParent	()Ljava/lang/String;
    //   34: ldc_w 509
    //   37: invokevirtual 513	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   40: invokespecial 514	java/io/File:<init>	(Ljava/lang/String;)V
    //   43: astore 4
    //   45: aload 4
    //   47: invokevirtual 222	java/io/File:exists	()Z
    //   50: ifne +9 -> 59
    //   53: aload 4
    //   55: invokevirtual 517	java/io/File:mkdirs	()Z
    //   58: pop
    //   59: new 219	java/io/File
    //   62: dup
    //   63: aload 4
    //   65: ldc 134
    //   67: invokespecial 520	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   70: astore 5
    //   72: aload 5
    //   74: invokevirtual 222	java/io/File:exists	()Z
    //   77: ifne +151 -> 228
    //   80: new 522	java/io/FileOutputStream
    //   83: dup
    //   84: aload 5
    //   86: invokespecial 523	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   89: astore 13
    //   91: iconst_0
    //   92: istore 14
    //   94: aconst_null
    //   95: astore 15
    //   97: iload 14
    //   99: getstatic 525	org/antivirus/core/c/b:b	Ljava/util/ArrayList;
    //   102: invokevirtual 528	java/util/ArrayList:size	()I
    //   105: if_icmpge +90 -> 195
    //   108: getstatic 525	org/antivirus/core/c/b:b	Ljava/util/ArrayList;
    //   111: iload 14
    //   113: invokevirtual 531	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   116: checkcast 533	java/util/concurrent/Callable
    //   119: invokeinterface 537 1 0
    //   124: checkcast 539	java/io/InputStream
    //   127: astore 29
    //   129: sipush 1024
    //   132: newarray byte
    //   134: astore 32
    //   136: aload 29
    //   138: aload 32
    //   140: invokevirtual 543	java/io/InputStream:read	([B)I
    //   143: istore 33
    //   145: iload 33
    //   147: iconst_m1
    //   148: if_icmpeq +29 -> 177
    //   151: aload 13
    //   153: aload 32
    //   155: iconst_0
    //   156: iload 33
    //   158: invokevirtual 549	java/io/OutputStream:write	([BII)V
    //   161: aload 29
    //   163: aload 32
    //   165: invokevirtual 543	java/io/InputStream:read	([B)I
    //   168: istore 35
    //   170: iload 35
    //   172: istore 33
    //   174: goto -29 -> 145
    //   177: aload 29
    //   179: invokevirtual 550	java/io/InputStream:close	()V
    //   182: aconst_null
    //   183: astore 29
    //   185: iinc 14 1
    //   188: aload 29
    //   190: astore 15
    //   192: goto -95 -> 97
    //   195: aload 13
    //   197: invokevirtual 553	java/io/OutputStream:flush	()V
    //   200: aload 13
    //   202: invokevirtual 554	java/io/OutputStream:close	()V
    //   205: aconst_null
    //   206: astore 13
    //   208: aload 15
    //   210: ifnull +8 -> 218
    //   213: aload 15
    //   215: invokevirtual 550	java/io/InputStream:close	()V
    //   218: aload 13
    //   220: ifnull +8 -> 228
    //   223: aload 13
    //   225: invokevirtual 554	java/io/OutputStream:close	()V
    //   228: new 129	org/antivirus/core/c/a
    //   231: dup
    //   232: aload_1
    //   233: ldc 134
    //   235: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   238: astore 6
    //   240: aload 6
    //   242: invokevirtual 293	org/antivirus/core/c/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   245: astore 11
    //   247: aload 11
    //   249: astore_2
    //   250: aload_2
    //   251: invokevirtual 296	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   254: aload_2
    //   255: ldc_w 556
    //   258: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   261: aload_2
    //   262: ldc_w 558
    //   265: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   268: aload_2
    //   269: invokevirtual 357	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   272: aload_2
    //   273: invokevirtual 360	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   276: aload_2
    //   277: ifnull +7 -> 284
    //   280: aload_2
    //   281: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   284: aload 6
    //   286: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   289: iconst_1
    //   290: istore_3
    //   291: iload_3
    //   292: ireturn
    //   293: astore 28
    //   295: aload 28
    //   297: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   300: goto -82 -> 218
    //   303: astore 27
    //   305: aload 27
    //   307: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   310: goto -82 -> 228
    //   313: astore 16
    //   315: aconst_null
    //   316: astore 19
    //   318: aconst_null
    //   319: astore 18
    //   321: aload 16
    //   323: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   326: aload 18
    //   328: ifnull +8 -> 336
    //   331: aload 18
    //   333: invokevirtual 550	java/io/InputStream:close	()V
    //   336: aload 19
    //   338: ifnull -110 -> 228
    //   341: aload 19
    //   343: invokevirtual 554	java/io/OutputStream:close	()V
    //   346: goto -118 -> 228
    //   349: astore 24
    //   351: aload 24
    //   353: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   356: goto -128 -> 228
    //   359: astore 25
    //   361: aload 25
    //   363: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   366: goto -30 -> 336
    //   369: astore 20
    //   371: aconst_null
    //   372: astore 13
    //   374: aconst_null
    //   375: astore 15
    //   377: aload 15
    //   379: ifnull +8 -> 387
    //   382: aload 15
    //   384: invokevirtual 550	java/io/InputStream:close	()V
    //   387: aload 13
    //   389: ifnull +8 -> 397
    //   392: aload 13
    //   394: invokevirtual 554	java/io/OutputStream:close	()V
    //   397: aload 20
    //   399: athrow
    //   400: astore 23
    //   402: aload 23
    //   404: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   407: goto -20 -> 387
    //   410: astore 22
    //   412: aload 22
    //   414: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   417: goto -20 -> 397
    //   420: astore 7
    //   422: aconst_null
    //   423: astore 8
    //   425: aload 7
    //   427: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   430: aload 8
    //   432: ifnull +8 -> 440
    //   435: aload 8
    //   437: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   440: aload_2
    //   441: ifnull -152 -> 289
    //   444: aload_2
    //   445: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   448: goto -159 -> 289
    //   451: astore 9
    //   453: aconst_null
    //   454: astore 6
    //   456: aload_2
    //   457: ifnull +7 -> 464
    //   460: aload_2
    //   461: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   464: aload 6
    //   466: ifnull +8 -> 474
    //   469: aload 6
    //   471: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   474: aload 9
    //   476: athrow
    //   477: astore 34
    //   479: goto -294 -> 185
    //   482: astore 9
    //   484: goto -28 -> 456
    //   487: astore 9
    //   489: aload_2
    //   490: astore 10
    //   492: aload 8
    //   494: astore_2
    //   495: aload 10
    //   497: astore 6
    //   499: goto -43 -> 456
    //   502: astore 7
    //   504: aload 6
    //   506: astore_2
    //   507: aconst_null
    //   508: astore 8
    //   510: goto -85 -> 425
    //   513: astore 7
    //   515: aload 6
    //   517: astore 12
    //   519: aload_2
    //   520: astore 8
    //   522: aload 12
    //   524: astore_2
    //   525: goto -100 -> 425
    //   528: astore 31
    //   530: aload 29
    //   532: astore 15
    //   534: aload 31
    //   536: astore 20
    //   538: goto -161 -> 377
    //   541: astore 20
    //   543: goto -166 -> 377
    //   546: astore 20
    //   548: aload 19
    //   550: astore 21
    //   552: aload 18
    //   554: astore 15
    //   556: aload 21
    //   558: astore 13
    //   560: goto -183 -> 377
    //   563: astore 30
    //   565: aload 13
    //   567: astore 19
    //   569: aload 29
    //   571: astore 18
    //   573: aload 30
    //   575: astore 16
    //   577: goto -256 -> 321
    //   580: astore 16
    //   582: aload 13
    //   584: astore 17
    //   586: aload 15
    //   588: astore 18
    //   590: aload 17
    //   592: astore 19
    //   594: goto -273 -> 321
    //   597: astore 26
    //   599: goto -391 -> 208
    //
    // Exception table:
    //   from	to	target	type
    //   213	218	293	java/io/IOException
    //   223	228	303	java/io/IOException
    //   80	91	313	java/lang/Exception
    //   341	346	349	java/io/IOException
    //   331	336	359	java/io/IOException
    //   80	91	369	finally
    //   382	387	400	java/io/IOException
    //   392	397	410	java/io/IOException
    //   228	240	420	java/lang/Exception
    //   228	240	451	finally
    //   177	182	477	java/lang/Exception
    //   240	247	482	finally
    //   250	276	482	finally
    //   425	430	487	finally
    //   240	247	502	java/lang/Exception
    //   250	276	513	java/lang/Exception
    //   129	170	528	finally
    //   177	182	528	finally
    //   97	129	541	finally
    //   195	205	541	finally
    //   321	326	546	finally
    //   129	170	563	java/lang/Exception
    //   97	129	580	java/lang/Exception
    //   195	205	597	java/lang/Exception
  }

  public final void b(Context paramContext)
  {
    a();
    h(paramContext);
  }

  // ERROR //
  public final void b(Context paramContext, java.util.HashMap paramHashMap)
  {
    // Byte code:
    //   0: new 129	org/antivirus/core/c/a
    //   3: dup
    //   4: aload_1
    //   5: ldc 134
    //   7: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   10: astore_3
    //   11: aload_3
    //   12: invokevirtual 293	org/antivirus/core/c/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore 9
    //   17: aload 9
    //   19: astore 7
    //   21: aload 7
    //   23: invokevirtual 296	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   26: aload_2
    //   27: ldc_w 318
    //   30: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   33: astore 10
    //   35: aload 10
    //   37: ifnull +17 -> 54
    //   40: aload_0
    //   41: aload 7
    //   43: aload 10
    //   45: checkcast 67	java/lang/String
    //   48: getstatic 327	org/antivirus/core/c/d:c	Lorg/antivirus/core/c/d;
    //   51: invokespecial 560	org/antivirus/core/c/b:b	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    //   54: aload_2
    //   55: ldc_w 331
    //   58: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   61: astore 11
    //   63: aload 11
    //   65: ifnull +17 -> 82
    //   68: aload_0
    //   69: aload 7
    //   71: aload 11
    //   73: checkcast 67	java/lang/String
    //   76: getstatic 333	org/antivirus/core/c/d:e	Lorg/antivirus/core/c/d;
    //   79: invokespecial 560	org/antivirus/core/c/b:b	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    //   82: aload_2
    //   83: ldc_w 335
    //   86: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   89: astore 12
    //   91: aload 12
    //   93: ifnull +43 -> 136
    //   96: aload 12
    //   98: checkcast 67	java/lang/String
    //   101: astore 20
    //   103: getstatic 337	org/antivirus/core/c/d:d	Lorg/antivirus/core/c/d;
    //   106: astore 21
    //   108: getstatic 52	org/antivirus/core/c/c:a	[I
    //   111: aload 21
    //   113: invokevirtual 58	org/antivirus/core/c/d:ordinal	()I
    //   116: iaload
    //   117: tableswitch	default:+19 -> 136, 5:+257->374
    //   137: ldc_w 343
    //   140: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   143: astore 13
    //   145: aload 13
    //   147: ifnull +17 -> 164
    //   150: aload_0
    //   151: aload 7
    //   153: aload 13
    //   155: checkcast 67	java/lang/String
    //   158: getstatic 345	org/antivirus/core/c/d:a	Lorg/antivirus/core/c/d;
    //   161: invokespecial 560	org/antivirus/core/c/b:b	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    //   164: aload_2
    //   165: ldc_w 339
    //   168: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   171: astore 14
    //   173: aload 14
    //   175: ifnull +17 -> 192
    //   178: aload_0
    //   179: aload 7
    //   181: aload 14
    //   183: checkcast 67	java/lang/String
    //   186: getstatic 341	org/antivirus/core/c/d:b	Lorg/antivirus/core/c/d;
    //   189: invokespecial 560	org/antivirus/core/c/b:b	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/antivirus/core/c/d;)V
    //   192: aload_0
    //   193: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   196: invokevirtual 63	android/content/ContentValues:clear	()V
    //   199: aload_2
    //   200: ldc_w 347
    //   203: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   206: astore 15
    //   208: aload 15
    //   210: ifnull +74 -> 284
    //   213: aload_0
    //   214: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   217: ldc 226
    //   219: aload 15
    //   221: invokevirtual 348	java/lang/Object:toString	()Ljava/lang/String;
    //   224: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   227: aload_0
    //   228: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   231: ldc_w 350
    //   234: ldc 230
    //   236: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   239: aload 7
    //   241: ldc 224
    //   243: aload_0
    //   244: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   247: ldc 228
    //   249: iconst_1
    //   250: anewarray 67	java/lang/String
    //   253: dup
    //   254: iconst_0
    //   255: ldc 230
    //   257: aastore
    //   258: invokevirtual 482	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   261: ifne +16 -> 277
    //   264: aload 7
    //   266: ldc 224
    //   268: aconst_null
    //   269: aload_0
    //   270: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   273: invokevirtual 93	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   276: pop2
    //   277: aload_0
    //   278: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   281: invokevirtual 63	android/content/ContentValues:clear	()V
    //   284: aload_2
    //   285: ldc_w 352
    //   288: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   291: astore 16
    //   293: aload_0
    //   294: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   297: invokevirtual 63	android/content/ContentValues:clear	()V
    //   300: aload 16
    //   302: ifnull +14 -> 316
    //   305: aload 16
    //   307: aload_0
    //   308: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   311: aload 7
    //   313: invokestatic 354	org/antivirus/core/c/b:a	(Ljava/lang/Object;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V
    //   316: aload 7
    //   318: invokevirtual 357	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   321: aload 7
    //   323: invokevirtual 360	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   326: aload 7
    //   328: ldc_w 454
    //   331: invokevirtual 301	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   334: aload 7
    //   336: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   339: aload_3
    //   340: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   343: aload_2
    //   344: ldc_w 347
    //   347: invokevirtual 324	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   350: astore 17
    //   352: aload 17
    //   354: ifnull +19 -> 373
    //   357: new 362	org/antivirus/core/EngineSettings
    //   360: dup
    //   361: aload_1
    //   362: invokespecial 365	org/antivirus/core/EngineSettings:<init>	(Landroid/content/Context;)V
    //   365: aload 17
    //   367: invokevirtual 348	java/lang/Object:toString	()Ljava/lang/String;
    //   370: invokevirtual 368	org/antivirus/core/EngineSettings:setSecDbVersion	(Ljava/lang/String;)V
    //   373: return
    //   374: aload_0
    //   375: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   378: invokevirtual 63	android/content/ContentValues:clear	()V
    //   381: aload 20
    //   383: ifnull -247 -> 136
    //   386: aload 20
    //   388: ldc 65
    //   390: invokevirtual 71	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   393: astore 23
    //   395: aload 23
    //   397: ifnull -261 -> 136
    //   400: aload 23
    //   402: arraylength
    //   403: ifle -267 -> 136
    //   406: aload 23
    //   408: arraylength
    //   409: istore 24
    //   411: iconst_0
    //   412: istore 25
    //   414: iload 25
    //   416: iload 24
    //   418: if_icmpge -282 -> 136
    //   421: aload 23
    //   423: iload 25
    //   425: aaload
    //   426: astore 26
    //   428: aload 26
    //   430: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   433: ifne +215 -> 648
    //   436: bipush 43
    //   438: aload 26
    //   440: iconst_0
    //   441: invokevirtual 208	java/lang/String:charAt	(I)C
    //   444: if_icmpne +41 -> 485
    //   447: aload_0
    //   448: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   451: ldc 87
    //   453: aload 26
    //   455: iconst_1
    //   456: invokevirtual 204	java/lang/String:substring	(I)Ljava/lang/String;
    //   459: invokevirtual 85	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   462: aload 7
    //   464: ldc 248
    //   466: aconst_null
    //   467: aload_0
    //   468: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   471: invokevirtual 93	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   474: pop2
    //   475: aload_0
    //   476: getfield 44	org/antivirus/core/c/b:e	Landroid/content/ContentValues;
    //   479: invokevirtual 63	android/content/ContentValues:clear	()V
    //   482: goto +166 -> 648
    //   485: bipush 45
    //   487: aload 26
    //   489: iconst_0
    //   490: invokevirtual 208	java/lang/String:charAt	(I)C
    //   493: if_icmpne +155 -> 648
    //   496: iconst_1
    //   497: anewarray 67	java/lang/String
    //   500: astore 27
    //   502: aload 27
    //   504: iconst_0
    //   505: aload 26
    //   507: iconst_1
    //   508: invokevirtual 204	java/lang/String:substring	(I)Ljava/lang/String;
    //   511: aastore
    //   512: aload 7
    //   514: ldc 248
    //   516: ldc_w 494
    //   519: aload 27
    //   521: invokevirtual 114	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   524: pop
    //   525: goto +123 -> 648
    //   528: astore 22
    //   530: aload 22
    //   532: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   535: goto -399 -> 136
    //   538: astore 4
    //   540: aload 7
    //   542: astore 5
    //   544: aload 4
    //   546: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   549: aload 5
    //   551: ifnull +8 -> 559
    //   554: aload 5
    //   556: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   559: aload_3
    //   560: ifnull -187 -> 373
    //   563: aload_3
    //   564: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   567: goto -194 -> 373
    //   570: astore 8
    //   572: aload 8
    //   574: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   577: goto -204 -> 373
    //   580: astore 6
    //   582: aconst_null
    //   583: astore_3
    //   584: aconst_null
    //   585: astore 7
    //   587: aload 7
    //   589: ifnull +8 -> 597
    //   592: aload 7
    //   594: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   597: aload_3
    //   598: ifnull +7 -> 605
    //   601: aload_3
    //   602: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   605: aload 6
    //   607: athrow
    //   608: astore 6
    //   610: aconst_null
    //   611: astore 7
    //   613: goto -26 -> 587
    //   616: astore 6
    //   618: goto -31 -> 587
    //   621: astore 6
    //   623: aload 5
    //   625: astore 7
    //   627: goto -40 -> 587
    //   630: astore 4
    //   632: aconst_null
    //   633: astore_3
    //   634: aconst_null
    //   635: astore 5
    //   637: goto -93 -> 544
    //   640: astore 4
    //   642: aconst_null
    //   643: astore 5
    //   645: goto -101 -> 544
    //   648: iinc 25 1
    //   651: goto -237 -> 414
    //
    // Exception table:
    //   from	to	target	type
    //   386	525	528	java/lang/Exception
    //   21	339	538	java/lang/Exception
    //   374	381	538	java/lang/Exception
    //   530	535	538	java/lang/Exception
    //   554	567	570	java/lang/Exception
    //   592	608	570	java/lang/Exception
    //   0	11	580	finally
    //   343	373	580	finally
    //   11	17	608	finally
    //   339	343	608	finally
    //   21	339	616	finally
    //   374	381	616	finally
    //   386	525	616	finally
    //   530	535	616	finally
    //   544	549	621	finally
    //   0	11	630	java/lang/Exception
    //   343	373	630	java/lang/Exception
    //   11	17	640	java/lang/Exception
    //   339	343	640	java/lang/Exception
  }

  public final boolean c(Context paramContext)
  {
    Object localObject = "";
    try
    {
      String str = f(paramContext);
      localObject = str;
      label13: if ((!((String)localObject).equals("")) && (!((String)localObject).equals("-1")));
      for (boolean bool = true; ; bool = false)
        return bool;
    }
    catch (Exception localException)
    {
      break label13;
    }
  }

  public final String d(Context paramContext)
  {
    Object localObject = "";
    try
    {
      String str = f(paramContext);
      localObject = str;
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  // ERROR //
  public final java.util.TreeMap e(Context paramContext)
  {
    // Byte code:
    //   0: new 565	java/util/TreeMap
    //   3: dup
    //   4: invokespecial 566	java/util/TreeMap:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   12: ifnonnull +42 -> 54
    //   15: aload_0
    //   16: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   19: ifnull +10 -> 29
    //   22: aload_0
    //   23: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   26: invokevirtual 132	org/antivirus/core/c/a:close	()V
    //   29: aload_0
    //   30: new 129	org/antivirus/core/c/a
    //   33: dup
    //   34: aload_1
    //   35: ldc 134
    //   37: invokespecial 137	org/antivirus/core/c/a:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   40: putfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   43: aload_0
    //   44: aload_0
    //   45: getfield 30	org/antivirus/core/c/b:g	Lorg/antivirus/core/c/a;
    //   48: invokevirtual 141	org/antivirus/core/c/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   51: putfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   54: aload_0
    //   55: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   58: ifnull +208 -> 266
    //   61: aload_0
    //   62: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   65: ldc 108
    //   67: iconst_2
    //   68: anewarray 67	java/lang/String
    //   71: dup
    //   72: iconst_0
    //   73: ldc 116
    //   75: aastore
    //   76: dup
    //   77: iconst_1
    //   78: ldc 118
    //   80: aastore
    //   81: aconst_null
    //   82: aconst_null
    //   83: aconst_null
    //   84: aconst_null
    //   85: aconst_null
    //   86: invokevirtual 175	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   89: astore 8
    //   91: aload 8
    //   93: astore 4
    //   95: aload 4
    //   97: ifnull +130 -> 227
    //   100: aload 4
    //   102: invokeinterface 180 1 0
    //   107: ifle +120 -> 227
    //   110: aload 4
    //   112: invokeinterface 184 1 0
    //   117: ifeq +103 -> 220
    //   120: aload 4
    //   122: iconst_0
    //   123: invokeinterface 233 2 0
    //   128: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   131: ifne -21 -> 110
    //   134: aload 4
    //   136: iconst_1
    //   137: invokeinterface 233 2 0
    //   142: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   145: ifne -35 -> 110
    //   148: aload_2
    //   149: aload 4
    //   151: iconst_0
    //   152: invokeinterface 233 2 0
    //   157: aload 4
    //   159: iconst_1
    //   160: invokeinterface 233 2 0
    //   165: invokevirtual 569	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   168: pop
    //   169: goto -59 -> 110
    //   172: astore_3
    //   173: aload_3
    //   174: invokestatic 105	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   177: aload_0
    //   178: getfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   181: invokevirtual 277	android/database/sqlite/SQLiteDatabase:close	()V
    //   184: aload_0
    //   185: aconst_null
    //   186: putfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   189: new 47	java/lang/Exception
    //   192: dup
    //   193: ldc 196
    //   195: invokespecial 199	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   198: athrow
    //   199: astore 5
    //   201: aload 4
    //   203: astore 6
    //   205: aload 6
    //   207: ifnull +10 -> 217
    //   210: aload 6
    //   212: invokeinterface 200 1 0
    //   217: aload 5
    //   219: athrow
    //   220: aload 4
    //   222: invokeinterface 200 1 0
    //   227: aload 4
    //   229: ifnull +10 -> 239
    //   232: aload 4
    //   234: invokeinterface 200 1 0
    //   239: aload_2
    //   240: areturn
    //   241: astore 7
    //   243: aload_0
    //   244: aconst_null
    //   245: putfield 28	org/antivirus/core/c/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   248: goto -59 -> 189
    //   251: astore 5
    //   253: aconst_null
    //   254: astore 6
    //   256: goto -51 -> 205
    //   259: astore_3
    //   260: aconst_null
    //   261: astore 4
    //   263: goto -90 -> 173
    //   266: aconst_null
    //   267: astore 4
    //   269: goto -42 -> 227
    //
    // Exception table:
    //   from	to	target	type
    //   100	169	172	java/lang/Exception
    //   220	227	172	java/lang/Exception
    //   100	169	199	finally
    //   173	177	199	finally
    //   177	189	199	finally
    //   189	199	199	finally
    //   220	227	199	finally
    //   243	248	199	finally
    //   177	189	241	java/lang/Exception
    //   8	91	251	finally
    //   8	91	259	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.c.b
 * JD-Core Version:    0.6.2
 */