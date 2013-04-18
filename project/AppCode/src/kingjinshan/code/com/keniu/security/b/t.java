package com.keniu.security.b;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import android.provider.ContactsContract.Contacts;
import android.provider.ContactsContract.Data;
import android.provider.ContactsContract.PhoneLookup;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

final class t extends s
{
  private static final int b = 0;
  private static final int c = 1;
  private static final int d = 2;
  private static final int e;
  private static final int f;
  private final String[] g = { "_id", "display_name", "has_phone_number" };
  private final String[] h = { "data15" };
  private final String[] i = { "data1" };
  private final String[] j = { "display_name", "number", "photo_id" };

  public t(Context paramContext)
  {
    super(paramContext);
  }

  private void a(b paramb)
  {
    Uri localUri = Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, paramb.a()), "photo");
    Cursor localCursor = this.a.query(localUri, this.h, null, null, null);
    try
    {
      if (localCursor.moveToNext())
      {
        byte[] arrayOfByte = localCursor.getBlob(0);
        paramb.a(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
      }
      return;
    }
    finally
    {
      localCursor.close();
    }
  }

  private void a(b paramb, long paramLong)
  {
    Uri localUri = Uri.withAppendedPath(ContactsContract.Data.CONTENT_URI, Long.toString(paramLong));
    Cursor localCursor = this.a.query(localUri, this.h, null, null, null);
    try
    {
      if (localCursor.moveToNext())
      {
        byte[] arrayOfByte = localCursor.getBlob(0);
        if (arrayOfByte != null)
          paramb.a(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
      }
      return;
    }
    finally
    {
      localCursor.close();
    }
  }

  private String[] a(long paramLong)
  {
    ContentResolver localContentResolver = this.a;
    Uri localUri = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;
    String[] arrayOfString1 = this.i;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = Long.toString(paramLong);
    Cursor localCursor = localContentResolver.query(localUri, arrayOfString1, "contact_id=?", arrayOfString2, null);
    try
    {
      int k = localCursor.getCount();
      String[] arrayOfString3 = new String[k];
      for (int m = 0; m < k; m++)
      {
        localCursor.moveToNext();
        arrayOfString3[m] = localCursor.getString(0);
      }
      return arrayOfString3;
    }
    finally
    {
      localCursor.close();
    }
  }

  private Cursor c(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() == 0));
    for (String str = "1234567890"; ; str = paramString)
    {
      Uri localUri = Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, str);
      return this.a.query(localUri, this.j, null, null, null);
    }
  }

  public final b a(String paramString)
  {
    return a(paramString, true);
  }

  // ERROR //
  public final b a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 151	com/keniu/security/b/t:c	(Ljava/lang/String;)Landroid/database/Cursor;
    //   7: astore 9
    //   9: aload 9
    //   11: ifnull +212 -> 223
    //   14: aload 9
    //   16: invokeinterface 88 1 0
    //   21: ifeq +202 -> 223
    //   24: new 56	com/jxphone/mosecurity/c/b
    //   27: dup
    //   28: invokespecial 153	com/jxphone/mosecurity/c/b:<init>	()V
    //   31: astore 10
    //   33: aload 10
    //   35: getstatic 158	com/jxphone/mosecurity/c/c:f	Lcom/jxphone/mosecurity/c/c;
    //   38: invokevirtual 161	com/jxphone/mosecurity/c/b:a	(Lcom/jxphone/mosecurity/c/c;)V
    //   41: aload 10
    //   43: aload 9
    //   45: iconst_0
    //   46: invokeinterface 128 2 0
    //   51: invokevirtual 164	com/jxphone/mosecurity/c/b:a	(Ljava/lang/String;)V
    //   54: aload 10
    //   56: aload 9
    //   58: iconst_1
    //   59: invokeinterface 128 2 0
    //   64: invokevirtual 166	com/jxphone/mosecurity/c/b:b	(Ljava/lang/String;)V
    //   67: iload_2
    //   68: ifeq +90 -> 158
    //   71: aload 9
    //   73: iconst_2
    //   74: invokeinterface 170 2 0
    //   79: lstore 11
    //   81: getstatic 109	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   84: lload 11
    //   86: invokestatic 115	java/lang/Long:toString	(J)Ljava/lang/String;
    //   89: invokestatic 73	android/net/Uri:withAppendedPath	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   92: astore 13
    //   94: aload_0
    //   95: getfield 76	com/keniu/security/b/t:a	Landroid/content/ContentResolver;
    //   98: aload 13
    //   100: aload_0
    //   101: getfield 36	com/keniu/security/b/t:h	[Ljava/lang/String;
    //   104: aconst_null
    //   105: aconst_null
    //   106: aconst_null
    //   107: invokevirtual 82	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   110: astore 14
    //   112: aload 14
    //   114: invokeinterface 88 1 0
    //   119: ifeq +32 -> 151
    //   122: aload 14
    //   124: iconst_0
    //   125: invokeinterface 92 2 0
    //   130: astore 16
    //   132: aload 16
    //   134: ifnull +17 -> 151
    //   137: aload 10
    //   139: aload 16
    //   141: iconst_0
    //   142: aload 16
    //   144: arraylength
    //   145: invokestatic 98	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   148: invokevirtual 101	com/jxphone/mosecurity/c/b:a	(Landroid/graphics/Bitmap;)V
    //   151: aload 14
    //   153: invokeinterface 105 1 0
    //   158: aload 9
    //   160: ifnull +10 -> 170
    //   163: aload 9
    //   165: invokeinterface 105 1 0
    //   170: aload 10
    //   172: astore 8
    //   174: aload 8
    //   176: areturn
    //   177: astore 15
    //   179: aload 14
    //   181: invokeinterface 105 1 0
    //   186: aload 15
    //   188: athrow
    //   189: astore 4
    //   191: aload 10
    //   193: astore 5
    //   195: aload 9
    //   197: astore 6
    //   199: aload 4
    //   201: invokevirtual 173	java/lang/Exception:printStackTrace	()V
    //   204: aload 6
    //   206: ifnull +89 -> 295
    //   209: aload 6
    //   211: invokeinterface 105 1 0
    //   216: aload 5
    //   218: astore 8
    //   220: goto -46 -> 174
    //   223: aload 9
    //   225: ifnull +77 -> 302
    //   228: aload 9
    //   230: invokeinterface 105 1 0
    //   235: aconst_null
    //   236: astore 8
    //   238: goto -64 -> 174
    //   241: astore 7
    //   243: aload_3
    //   244: ifnull +9 -> 253
    //   247: aload_3
    //   248: invokeinterface 105 1 0
    //   253: aload 7
    //   255: athrow
    //   256: astore 7
    //   258: aload 9
    //   260: astore_3
    //   261: goto -18 -> 243
    //   264: astore 7
    //   266: aload 6
    //   268: astore_3
    //   269: goto -26 -> 243
    //   272: astore 4
    //   274: aconst_null
    //   275: astore 5
    //   277: aconst_null
    //   278: astore 6
    //   280: goto -81 -> 199
    //   283: astore 4
    //   285: aload 9
    //   287: astore 6
    //   289: aconst_null
    //   290: astore 5
    //   292: goto -93 -> 199
    //   295: aload 5
    //   297: astore 8
    //   299: goto -125 -> 174
    //   302: aconst_null
    //   303: astore 8
    //   305: goto -131 -> 174
    //
    // Exception table:
    //   from	to	target	type
    //   112	151	177	finally
    //   33	112	189	java/lang/Exception
    //   151	158	189	java/lang/Exception
    //   179	189	189	java/lang/Exception
    //   2	9	241	finally
    //   14	33	256	finally
    //   33	112	256	finally
    //   151	158	256	finally
    //   179	189	256	finally
    //   199	204	264	finally
    //   2	9	272	java/lang/Exception
    //   14	33	283	java/lang/Exception
  }

  public final List a()
  {
    Cursor localCursor1 = this.a.query(ContactsContract.Contacts.CONTENT_URI, this.g, null, null, "display_name COLLATE LOCALIZED asc");
    HashSet localHashSet = new HashSet();
    while (true)
    {
      ArrayList localArrayList;
      int m;
      try
      {
        localArrayList = new ArrayList(localCursor1.getCount());
        if (localCursor1.moveToNext())
        {
          if (localCursor1.getInt(2) != 1)
            continue;
          localb1 = new b();
          localb1.a(c.f);
          localb1.a(localCursor1.getInt(0));
          localb1.a(localCursor1.getString(1));
          Uri localUri = Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, localb1.a()), "photo");
          localCursor2 = this.a.query(localUri, this.h, null, null, null);
        }
      }
      finally
      {
        try
        {
          b localb1;
          if (localCursor2.moveToNext())
          {
            byte[] arrayOfByte = localCursor2.getBlob(0);
            localb1.a(BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length));
          }
          localCursor2.close();
          String[] arrayOfString = a(localb1.a());
          int k = arrayOfString.length;
          m = 0;
          if (m >= k)
            continue;
          String str = arrayOfString[m];
          if (localHashSet.contains(str))
            break label289;
          localHashSet.add(str);
          b localb2 = localb1.i();
          localb2.b(str);
          localArrayList.add(localb2);
        }
        finally
        {
          Cursor localCursor2;
          localCursor2.close();
        }
        localCursor1.close();
      }
      localArrayList.trimToSize();
      localCursor1.close();
      return localArrayList;
      label289: m++;
    }
  }

  public final boolean b(String paramString)
  {
    Cursor localCursor = c(paramString);
    try
    {
      int k = localCursor.getCount();
      if (k > 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localCursor.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.b.t
 * JD-Core Version:    0.6.2
 */