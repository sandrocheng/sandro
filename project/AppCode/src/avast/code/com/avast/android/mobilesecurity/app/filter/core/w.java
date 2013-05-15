package com.avast.android.mobilesecurity.app.filter.core;

import android.content.ContentResolver;
import android.net.Uri;
import android.provider.BaseColumns;

public final class w extends x
  implements BaseColumns
{
  public static final Uri a;
  public static final String b;
  private static final Uri k = Uri.parse("content://sms/inbox");

  // ERROR //
  static
  {
    // Byte code:
    //   0: ldc 17
    //   2: invokestatic 23	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   5: putstatic 25	com/avast/android/mobilesecurity/app/filter/core/w:k	Landroid/net/Uri;
    //   8: getstatic 25	com/avast/android/mobilesecurity/app/filter/core/w:k	Landroid/net/Uri;
    //   11: astore_0
    //   12: ldc 27
    //   14: invokestatic 33	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   17: astore 4
    //   19: aload 4
    //   21: ldc 35
    //   23: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   26: aconst_null
    //   27: invokevirtual 45	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   30: checkcast 19	android/net/Uri
    //   33: astore 5
    //   35: aload 4
    //   37: ldc 47
    //   39: invokevirtual 39	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   42: aconst_null
    //   43: invokevirtual 45	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   46: checkcast 49	java/lang/String
    //   49: astore 8
    //   51: aload 5
    //   53: putstatic 51	com/avast/android/mobilesecurity/app/filter/core/w:a	Landroid/net/Uri;
    //   56: aload 8
    //   58: putstatic 53	com/avast/android/mobilesecurity/app/filter/core/w:b	Ljava/lang/String;
    //   61: return
    //   62: astore_2
    //   63: ldc 55
    //   65: ldc 57
    //   67: aload_2
    //   68: invokestatic 63	com/avast/android/generic/util/m:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   71: pop
    //   72: aload_0
    //   73: putstatic 51	com/avast/android/mobilesecurity/app/filter/core/w:a	Landroid/net/Uri;
    //   76: ldc 65
    //   78: putstatic 53	com/avast/android/mobilesecurity/app/filter/core/w:b	Ljava/lang/String;
    //   81: goto -20 -> 61
    //   84: astore_1
    //   85: aload_0
    //   86: putstatic 51	com/avast/android/mobilesecurity/app/filter/core/w:a	Landroid/net/Uri;
    //   89: ldc 65
    //   91: putstatic 53	com/avast/android/mobilesecurity/app/filter/core/w:b	Ljava/lang/String;
    //   94: aload_1
    //   95: athrow
    //   96: astore 7
    //   98: aload 5
    //   100: astore_0
    //   101: aload 7
    //   103: astore_1
    //   104: goto -19 -> 85
    //   107: astore 6
    //   109: aload 5
    //   111: astore_0
    //   112: aload 6
    //   114: astore_2
    //   115: goto -52 -> 63
    //
    // Exception table:
    //   from	to	target	type
    //   12	35	62	java/lang/Exception
    //   12	35	84	finally
    //   63	72	84	finally
    //   35	51	96	finally
    //   35	51	107	java/lang/Exception
  }

  public static Uri a(ContentResolver paramContentResolver, String paramString1, String paramString2, String paramString3, Long paramLong, boolean paramBoolean)
  {
    return u.a(paramContentResolver, a, paramString1, paramString2, paramString3, paramLong, paramBoolean, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.w
 * JD-Core Version:    0.6.2
 */