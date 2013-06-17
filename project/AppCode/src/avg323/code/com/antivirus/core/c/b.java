package com.antivirus.core.c;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;

public class b extends ContentObserver
{
  public Uri a = Uri.parse("content://browser/bookmarks");
  public Uri b = Uri.parse("content://com.android.browser/history");
  private Context c;

  public b(Context paramContext, Handler paramHandler)
  {
    super(paramHandler);
    this.c = paramContext;
  }

  public void a()
  {
    if (this.c != null)
      this.c = null;
  }

  // ERROR //
  public void onChange(boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: iload_1
    //   4: invokespecial 37	android/database/ContentObserver:onChange	(Z)V
    //   7: getstatic 43	android/os/Build$VERSION:SDK_INT	I
    //   10: bipush 13
    //   12: if_icmple +60 -> 72
    //   15: aload_0
    //   16: getfield 30	com/antivirus/core/c/b:c	Landroid/content/Context;
    //   19: invokevirtual 49	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   22: aload_0
    //   23: getfield 28	com/antivirus/core/c/b:b	Landroid/net/Uri;
    //   26: iconst_2
    //   27: anewarray 51	java/lang/String
    //   30: dup
    //   31: iconst_0
    //   32: ldc 53
    //   34: aastore
    //   35: dup
    //   36: iconst_1
    //   37: ldc 55
    //   39: aastore
    //   40: ldc 57
    //   42: aconst_null
    //   43: ldc 59
    //   45: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   48: astore 9
    //   50: aload 9
    //   52: astore 5
    //   54: aload 5
    //   56: ifnonnull +58 -> 114
    //   59: aload 5
    //   61: ifnull +10 -> 71
    //   64: aload 5
    //   66: invokeinterface 70 1 0
    //   71: return
    //   72: aload_0
    //   73: getfield 30	com/antivirus/core/c/b:c	Landroid/content/Context;
    //   76: invokevirtual 49	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   79: aload_0
    //   80: getfield 24	com/antivirus/core/c/b:a	Landroid/net/Uri;
    //   83: iconst_2
    //   84: anewarray 51	java/lang/String
    //   87: dup
    //   88: iconst_0
    //   89: ldc 53
    //   91: aastore
    //   92: dup
    //   93: iconst_1
    //   94: ldc 55
    //   96: aastore
    //   97: ldc 57
    //   99: aconst_null
    //   100: ldc 59
    //   102: invokevirtual 65	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   105: astore 6
    //   107: aload 6
    //   109: astore 5
    //   111: goto -57 -> 54
    //   114: aload 5
    //   116: invokeinterface 74 1 0
    //   121: ifeq +44 -> 165
    //   124: aload 5
    //   126: iconst_1
    //   127: invokeinterface 78 2 0
    //   132: astore 7
    //   134: new 80	android/os/Bundle
    //   137: dup
    //   138: invokespecial 82	android/os/Bundle:<init>	()V
    //   141: astore 8
    //   143: aload 8
    //   145: ldc 84
    //   147: aload 7
    //   149: invokevirtual 88	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   152: aload_0
    //   153: getfield 30	com/antivirus/core/c/b:c	Landroid/content/Context;
    //   156: sipush 3000
    //   159: iconst_1
    //   160: aload 8
    //   162: invokestatic 93	com/antivirus/core/a:a	(Landroid/content/Context;IILandroid/os/Bundle;)V
    //   165: aload 5
    //   167: ifnull -96 -> 71
    //   170: aload 5
    //   172: invokeinterface 70 1 0
    //   177: goto -106 -> 71
    //   180: astore 4
    //   182: aconst_null
    //   183: astore 5
    //   185: aload 4
    //   187: invokestatic 98	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   190: aload 5
    //   192: ifnull -121 -> 71
    //   195: aload 5
    //   197: invokeinterface 70 1 0
    //   202: goto -131 -> 71
    //   205: astore_3
    //   206: aload_2
    //   207: ifnull +9 -> 216
    //   210: aload_2
    //   211: invokeinterface 70 1 0
    //   216: aload_3
    //   217: athrow
    //   218: astore_3
    //   219: aload 5
    //   221: astore_2
    //   222: goto -16 -> 206
    //   225: astore 4
    //   227: goto -42 -> 185
    //
    // Exception table:
    //   from	to	target	type
    //   7	50	180	java/lang/Exception
    //   72	107	180	java/lang/Exception
    //   7	50	205	finally
    //   72	107	205	finally
    //   114	165	218	finally
    //   185	190	218	finally
    //   114	165	225	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.c.b
 * JD-Core Version:    0.6.2
 */