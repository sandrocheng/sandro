package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import android.net.Uri;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.PhoneLookup;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.i;
import com.avast.android.mobilesecurity.j;
import java.util.regex.Pattern;

public abstract class f
{
  Context c;

  public f(Context paramContext)
  {
    this.c = paramContext;
  }

  private Cursor a(long paramLong)
  {
    return this.c.getContentResolver().query(j.a(paramLong), null, null, null, null);
  }

  private void a(Cursor paramCursor, MatrixCursor paramMatrixCursor, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramMatrixCursor.newRow().add(Long.valueOf(paramCursor.getLong(paramInt1))).add(Integer.valueOf(paramCursor.getInt(paramInt2))).add(paramCursor.getString(paramInt3)).add(paramCursor.getString(paramInt4)).add(Integer.valueOf(paramCursor.getInt(paramInt5)));
  }

  private boolean a(String paramString1, String paramString2)
  {
    String str = f(paramString2);
    m.c("LookupSupport: compareNumberWithWilcardFilterNumber(), final regexp: " + str);
    if ((!TextUtils.isEmpty(str)) && (Pattern.matches(str, paramString1)))
      m.c("LookupSupport: compareNumberWithWilcardFilterNumber(), matches: " + paramString1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private Cursor b()
  {
    return this.c.getContentResolver().query(j.a(), null, "unknownNumbers = 1", null, null);
  }

  private Cursor b(String paramString)
  {
    return this.c.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(paramString)), new String[] { "lookup" }, null, null, null);
  }

  private void b(Cursor paramCursor1, Cursor paramCursor2, String paramString)
  {
    if (paramCursor2 != null)
      m.c("LookupSupport: Processing groups for filter contact, phone: " + paramCursor2.getString(paramCursor2.getColumnIndex("phone")) + ", lookupKey: " + paramCursor2.getString(paramCursor2.getColumnIndex("lookupKey")) + ", type: " + paramCursor2.getString(paramCursor2.getColumnIndex("type")));
    while (true)
    {
      m.c("LookupSupport: Originating phone number: " + paramString);
      while (paramCursor1.moveToNext())
      {
        int i = paramCursor1.getInt(paramCursor1.getColumnIndex("minuteFrom"));
        int j = paramCursor1.getInt(paramCursor1.getColumnIndex("minuteTo"));
        int k = paramCursor1.getInt(paramCursor1.getColumnIndex("days"));
        if (m.a())
        {
          String str = paramCursor1.getString(paramCursor1.getColumnIndex("name"));
          m.c("LookupSupport: matchGroup(" + str + "): checkTime and date:" + com.avast.android.generic.d.a(k, i, j));
        }
        if (com.avast.android.generic.d.a(k, i, j))
          a(paramCursor1, paramCursor2, paramString);
      }
      m.c("LookupSupport: Processing groups for NULL filter contact");
    }
    paramCursor1.close();
  }

  private Cursor c()
  {
    return this.c.getContentResolver().query(j.a(), null, "hiddenNumbers = 1", null, null);
  }

  private Cursor c(String paramString)
  {
    return this.c.getContentResolver().query(ContactsContract.Data.CONTENT_URI, new String[] { "lookup" }, "mimetype = ? AND data1 = ?", new String[] { "vnd.android.cursor.item/email_v2", paramString }, null);
  }

  private Cursor d(String paramString)
  {
    return this.c.getContentResolver().query(i.a(), null, "lookupKey = ?", new String[] { paramString }, null);
  }

