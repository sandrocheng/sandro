package org.antivirus.license.qrreader.general;

import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class DecodeThread extends Thread
{
  public static final String BARCODE_BITMAP = "barcode_bitmap";
  private final CaptureActivity activity;
  private Handler handler;
  private final CountDownLatch handlerInitLatch;
  private final Map hints;

  DecodeThread(CaptureActivity paramCaptureActivity, Collection paramCollection, String paramString, ResultPointCallback paramResultPointCallback)
  {
    this.activity = paramCaptureActivity;
    this.handlerInitLatch = new CountDownLatch(1);
    this.hints = new EnumMap(DecodeHintType.class);
    if ((paramCollection == null) || (paramCollection.isEmpty()))
    {
      SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramCaptureActivity);
      paramCollection = EnumSet.noneOf(BarcodeFormat.class);
      if (localSharedPreferences.getBoolean("preferences_decode_1D", false))
        paramCollection.addAll(DecodeFormatManager.ONE_D_FORMATS);
      if (localSharedPreferences.getBoolean("preferences_decode_QR", false))
        paramCollection.addAll(DecodeFormatManager.QR_CODE_FORMATS);
      if (localSharedPreferences.getBoolean("preferences_decode_Data_Matrix", false))
        paramCollection.addAll(DecodeFormatManager.DATA_MATRIX_FORMATS);
    }
    this.hints.put(DecodeHintType.POSSIBLE_FORMATS, paramCollection);
    if (paramString != null)
      this.hints.put(DecodeHintType.CHARACTER_SET, paramString);
    this.hints.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, paramResultPointCallback);
  }

  final Handler getHandler()
  {
    try
    {
      this.handlerInitLatch.await();
      label7: return this.handler;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label7;
    }
  }

  public final void run()
  {
    Looper.prepare();
    this.handler = new DecodeHandler(this.activity, this.hints);
    this.handlerInitLatch.countDown();
    Looper.loop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.DecodeThread
 * JD-Core Version:    0.6.2
 */