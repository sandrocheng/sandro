package com.keniu.security.f;

import java.util.LinkedList;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

public final class l extends DefaultHandler
{
  private static final String h = "diff";
  private static final String i = "header";
  private static final String j = "body";
  private static final String k = "sql";
  private static final String l = "delete";
  private static final String m = "append";
  private static final String n = "row";
  private static final String o = "long";
  private static final String p = "double";
  private static final String q = "string";
  private static final String r = "blob";
  private static final String s = "null";
  private static final String t = "version";
  private static final String u = "type";
  private static final String v = "version_source";
  private static final String w = "version_target";
  private static final String x = "statement";
  private static final String y = "value";
  public String a;
  public String b;
  public String c;
  public String d;
  private LinkedList e;
  private o f;
  private LinkedList g;

  // ERROR //
  private boolean a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: invokestatic 81	javax/xml/parsers/SAXParserFactory:newInstance	()Ljavax/xml/parsers/SAXParserFactory;
    //   5: invokevirtual 85	javax/xml/parsers/SAXParserFactory:newSAXParser	()Ljavax/xml/parsers/SAXParser;
    //   8: invokevirtual 91	javax/xml/parsers/SAXParser:getXMLReader	()Lorg/xml/sax/XMLReader;
    //   11: astore 10
    //   13: aload 10
    //   15: aload_0
    //   16: invokeinterface 97 2 0
    //   21: new 99	java/io/FileInputStream
    //   24: dup
    //   25: aload_1
    //   26: invokespecial 102	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   29: astore 11
    //   31: aload 10
    //   33: new 104	org/xml/sax/InputSource
    //   36: dup
    //   37: aload 11
    //   39: invokespecial 107	org/xml/sax/InputSource:<init>	(Ljava/io/InputStream;)V
    //   42: invokeinterface 111 2 0
    //   47: aload 11
    //   49: invokevirtual 114	java/io/FileInputStream:close	()V
    //   52: iconst_1
    //   53: istore 8
    //   55: iload 8
    //   57: ireturn
    //   58: astore 7
    //   60: aload_2
    //   61: ifnull +7 -> 68
    //   64: aload_2
    //   65: invokevirtual 114	java/io/FileInputStream:close	()V
    //   68: iconst_0
    //   69: istore 8
    //   71: goto -16 -> 55
    //   74: astore_3
    //   75: aconst_null
    //   76: astore 4
    //   78: aload_3
    //   79: astore 5
    //   81: aload 4
    //   83: ifnull +8 -> 91
    //   86: aload 4
    //   88: invokevirtual 114	java/io/FileInputStream:close	()V
    //   91: aload 5
    //   93: athrow
    //   94: astore 13
    //   96: goto -44 -> 52
    //   99: astore 9
    //   101: goto -33 -> 68
    //   104: astore 6
    //   106: goto -15 -> 91
    //   109: astore 5
    //   111: aload 11
    //   113: astore 4
    //   115: goto -34 -> 81
    //   118: astore 12
    //   120: aload 11
    //   122: astore_2
    //   123: goto -63 -> 60
    //
    // Exception table:
    //   from	to	target	type
    //   2	31	58	java/lang/Exception
    //   2	31	74	finally
    //   47	52	94	java/lang/Exception
    //   64	68	99	java/lang/Exception
    //   86	91	104	java/lang/Exception
    //   31	47	109	finally
    //   31	47	118	java/lang/Exception
  }

  public static boolean a(String paramString1, String paramString2)
  {
    l locall = new l();
    if ((locall.a(paramString1)) && (locall.b(paramString2)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  // ERROR //
  private boolean b(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: aconst_null
    //   2: iconst_0
    //   3: invokestatic 126	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore 7
    //   8: aload 7
    //   10: astore_3
    //   11: aload_3
    //   12: invokevirtual 129	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   15: aload_0
    //   16: getfield 131	com/keniu/security/f/l:e	Ljava/util/LinkedList;
    //   19: invokevirtual 137	java/util/LinkedList:listIterator	()Ljava/util/ListIterator;
    //   22: astore 11
    //   24: aload 11
    //   26: invokeinterface 143 1 0
    //   31: ifeq +426 -> 457
    //   34: aload 11
    //   36: invokeinterface 147 1 0
    //   41: checkcast 149	com/keniu/security/f/o
    //   44: astore 12
    //   46: aload_3
    //   47: aload 12
    //   49: getfield 151	com/keniu/security/f/o:b	Ljava/lang/String;
    //   52: invokevirtual 155	android/database/sqlite/SQLiteDatabase:compileStatement	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    //   55: astore 13
    //   57: aload 12
    //   59: getfield 157	com/keniu/security/f/o:a	Ljava/lang/String;
    //   62: ldc 17
    //   64: invokevirtual 163	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   67: ifeq +41 -> 108
    //   70: aload 13
    //   72: invokevirtual 168	android/database/sqlite/SQLiteStatement:execute	()V
    //   75: aload 13
    //   77: invokevirtual 169	android/database/sqlite/SQLiteStatement:close	()V
    //   80: goto -56 -> 24
    //   83: astore 10
    //   85: aload_3
    //   86: invokevirtual 172	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   89: aload 10
    //   91: athrow
    //   92: astore 9
    //   94: aload_3
    //   95: ifnull +7 -> 102
    //   98: aload_3
    //   99: invokevirtual 173	android/database/sqlite/SQLiteDatabase:close	()V
    //   102: iconst_0
    //   103: istore 4
    //   105: iload 4
    //   107: ireturn
    //   108: aload 12
    //   110: getfield 157	com/keniu/security/f/o:a	Ljava/lang/String;
    //   113: ldc 20
    //   115: invokevirtual 163	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   118: ifne +16 -> 134
    //   121: aload 12
    //   123: getfield 157	com/keniu/security/f/o:a	Ljava/lang/String;
    //   126: ldc 23
    //   128: invokevirtual 163	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   131: ifeq +303 -> 434
    //   134: aload 12
    //   136: getfield 175	com/keniu/security/f/o:c	Ljava/util/LinkedList;
    //   139: invokevirtual 137	java/util/LinkedList:listIterator	()Ljava/util/ListIterator;
    //   142: astore 15
    //   144: aload 15
    //   146: invokeinterface 143 1 0
    //   151: ifeq -76 -> 75
    //   154: aload 15
    //   156: invokeinterface 147 1 0
    //   161: checkcast 133	java/util/LinkedList
    //   164: invokevirtual 137	java/util/LinkedList:listIterator	()Ljava/util/ListIterator;
    //   167: astore 16
    //   169: iconst_1
    //   170: istore 17
    //   172: aload 16
    //   174: invokeinterface 143 1 0
    //   179: ifeq +232 -> 411
    //   182: aload 16
    //   184: invokeinterface 147 1 0
    //   189: checkcast 177	com/keniu/security/f/n
    //   192: astore 18
    //   194: aload 18
    //   196: getfield 178	com/keniu/security/f/n:a	Ljava/lang/String;
    //   199: ldc 29
    //   201: invokevirtual 163	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   204: ifeq +31 -> 235
    //   207: iload 17
    //   209: iconst_1
    //   210: iadd
    //   211: istore 23
    //   213: aload 13
    //   215: iload 17
    //   217: aload 18
    //   219: getfield 179	com/keniu/security/f/n:b	Ljava/lang/String;
    //   222: invokestatic 185	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   225: invokevirtual 189	android/database/sqlite/SQLiteStatement:bindLong	(IJ)V
    //   228: iload 23
    //   230: istore 17
    //   232: goto -60 -> 172
    //   235: aload 18
    //   237: getfield 178	com/keniu/security/f/n:a	Ljava/lang/String;
    //   240: ldc 32
    //   242: invokevirtual 163	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   245: ifeq +31 -> 276
    //   248: iload 17
    //   250: iconst_1
    //   251: iadd
    //   252: istore 22
    //   254: aload 13
    //   256: iload 17
    //   258: aload 18
    //   260: getfield 179	com/keniu/security/f/n:b	Ljava/lang/String;
    //   263: invokestatic 195	java/lang/Double:parseDouble	(Ljava/lang/String;)D
    //   266: invokevirtual 199	android/database/sqlite/SQLiteStatement:bindDouble	(ID)V
    //   269: iload 22
    //   271: istore 17
    //   273: goto -101 -> 172
    //   276: aload 18
    //   278: getfield 178	com/keniu/security/f/n:a	Ljava/lang/String;
    //   281: ldc 35
    //   283: invokevirtual 163	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   286: ifeq +28 -> 314
    //   289: iload 17
    //   291: iconst_1
    //   292: iadd
    //   293: istore 21
    //   295: aload 13
    //   297: iload 17
    //   299: aload 18
    //   301: getfield 179	com/keniu/security/f/n:b	Ljava/lang/String;
    //   304: invokevirtual 203	android/database/sqlite/SQLiteStatement:bindString	(ILjava/lang/String;)V
    //   307: iload 21
    //   309: istore 17
    //   311: goto -139 -> 172
    //   314: aload 18
    //   316: getfield 178	com/keniu/security/f/n:a	Ljava/lang/String;
    //   319: ldc 38
    //   321: invokevirtual 163	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   324: ifeq +31 -> 355
    //   327: iload 17
    //   329: iconst_1
    //   330: iadd
    //   331: istore 20
    //   333: aload 13
    //   335: iload 17
    //   337: aload 18
    //   339: getfield 179	com/keniu/security/f/n:b	Ljava/lang/String;
    //   342: invokestatic 208	com/keniu/security/f/b:a	(Ljava/lang/String;)[B
    //   345: invokevirtual 212	android/database/sqlite/SQLiteStatement:bindBlob	(I[B)V
    //   348: iload 20
    //   350: istore 17
    //   352: goto -180 -> 172
    //   355: aload 18
    //   357: getfield 178	com/keniu/security/f/n:a	Ljava/lang/String;
    //   360: ldc 41
    //   362: invokevirtual 163	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   365: ifeq +23 -> 388
    //   368: iload 17
    //   370: iconst_1
    //   371: iadd
    //   372: istore 19
    //   374: aload 13
    //   376: iload 17
    //   378: invokevirtual 216	android/database/sqlite/SQLiteStatement:bindNull	(I)V
    //   381: iload 19
    //   383: istore 17
    //   385: goto -213 -> 172
    //   388: aload 13
    //   390: invokevirtual 169	android/database/sqlite/SQLiteStatement:close	()V
    //   393: aload_3
    //   394: invokevirtual 172	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   397: aload_3
    //   398: ifnull +7 -> 405
    //   401: aload_3
    //   402: invokevirtual 173	android/database/sqlite/SQLiteDatabase:close	()V
    //   405: iconst_0
    //   406: istore 4
    //   408: goto -303 -> 105
    //   411: aload 13
    //   413: invokevirtual 168	android/database/sqlite/SQLiteStatement:execute	()V
    //   416: aload 13
    //   418: invokevirtual 219	android/database/sqlite/SQLiteStatement:clearBindings	()V
    //   421: goto -277 -> 144
    //   424: astore 14
    //   426: aload 13
    //   428: invokevirtual 169	android/database/sqlite/SQLiteStatement:close	()V
    //   431: aload 14
    //   433: athrow
    //   434: aload 13
    //   436: invokevirtual 169	android/database/sqlite/SQLiteStatement:close	()V
    //   439: aload_3
    //   440: invokevirtual 172	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   443: aload_3
    //   444: ifnull +7 -> 451
    //   447: aload_3
    //   448: invokevirtual 173	android/database/sqlite/SQLiteDatabase:close	()V
    //   451: iconst_0
    //   452: istore 4
    //   454: goto -349 -> 105
    //   457: aload_3
    //   458: invokevirtual 222	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   461: aload_3
    //   462: invokevirtual 172	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   465: aload_3
    //   466: ifnull +7 -> 473
    //   469: aload_3
    //   470: invokevirtual 173	android/database/sqlite/SQLiteDatabase:close	()V
    //   473: iconst_1
    //   474: istore 4
    //   476: goto -371 -> 105
    //   479: astore 5
    //   481: aconst_null
    //   482: astore 6
    //   484: aload 6
    //   486: ifnull +8 -> 494
    //   489: aload 6
    //   491: invokevirtual 173	android/database/sqlite/SQLiteDatabase:close	()V
    //   494: aload 5
    //   496: athrow
    //   497: astore 8
    //   499: aload_3
    //   500: astore 6
    //   502: aload 8
    //   504: astore 5
    //   506: goto -22 -> 484
    //   509: astore_2
    //   510: aconst_null
    //   511: astore_3
    //   512: goto -418 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   15	57	83	finally
    //   75	80	83	finally
    //   388	393	83	finally
    //   426	439	83	finally
    //   457	461	83	finally
    //   11	15	92	java/lang/Exception
    //   85	92	92	java/lang/Exception
    //   393	397	92	java/lang/Exception
    //   439	443	92	java/lang/Exception
    //   461	465	92	java/lang/Exception
    //   57	75	424	finally
    //   108	381	424	finally
    //   411	421	424	finally
    //   0	8	479	finally
    //   11	15	497	finally
    //   85	92	497	finally
    //   393	397	497	finally
    //   439	443	497	finally
    //   461	465	497	finally
    //   0	8	509	java/lang/Exception
  }

  public final void endDocument()
  {
    super.endDocument();
  }

  public final void endElement(String paramString1, String paramString2, String paramString3)
  {
  }

  public final void startDocument()
  {
  }

  public final void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
  {
    if ((paramString2.equals("long")) || (paramString2.equals("double")) || (paramString2.equals("string")) || (paramString2.equals("blob")))
    {
      n localn1 = new n();
      localn1.a = paramString2;
      localn1.b = paramAttributes.getValue("value");
      this.g.add(localn1);
    }
    while (true)
    {
      return;
      if (paramString2.equals("null"))
      {
        n localn2 = new n();
        localn2.a = paramString2;
        this.g.add(localn2);
      }
      else if (paramString2.equals("row"))
      {
        this.g = new LinkedList();
        this.f.c.add(this.g);
      }
      else if ((paramString2.equals("delete")) || (paramString2.equals("append")))
      {
        this.g = null;
        this.f = new o();
        this.f.a = paramString2;
        this.f.b = paramAttributes.getValue("statement");
        this.f.c = new LinkedList();
        this.e.add(this.f);
      }
      else if (paramString2.equals("sql"))
      {
        this.g = null;
        this.f = new o();
        this.f.a = paramString2;
        this.f.b = paramAttributes.getValue("statement");
        this.e.add(this.f);
      }
      else if (paramString2.equals("body"))
      {
        this.e = new LinkedList();
      }
      else if (paramString2.equals("header"))
      {
        this.c = paramAttributes.getValue("version_source");
        this.d = paramAttributes.getValue("version_target");
      }
      else if (paramString2.equals("diff"))
      {
        this.a = paramAttributes.getValue("type");
        this.b = paramAttributes.getValue("version");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.l
 * JD-Core Version:    0.6.2
 */