package com.ijinshan.software.recommand;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.widget.ImageView;

public final class n extends AsyncTask
{
  ImageView a = null;

  // ERROR //
  private static Bitmap a(java.lang.String paramString)
  {
    // Byte code:
    //   0: new 17	java/io/BufferedInputStream
    //   3: dup
    //   4: new 19	java/net/URL
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 22	java/net/URL:<init>	(Ljava/lang/String;)V
    //   12: invokevirtual 26	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   15: invokevirtual 32	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   18: invokespecial 35	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokestatic 41	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   26: astore 6
    //   28: aload 6
    //   30: astore 5
    //   32: aload_1
    //   33: invokevirtual 44	java/io/BufferedInputStream:close	()V
    //   36: aload 5
    //   38: areturn
    //   39: astore_2
    //   40: aconst_null
    //   41: astore_3
    //   42: aload_2
    //   43: astore 4
    //   45: aload 4
    //   47: invokevirtual 47	java/lang/Exception:printStackTrace	()V
    //   50: aload_3
    //   51: astore 5
    //   53: goto -17 -> 36
    //   56: astore 7
    //   58: aload 5
    //   60: astore_3
    //   61: aload 7
    //   63: astore 4
    //   65: goto -20 -> 45
    //
    // Exception table:
    //   from	to	target	type
    //   0	28	39	java/lang/Exception
    //   32	36	56	java/lang/Exception
  }

  private Bitmap a(ImageView[] paramArrayOfImageView)
  {
    this.a = paramArrayOfImageView[0];
    return a(this.a.getTag().toString());
  }

  private void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
      this.a.setImageBitmap(paramBitmap);
    this.a = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.n
 * JD-Core Version:    0.6.2
 */