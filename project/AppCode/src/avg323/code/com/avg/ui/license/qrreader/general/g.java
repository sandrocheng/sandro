package com.avg.ui.license.qrreader.general;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.MultiFormatReader;
import java.util.Map;

final class g extends Handler
{
  private static final String a = g.class.getSimpleName();
  private final CaptureActivity b;
  private final MultiFormatReader c = new MultiFormatReader();
  private boolean d = true;

  g(CaptureActivity paramCaptureActivity, Map paramMap)
  {
    this.c.setHints(paramMap);
    this.b = paramCaptureActivity;
  }

  // ERROR //
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 48	java/lang/System:currentTimeMillis	()J
    //   3: pop2
    //   4: aload_0
    //   5: getfield 39	com/avg/ui/license/qrreader/general/g:b	Lcom/avg/ui/license/qrreader/general/CaptureActivity;
    //   8: invokevirtual 53	com/avg/ui/license/qrreader/general/CaptureActivity:c	()Lcom/avg/ui/license/qrreader/a/c;
    //   11: aload_1
    //   12: iload_2
    //   13: iload_3
    //   14: invokevirtual 58	com/avg/ui/license/qrreader/a/c:a	([BII)Lcom/avg/ui/license/qrreader/general/o;
    //   17: astore 6
    //   19: aconst_null
    //   20: astore 7
    //   22: aload 6
    //   24: ifnull +43 -> 67
    //   27: new 60	com/google/zxing/BinaryBitmap
    //   30: dup
    //   31: new 62	com/google/zxing/common/HybridBinarizer
    //   34: dup
    //   35: aload 6
    //   37: invokespecial 65	com/google/zxing/common/HybridBinarizer:<init>	(Lcom/google/zxing/LuminanceSource;)V
    //   40: invokespecial 68	com/google/zxing/BinaryBitmap:<init>	(Lcom/google/zxing/Binarizer;)V
    //   43: astore 8
    //   45: aload_0
    //   46: getfield 33	com/avg/ui/license/qrreader/general/g:c	Lcom/google/zxing/MultiFormatReader;
    //   49: aload 8
    //   51: invokevirtual 72	com/google/zxing/MultiFormatReader:decodeWithState	(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    //   54: astore 16
    //   56: aload 16
    //   58: astore 7
    //   60: aload_0
    //   61: getfield 33	com/avg/ui/license/qrreader/general/g:c	Lcom/google/zxing/MultiFormatReader;
    //   64: invokevirtual 75	com/google/zxing/MultiFormatReader:reset	()V
    //   67: aload_0
    //   68: getfield 39	com/avg/ui/license/qrreader/general/g:b	Lcom/avg/ui/license/qrreader/general/CaptureActivity;
    //   71: invokevirtual 78	com/avg/ui/license/qrreader/general/CaptureActivity:b	()Landroid/os/Handler;
    //   74: astore 11
    //   76: aload 7
    //   78: ifnull +83 -> 161
    //   81: invokestatic 48	java/lang/System:currentTimeMillis	()J
    //   84: pop2
    //   85: aload 11
    //   87: ifnull +46 -> 133
    //   90: aload 11
    //   92: iconst_3
    //   93: aload 7
    //   95: invokestatic 84	android/os/Message:obtain	(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    //   98: astore 14
    //   100: new 86	android/os/Bundle
    //   103: dup
    //   104: invokespecial 87	android/os/Bundle:<init>	()V
    //   107: astore 15
    //   109: aload 15
    //   111: ldc 89
    //   113: aload 6
    //   115: invokevirtual 94	com/avg/ui/license/qrreader/general/o:a	()Landroid/graphics/Bitmap;
    //   118: invokevirtual 98	android/os/Bundle:putParcelable	(Ljava/lang/String;Landroid/os/Parcelable;)V
    //   121: aload 14
    //   123: aload 15
    //   125: invokevirtual 102	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   128: aload 14
    //   130: invokevirtual 105	android/os/Message:sendToTarget	()V
    //   133: return
    //   134: astore 10
    //   136: aload_0
    //   137: getfield 33	com/avg/ui/license/qrreader/general/g:c	Lcom/google/zxing/MultiFormatReader;
    //   140: invokevirtual 75	com/google/zxing/MultiFormatReader:reset	()V
    //   143: aconst_null
    //   144: astore 7
    //   146: goto -79 -> 67
    //   149: astore 9
    //   151: aload_0
    //   152: getfield 33	com/avg/ui/license/qrreader/general/g:c	Lcom/google/zxing/MultiFormatReader;
    //   155: invokevirtual 75	com/google/zxing/MultiFormatReader:reset	()V
    //   158: aload 9
    //   160: athrow
    //   161: aload 11
    //   163: ifnull -30 -> 133
    //   166: aload 11
    //   168: iconst_2
    //   169: invokestatic 108	android/os/Message:obtain	(Landroid/os/Handler;I)Landroid/os/Message;
    //   172: invokevirtual 105	android/os/Message:sendToTarget	()V
    //   175: goto -42 -> 133
    //
    // Exception table:
    //   from	to	target	type
    //   45	56	134	com/google/zxing/ReaderException
    //   45	56	149	finally
  }

  public void handleMessage(Message paramMessage)
  {
    if (!this.d);
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      default:
        break;
      case 1:
        a((byte[])paramMessage.obj, paramMessage.arg1, paramMessage.arg2);
        break;
      case 5:
        this.d = false;
        Looper.myLooper().quit();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.g
 * JD-Core Version:    0.6.2
 */