  private Cursor e(String paramString)
  {
    Cursor localCursor = this.c.getContentResolver().query(i.a(), new String[] { "_id", "groupId", "lookupKey", "phone", "type" }, "type = 10", null, null);
    MatrixCursor localMatrixCursor = new MatrixCursor(new String[] { "_id", "groupId", "lookupKey", "phone", "type" });
    int i;
    int j;
    int k;
    int m;
    int n;
    if (localCursor != null)
    {
      m.c("LookupSupport: getFilterContactsByCustomPhone(), count of all filter numbers: " + localCursor.getCount());
      if (localCursor.moveToFirst())
      {
        i = localCursor.getColumnIndex("_id");
        j = localCursor.getColumnIndex("groupId");
        k = localCursor.getColumnIndex("lookupKey");
        m = localCursor.getColumnIndex("phone");
        n = localCursor.getColumnIndex("type");
      }
    }
    while (true)
    {
      String str = localCursor.getString(m);
      m.c("LookupSupport: filterNumber: " + str + ", phone number: " + paramString);
      if (h(str))
        if (a(paramString, str))
        {
          m.c("LookupSupport: Match, adding wildcarded filter number to results.");
          a(localCursor, localMatrixCursor, i, j, k, m, n);
        }
      while (!localCursor.moveToNext())
      {
        localCursor.close();
        m.c("LookupSupport: Number of matching custom filter contacts: " + localMatrixCursor.getCount());
        return localMatrixCursor;
        if (PhoneNumberUtils.compare(paramString, str))
        {
          m.c("LookupSupport: Match, Adding filter number to results.");
          a(localCursor, localMatrixCursor, i, j, k, m, n);
        }
      }
    }
  }

  private String f(String paramString)
  {
    int i = 2;
    int j = 1;
    String str2;
    if (!g(paramString))
    {
      m.c("LookupSupport: prepareRegexpFromFilterNumber(), filter number has not intl. prefix.");
      str2 = "^(((\\+|00)\\d{1,3})?|0)" + d.b(paramString) + "$";
    }
    while (true)
    {
      if (str2 == null)
        str2 = d.b(paramString);
      return str2;
      m.c("LookupSupport: prepareRegexpFromFilterNumber(), filter number has intl. prefix.");
      if (paramString.charAt(0) == '+')
        i = j;
      int k;
      while (true)
      {
        k = j;
        for (int m = i; (m < paramString.length()) && (k - i < 3) && (paramString.charAt(m) >= '0') && (paramString.charAt(m) <= '9'); m++)
          k++;
        j = i;
      }
      m.c("LookupSupport: prepareRegexpFromFilterNumber(), intl. prefix length: " + k);
      String str1 = paramString.substring(k);
      if (d.c(str1) > 0)
      {
        String str3 = d.b(str1);
        m.c("LookupSupport: prepareRegexpFromFilterNumber(), regexp without CC: " + str3);
        str2 = "^(((\\+|00)\\d{1,3})?|0)" + str3 + "$";
      }
      else
      {
        m.c("LookupSupport: prepareRegexpFromFilterNumber(), no digits would be left, not stripping intl. prefix.");
        str2 = d.b(paramString).replaceFirst("^(\\+|00)", "^(\\\\+|00)") + "$";
      }
    }
  }

