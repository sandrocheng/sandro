package com.antivirus.ui.callmessagefilter;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.widget.ImageView;

class b extends AsyncTask
{
  b(a parama, d paramd, ImageView paramImageView)
  {
  }

  // ERROR //
  protected Bitmap a(java.lang.String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: iconst_0
    //   4: aaload
    //   5: astore_3
    //   6: aload_0
    //   7: getfield 14	com/antivirus/ui/callmessagefilter/b:c	Lcom/antivirus/ui/callmessagefilter/a;
    //   10: invokevirtual 30	com/antivirus/ui/callmessagefilter/a:getContext	()Landroid/content/Context;
    //   13: invokevirtual 36	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   16: getstatic 42	android/provider/ContactsContract$Data:CONTENT_URI	Landroid/net/Uri;
    //   19: iconst_1
    //   20: anewarray 44	java/lang/String
    //   23: dup
    //   24: iconst_0
    //   25: ldc 46
    //   27: aastore
    //   28: ldc 48
    //   30: iconst_1
    //   31: anewarray 44	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: aload_3
    //   37: aastore
    //   38: aconst_null
    //   39: invokevirtual 54	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   42: astore 8
    //   44: aload 8
    //   46: ifnull +116 -> 162
    //   49: aload 8
    //   51: invokeinterface 60 1 0
    //   56: ifeq +106 -> 162
    //   59: aload 8
    //   61: aload 8
    //   63: ldc 46
    //   65: invokeinterface 64 2 0
    //   70: invokeinterface 68 2 0
    //   75: astore 10
    //   77: aload 10
    //   79: iconst_0
    //   80: aload 10
    //   82: arraylength
    //   83: invokestatic 74	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   86: astore 11
    //   88: aload 11
    //   90: astore 7
    //   92: aload 8
    //   94: ifnull +10 -> 104
    //   97: aload 8
    //   99: invokeinterface 77 1 0
    //   104: aload 7
    //   106: areturn
    //   107: astore 5
    //   109: aconst_null
    //   110: astore 6
    //   112: aload 6
    //   114: ifnull +10 -> 124
    //   117: aload 6
    //   119: invokeinterface 77 1 0
    //   124: aconst_null
    //   125: astore 7
    //   127: goto -23 -> 104
    //   130: astore 4
    //   132: aload_2
    //   133: ifnull +9 -> 142
    //   136: aload_2
    //   137: invokeinterface 77 1 0
    //   142: aload 4
    //   144: athrow
    //   145: astore 4
    //   147: aload 8
    //   149: astore_2
    //   150: goto -18 -> 132
    //   153: astore 9
    //   155: aload 8
    //   157: astore 6
    //   159: goto -47 -> 112
    //   162: aconst_null
    //   163: astore 7
    //   165: goto -73 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   6	44	107	java/lang/Throwable
    //   6	44	130	finally
    //   49	88	145	finally
    //   49	88	153	java/lang/Throwable
  }

  protected void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      this.a.a(paramBitmap);
      this.b.setImageBitmap(paramBitmap);
      this.c.notifyDataSetChanged();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.b
 * JD-Core Version:    0.6.2
 */