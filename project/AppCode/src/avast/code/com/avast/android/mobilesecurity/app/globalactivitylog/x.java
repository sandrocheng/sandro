package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.os.AsyncTask;

class x extends AsyncTask
{
  private x(u paramu)
  {
  }

  // ERROR //
  protected java.lang.Void a(w[] paramArrayOfw)
  {
    // Byte code:
    //   0: aload_1
    //   1: iconst_0
    //   2: aaload
    //   3: astore_2
    //   4: aload_0
    //   5: getfield 10	com/avast/android/mobilesecurity/app/globalactivitylog/x:a	Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;
    //   8: aload_2
    //   9: invokestatic 24	com/avast/android/mobilesecurity/app/globalactivitylog/u:a	(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)Landroid/net/Uri;
    //   12: astore_3
    //   13: aload_0
    //   14: getfield 10	com/avast/android/mobilesecurity/app/globalactivitylog/x:a	Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;
    //   17: invokestatic 27	com/avast/android/mobilesecurity/app/globalactivitylog/u:a	(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)Lcom/avast/android/mobilesecurity/t;
    //   20: invokevirtual 33	com/avast/android/mobilesecurity/t:aW	()Z
    //   23: ifeq +24 -> 47
    //   26: aload_3
    //   27: ifnull +67 -> 94
    //   30: aload_2
    //   31: aload_3
    //   32: invokestatic 39	android/content/ContentUris:parseId	(Landroid/net/Uri;)J
    //   35: putfield 44	com/avast/android/mobilesecurity/app/globalactivitylog/w:a	J
    //   38: aload_0
    //   39: getfield 10	com/avast/android/mobilesecurity/app/globalactivitylog/x:a	Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;
    //   42: aload_2
    //   43: invokestatic 48	com/avast/android/mobilesecurity/app/globalactivitylog/u:b	(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;Lcom/avast/android/mobilesecurity/app/globalactivitylog/w;)Z
    //   46: pop
    //   47: aload_0
    //   48: getfield 10	com/avast/android/mobilesecurity/app/globalactivitylog/x:a	Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;
    //   51: astore 4
    //   53: aload 4
    //   55: monitorenter
    //   56: invokestatic 51	com/avast/android/mobilesecurity/app/globalactivitylog/u:b	()J
    //   59: ldc2_w 52
    //   62: lcmp
    //   63: ifle +11 -> 74
    //   66: aload_0
    //   67: getfield 10	com/avast/android/mobilesecurity/app/globalactivitylog/x:a	Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;
    //   70: invokestatic 56	com/avast/android/mobilesecurity/app/globalactivitylog/u:b	(Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)I
    //   73: pop
    //   74: aload 4
    //   76: monitorexit
    //   77: aconst_null
    //   78: areturn
    //   79: astore 8
    //   81: ldc 58
    //   83: ldc 60
    //   85: aload 8
    //   87: invokestatic 65	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   90: pop
    //   91: goto -44 -> 47
    //   94: ldc 58
    //   96: ldc 67
    //   98: invokestatic 71	com/avast/android/generic/util/m:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   101: pop
    //   102: goto -55 -> 47
    //   105: astore 5
    //   107: aload 4
    //   109: monitorexit
    //   110: aload 5
    //   112: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   38	47	79	java/io/IOException
    //   56	77	105	finally
    //   107	110	105	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.x
 * JD-Core Version:    0.6.2
 */