  private boolean g(String paramString)
  {
    if ((paramString.startsWith("+")) || (paramString.startsWith("00")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean h(String paramString)
  {
    if ((paramString.contains("*")) || (paramString.contains(".")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void a()
  {
    b(c(), null, null);
  }

  public abstract void a(Cursor paramCursor1, Cursor paramCursor2, String paramString);

  // ERROR //
  public void a(String paramString)
  {
    // Byte code:
    //   0: new 77	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 78	java/lang/StringBuilder:<init>	()V
    //   7: ldc_w 311
    //   10: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   13: aload_1
    //   14: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   20: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   23: pop
    //   24: getstatic 316	com/avast/android/mobilesecurity/e/h:e	Ljava/util/regex/Pattern;
    //   27: aload_1
    //   28: invokevirtual 320	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   31: invokevirtual 324	java/util/regex/Matcher:matches	()Z
    //   34: ifeq +358 -> 392
    //   37: new 77	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 78	java/lang/StringBuilder:<init>	()V
    //   44: ldc_w 326
    //   47: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: aload_1
    //   51: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: ldc_w 328
    //   57: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   66: pop
    //   67: aload_0
    //   68: aload_1
    //   69: invokespecial 330	com/avast/android/mobilesecurity/app/filter/core/f:c	(Ljava/lang/String;)Landroid/database/Cursor;
    //   72: astore 25
    //   74: aload 25
    //   76: astore 6
    //   78: aload 6
    //   80: ifnull +402 -> 482
    //   83: aload 6
    //   85: invokeinterface 218 1 0
    //   90: ifle +33 -> 123
    //   93: new 77	java/lang/StringBuilder
    //   96: dup
    //   97: invokespecial 78	java/lang/StringBuilder:<init>	()V
    //   100: ldc_w 332
    //   103: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: aload 6
    //   108: invokeinterface 218 1 0
    //   113: invokevirtual 221	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   116: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   122: pop
    //   123: aload 6
    //   125: ldc 134
    //   127: invokeinterface 142 2 0
    //   132: istore 16
    //   134: aload 6
    //   136: invokeinterface 156 1 0
    //   141: ifeq +341 -> 482
    //   144: aload 6
    //   146: iload 16
    //   148: invokeinterface 70 2 0
    //   153: astore 17
    //   155: new 77	java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial 78	java/lang/StringBuilder:<init>	()V
    //   162: ldc_w 334
    //   165: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload 17
    //   170: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   179: pop
    //   180: aload_0
    //   181: aload 17
    //   183: invokespecial 336	com/avast/android/mobilesecurity/app/filter/core/f:d	(Ljava/lang/String;)Landroid/database/Cursor;
    //   186: astore 19
    //   188: new 77	java/lang/StringBuilder
    //   191: dup
    //   192: invokespecial 78	java/lang/StringBuilder:<init>	()V
    //   195: ldc_w 338
    //   198: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload 19
    //   203: invokeinterface 218 1 0
    //   208: invokevirtual 221	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   211: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   217: pop
    //   218: aload 19
    //   220: ldc 207
    //   222: invokeinterface 142 2 0
    //   227: istore 22
    //   229: aload 19
    //   231: invokeinterface 156 1 0
    //   236: ifeq +200 -> 436
    //   239: aload_0
    //   240: aload_0
    //   241: aload 19
    //   243: iload 22
    //   245: invokeinterface 61 2 0
    //   250: i2l
    //   251: invokespecial 340	com/avast/android/mobilesecurity/app/filter/core/f:a	(J)Landroid/database/Cursor;
    //   254: aload 19
    //   256: aload_1
    //   257: invokespecial 306	com/avast/android/mobilesecurity/app/filter/core/f:b	(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    //   260: goto -31 -> 229
    //   263: astore 20
    //   265: aload 19
    //   267: ifnull +10 -> 277
    //   270: aload 19
    //   272: invokeinterface 185 1 0
    //   277: aload 20
    //   279: athrow
    //   280: astore 15
    //   282: invokestatic 345	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   285: ldc_w 347
    //   288: aload 15
    //   290: invokevirtual 350	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   293: aload 6
    //   295: ifnull +10 -> 305
    //   298: aload 6
    //   300: invokeinterface 185 1 0
    //   305: ldc_w 352
    //   308: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   311: pop
    //   312: aload_0
    //   313: aload_1
    //   314: invokespecial 354	com/avast/android/mobilesecurity/app/filter/core/f:e	(Ljava/lang/String;)Landroid/database/Cursor;
    //   317: astore 10
    //   319: aload 10
    //   321: ldc 207
    //   323: invokeinterface 142 2 0
    //   328: istore 13
    //   330: aload 10
    //   332: invokeinterface 156 1 0
    //   337: ifeq +215 -> 552
    //   340: aload_0
    //   341: aload_0
    //   342: aload 10
    //   344: iload 13
    //   346: invokeinterface 61 2 0
    //   351: i2l
    //   352: invokespecial 340	com/avast/android/mobilesecurity/app/filter/core/f:a	(J)Landroid/database/Cursor;
    //   355: aload 10
    //   357: aload_1
    //   358: invokespecial 306	com/avast/android/mobilesecurity/app/filter/core/f:b	(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    //   361: goto -31 -> 330
    //   364: astore 12
    //   366: invokestatic 345	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   369: ldc_w 347
    //   372: aload 12
    //   374: invokevirtual 350	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   377: aload 10
    //   379: ifnull +205 -> 584
    //   382: aload 10
    //   384: invokeinterface 185 1 0
    //   389: goto +195 -> 584
    //   392: aload_1
    //   393: iconst_1
    //   394: invokestatic 357	com/avast/android/mobilesecurity/app/filter/core/d:a	(Ljava/lang/String;Z)Ljava/lang/String;
    //   397: astore_1
    //   398: new 77	java/lang/StringBuilder
    //   401: dup
    //   402: invokespecial 78	java/lang/StringBuilder:<init>	()V
    //   405: ldc_w 359
    //   408: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: aload_1
    //   412: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   418: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   421: pop
    //   422: aload_0
    //   423: aload_1
    //   424: invokespecial 361	com/avast/android/mobilesecurity/app/filter/core/f:b	(Ljava/lang/String;)Landroid/database/Cursor;
    //   427: astore 5
    //   429: aload 5
    //   431: astore 6
    //   433: goto -355 -> 78
    //   436: aload 19
    //   438: ifnull -304 -> 134
    //   441: aload 19
    //   443: invokeinterface 185 1 0
    //   448: goto -314 -> 134
    //   451: astore 14
    //   453: aload 6
    //   455: ifnull +10 -> 465
    //   458: aload 6
    //   460: invokeinterface 185 1 0
    //   465: aload 14
    //   467: athrow
    //   468: astore_3
    //   469: invokestatic 345	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   472: ldc_w 347
    //   475: aload_3
    //   476: invokevirtual 350	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   479: goto +105 -> 584
    //   482: aload 6
    //   484: ifnull +13 -> 497
    //   487: aload 6
    //   489: invokeinterface 218 1 0
    //   494: ifne +43 -> 537
    //   497: ldc_w 363
    //   500: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   503: pop
    //   504: aload_1
    //   505: invokestatic 366	android/telephony/PhoneNumberUtils:isEmergencyNumber	(Ljava/lang/String;)Z
    //   508: ifeq +12 -> 520
    //   511: aload_1
    //   512: invokevirtual 270	java/lang/String:length	()I
    //   515: bipush 6
    //   517: if_icmple +20 -> 537
    //   520: ldc_w 368
    //   523: invokestatic 93	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   526: pop
    //   527: aload_0
    //   528: aload_0
    //   529: invokespecial 370	com/avast/android/mobilesecurity/app/filter/core/f:b	()Landroid/database/Cursor;
    //   532: aconst_null
    //   533: aload_1
    //   534: invokespecial 306	com/avast/android/mobilesecurity/app/filter/core/f:b	(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    //   537: aload 6
    //   539: ifnull -234 -> 305
    //   542: aload 6
    //   544: invokeinterface 185 1 0
    //   549: goto -244 -> 305
    //   552: aload 10
    //   554: ifnull +30 -> 584
    //   557: aload 10
    //   559: invokeinterface 185 1 0
    //   564: goto +20 -> 584
    //   567: astore 11
    //   569: aload 10
    //   571: ifnull +10 -> 581
    //   574: aload 10
    //   576: invokeinterface 185 1 0
    //   581: aload 11
    //   583: athrow
    //   584: return
    //
    // Exception table:
    //   from	to	target	type
    //   188	260	263	finally
    //   83	188	280	java/lang/Exception
    //   270	280	280	java/lang/Exception
    //   441	448	280	java/lang/Exception
    //   487	537	280	java/lang/Exception
    //   319	361	364	java/lang/Exception
    //   83	188	451	finally
    //   270	280	451	finally
    //   282	293	451	finally
    //   441	448	451	finally
    //   487	537	451	finally
    //   24	74	468	java/lang/Exception
    //   298	319	468	java/lang/Exception
    //   382	429	468	java/lang/Exception
    //   458	468	468	java/lang/Exception
    //   542	584	468	java/lang/Exception
    //   319	361	567	finally
    //   366	377	567	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.f
 * JD-Core Version:    0.6.2
 */