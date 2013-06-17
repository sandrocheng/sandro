package com.avg.ui.license.qrreader.general;

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

final class h extends Thread
{
  private final CaptureActivity a;
  private final Map b;
  private Handler c;
  private final CountDownLatch d;

  h(CaptureActivity paramCaptureActivity, Collection paramCollection, String paramString, ResultPointCallback paramResultPointCallback)
  {
    this.a = paramCaptureActivity;
    this.d = new CountDownLatch(1);
    this.b = new EnumMap(DecodeHintType.class);
    if ((paramCollection == null) || (paramCollection.isEmpty()))
    {
      SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramCaptureActivity);
      paramCollection = EnumSet.noneOf(BarcodeFormat.class);
      if (localSharedPreferences.getBoolean("preferences_decode_1D", false))
        paramCollection.addAll(f.b);
      if (localSharedPreferences.getBoolean("preferences_decode_QR", false))
        paramCollection.addAll(f.c);
      if (localSharedPreferences.getBoolean("preferences_decode_Data_Matrix", false))
        paramCollection.addAll(f.d);
    }
    this.b.put(DecodeHintType.POSSIBLE_FORMATS, paramCollection);
    if (paramString != null)
      this.b.put(DecodeHintType.CHARACTER_SET, paramString);
    this.b.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, paramResultPointCallback);
  }

  Handler a()
  {
    try
    {
      this.d.await();
      label7: return this.c;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label7;
    }
  }

  public void run()
  {
    Looper.prepare();
    this.c = new g(this.a, this.b);
    this.d.countDown();
    Looper.loop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.h
 * JD-Core Version:    0.6.2
 */