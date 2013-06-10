package org.antivirus.license.qrreader.general;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.MultiFormatReader;
import java.util.Map;

final class DecodeHandler extends Handler
{
  private static final String TAG = DecodeHandler.class.getSimpleName();
  private final CaptureActivity activity;
  private final MultiFormatReader multiFormatReader = new MultiFormatReader();
  private boolean running = true;

  DecodeHandler(CaptureActivity paramCaptureActivity, Map paramMap)
  {
    this.multiFormatReader.setHints(paramMap);
    this.activity = paramCaptureActivity;
  }

  // ERROR //
  private void decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 49	java/lang/System:currentTimeMillis	()J
    //   3: pop2
    //   4: aload_0
    //   5: getfield 39	org/antivirus/license/qrreader/general/DecodeHandler:activity	Lorg/antivirus/license/qrreader/general/CaptureActivity;
    //   8: invokevirtual 55	org/antivirus/license/qrreader/general/CaptureActivity:getCameraManager	()Lorg/antivirus/license/qrreader/camera/CameraManager;
    //   11: aload_1
    //   12: iload_2
    //   13: iload_3
    //   14: invokevirtual 61	org/antivirus/license/qrreader/camera/CameraManager:buildLuminanceSource	([BII)Lorg/antivirus/license/qrreader/general/PlanarYUVLuminanceSource;
    //   17: astore 6
    //   19: aconst_null
    //   20: astore 7
    //   22: aload 6
    //   24: ifnull +43 -> 67
    //   27: new 63	com/google/zxing/BinaryBitmap
    //   30: dup
    //   31: new 65	com/google/zxing/common/HybridBinarizer
    //   34: dup
    //   35: aload 6
    //   37: invokespecial 68	com/google/zxing/common/HybridBinarizer:<init>	(Lcom/google/zxing/LuminanceSource;)V
    //   40: invokespecial 71	com/google/zxing/BinaryBitmap:<init>	(Lcom/google/zxing/Binarizer;)V
    //   43: astore 8
    //   45: aload_0
    //   46: getfield 33	org/antivirus/license/qrreader/general/DecodeHandler:multiFormatReader	Lcom/google/zxing/MultiFormatReader;
    //   49: aload 8
    //   51: invokevirtual 75	com/google/zxing/MultiFormatReader:decodeWithState	(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    //   54: astore 16
    //   56: aload 16
    //   58: astore 7
    //   60: aload_0
    //   61: getfield 33	org/antivirus/license/qrreader/general/DecodeHandler:multiFormatReader	Lcom/google/zxing/MultiFormatReader;
    //   64: invokevirtual 78	com/google/zxing/MultiFormatReader:reset	()V
    //   67: aload_0
    //   68: getfield 39	org/antivirus/license/qrreader/general/DecodeHandler:activity	Lorg/antivirus/license/qrreader/general/CaptureActivity;
    //   71: invokevirtual 82	org/antivirus/license/qrreader/general/CaptureActivity:getHandler	()Landroid/os/Handler;
    //   74: astore 11
    //   76: aload 7
    //   78: ifnull +84 -> 162
    //   81: invokestatic 49	java/lang/System:currentTimeMillis	()J
    //   84: pop2
    //   85: aload 11
    //   87: ifnull +47 -> 134
    //   90: aload 11
    //   92: ldc 83
    //   94: aload 7
    //   96: invokestatic 89	android/os/Message:obtain	(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    //   99: astore 14
    //   101: new 91	android/os/Bundle
    //   104: dup
    //   105: invokespecial 92	android/os/Bundle:<init>	()V
    //   108: astore 15
    //   110: aload 15
    //   112: ldc 94
    //   114: aload 6
    //   116: invokevirtual 100	org/antivirus/license/qrreader/general/PlanarYUVLuminanceSource:renderCroppedGreyscaleBitmap	()Landroid/graphics/Bitmap;
    //   119: invokevirtual 104	android/os/Bundle:putParcelable	(Ljava/lang/String;Landroid/os/Parcelable;)V
    //   122: aload 14
    //   124: aload 15
    //   126: invokevirtual 108	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   129: aload 14
    //   131: invokevirtual 111	android/os/Message:sendToTarget	()V
    //   134: return
    //   135: astore 10
    //   137: aload_0
    //   138: getfield 33	org/antivirus/license/qrreader/general/DecodeHandler:multiFormatReader	Lcom/google/zxing/MultiFormatReader;
    //   141: invokevirtual 78	com/google/zxing/MultiFormatReader:reset	()V
    //   144: aconst_null
    //   145: astore 7
    //   147: goto -80 -> 67
    //   150: astore 9
    //   152: aload_0
    //   153: getfield 33	org/antivirus/license/qrreader/general/DecodeHandler:multiFormatReader	Lcom/google/zxing/MultiFormatReader;
    //   156: invokevirtual 78	com/google/zxing/MultiFormatReader:reset	()V
    //   159: aload 9
    //   161: athrow
    //   162: aload 11
    //   164: ifnull -30 -> 134
    //   167: aload 11
    //   169: ldc 112
    //   171: invokestatic 115	android/os/Message:obtain	(Landroid/os/Handler;I)Landroid/os/Message;
    //   174: invokevirtual 111	android/os/Message:sendToTarget	()V
    //   177: goto -43 -> 134
    //
    // Exception table:
    //   from	to	target	type
    //   45	56	135	com/google/zxing/ReaderException
    //   45	56	150	finally
  }

  public final void handleMessage(Message paramMessage)
  {
    if (!this.running);
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      default:
        break;
      case 2131230721:
        decode((byte[])paramMessage.obj, paramMessage.arg1, paramMessage.arg2);
        break;
      case 2131230725:
        this.running = false;
        Looper.myLooper().quit();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.DecodeHandler
 * JD-Core Version:    0.6.2
 */