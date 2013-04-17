import android.text.TextUtils;

final class bvh
{
  private static final String[] d = { "type", "mmsc", "mmsproxy", "mmsport" };
  private String a;
  private String b;
  private int c;

  // ERROR //
  public bvh(android.content.Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 33	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: iconst_m1
    //   6: putfield 35	bvh:c	I
    //   9: aload_2
    //   10: ifnull +87 -> 97
    //   13: new 37	java/lang/StringBuilder
    //   16: dup
    //   17: ldc 39
    //   19: invokespecial 42	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_2
    //   23: invokevirtual 46	java/lang/String:trim	()Ljava/lang/String;
    //   26: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: ldc 52
    //   31: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: astore_3
    //   38: aload_1
    //   39: invokevirtual 61	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   42: getstatic 67	android/provider/Telephony$Carriers:CONTENT_URI	Landroid/net/Uri;
    //   45: ldc 69
    //   47: invokestatic 75	android/net/Uri:withAppendedPath	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   50: getstatic 25	bvh:d	[Ljava/lang/String;
    //   53: aload_3
    //   54: aconst_null
    //   55: aconst_null
    //   56: invokevirtual 81	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   59: astore 7
    //   61: aload 7
    //   63: astore 5
    //   65: aload 5
    //   67: ifnull +17 -> 84
    //   70: aload 5
    //   72: invokeinterface 87 1 0
    //   77: istore 8
    //   79: iload 8
    //   81: ifne +116 -> 197
    //   84: aload 5
    //   86: ifnull +10 -> 96
    //   89: aload 5
    //   91: invokeinterface 90 1 0
    //   96: return
    //   97: aconst_null
    //   98: astore_3
    //   99: goto -61 -> 38
    //   102: aload 5
    //   104: iconst_0
    //   105: invokeinterface 94 2 0
    //   110: ldc 96
    //   112: invokestatic 99	bvh:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   115: ifeq +74 -> 189
    //   118: aload_0
    //   119: aload 5
    //   121: iconst_1
    //   122: invokeinterface 94 2 0
    //   127: putfield 101	bvh:a	Ljava/lang/String;
    //   130: aload_0
    //   131: aload 5
    //   133: iconst_2
    //   134: invokeinterface 94 2 0
    //   139: putfield 103	bvh:b	Ljava/lang/String;
    //   142: aload_0
    //   143: getfield 103	bvh:b	Ljava/lang/String;
    //   146: ifnull +147 -> 293
    //   149: aload_0
    //   150: getfield 103	bvh:b	Ljava/lang/String;
    //   153: invokevirtual 46	java/lang/String:trim	()Ljava/lang/String;
    //   156: invokevirtual 107	java/lang/String:length	()I
    //   159: ifeq +134 -> 293
    //   162: iconst_1
    //   163: istore 11
    //   165: iload 11
    //   167: ifeq +22 -> 189
    //   170: aload 5
    //   172: iconst_3
    //   173: invokeinterface 94 2 0
    //   178: astore 12
    //   180: aload_0
    //   181: aload 12
    //   183: invokestatic 113	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   186: putfield 35	bvh:c	I
    //   189: aload 5
    //   191: invokeinterface 116 1 0
    //   196: pop
    //   197: aload 5
    //   199: invokeinterface 119 1 0
    //   204: ifne +17 -> 221
    //   207: aload_0
    //   208: getfield 101	bvh:a	Ljava/lang/String;
    //   211: invokestatic 125	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   214: istore 9
    //   216: iload 9
    //   218: ifne -116 -> 102
    //   221: aload 5
    //   223: ifnull +10 -> 233
    //   226: aload 5
    //   228: invokeinterface 90 1 0
    //   233: aload_0
    //   234: getfield 101	bvh:a	Ljava/lang/String;
    //   237: ifnonnull -141 -> 96
    //   240: aload_1
    //   241: invokestatic 131	com/tencent/tmsecure/utils/PhoneInfoUtil:getNetworkOperatorCode	(Landroid/content/Context;)I
    //   244: tableswitch	default:+28 -> 272, 0:+107->351, 1:+137->381, 2:+122->366
    //   273: ldc 133
    //   275: putfield 101	bvh:a	Ljava/lang/String;
    //   278: aload_0
    //   279: ldc 135
    //   281: putfield 103	bvh:b	Ljava/lang/String;
    //   284: aload_0
    //   285: bipush 80
    //   287: putfield 35	bvh:c	I
    //   290: goto -194 -> 96
    //   293: iconst_0
    //   294: istore 11
    //   296: goto -131 -> 165
    //   299: astore 13
    //   301: aload 13
    //   303: invokevirtual 138	java/lang/NumberFormatException:printStackTrace	()V
    //   306: goto -117 -> 189
    //   309: astore 4
    //   311: aload 4
    //   313: invokevirtual 139	java/lang/Exception:printStackTrace	()V
    //   316: aload 5
    //   318: ifnull -85 -> 233
    //   321: aload 5
    //   323: invokeinterface 90 1 0
    //   328: goto -95 -> 233
    //   331: astore 6
    //   333: aconst_null
    //   334: astore 5
    //   336: aload 5
    //   338: ifnull +10 -> 348
    //   341: aload 5
    //   343: invokeinterface 90 1 0
    //   348: aload 6
    //   350: athrow
    //   351: aload_0
    //   352: ldc 133
    //   354: putfield 101	bvh:a	Ljava/lang/String;
    //   357: aload_0
    //   358: ldc 135
    //   360: putfield 103	bvh:b	Ljava/lang/String;
    //   363: goto -79 -> 284
    //   366: aload_0
    //   367: ldc 141
    //   369: putfield 101	bvh:a	Ljava/lang/String;
    //   372: aload_0
    //   373: ldc 143
    //   375: putfield 103	bvh:b	Ljava/lang/String;
    //   378: goto -94 -> 284
    //   381: aload_0
    //   382: ldc 145
    //   384: putfield 101	bvh:a	Ljava/lang/String;
    //   387: aload_0
    //   388: ldc 135
    //   390: putfield 103	bvh:b	Ljava/lang/String;
    //   393: goto -109 -> 284
    //   396: astore 6
    //   398: goto -62 -> 336
    //   401: astore 4
    //   403: aconst_null
    //   404: astore 5
    //   406: goto -95 -> 311
    //
    // Exception table:
    //   from	to	target	type
    //   180	189	299	java/lang/NumberFormatException
    //   70	79	309	java/lang/Exception
    //   102	180	309	java/lang/Exception
    //   180	189	309	java/lang/Exception
    //   189	216	309	java/lang/Exception
    //   301	306	309	java/lang/Exception
    //   13	61	331	finally
    //   70	79	396	finally
    //   102	180	396	finally
    //   180	189	396	finally
    //   189	216	396	finally
    //   301	306	396	finally
    //   311	316	396	finally
    //   13	61	401	java/lang/Exception
  }

  private static boolean a(String paramString1, String paramString2)
  {
    boolean bool = true;
    if (TextUtils.isEmpty(paramString1))
      return bool;
    String[] arrayOfString = paramString1.split(",");
    int i = arrayOfString.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        bool = false;
        break;
      }
      String str = arrayOfString[j];
      if ((str.equals(paramString2)) || (str.equals("*")))
        break;
    }
  }

  public final String a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final int c()
  {
    return this.c;
  }

  public final boolean d()
  {
    if ((this.b != null) && (this.b.trim().length() != 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvh
 * JD-Core Version:    0.6.2
 */