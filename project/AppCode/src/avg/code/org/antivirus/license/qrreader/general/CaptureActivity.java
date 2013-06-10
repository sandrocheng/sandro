package org.antivirus.license.qrreader.general;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.ClipboardManager;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import org.antivirus.core.Logger;
import org.antivirus.license.qrreader.camera.CameraManager;
import org.antivirus.license.qrreader.result.ResultHandler;
import org.antivirus.license.qrreader.result.ResultHandlerFactory;

public final class CaptureActivity extends Activity
  implements SurfaceHolder.Callback
{
  private static final long DEFAULT_INTENT_RESULT_DURATION_MS = 1500L;
  public static final int HISTORY_REQUEST_CODE = 47820;
  public static final Collection QR_CODE_TYPES = Collections.singleton("QR_CODE");
  public static final int REQUEST_CODE = 49374;
  private static final String RETURN_CODE_PLACEHOLDER = "{CODE}";
  private static final String TAG = CaptureActivity.class.getSimpleName();
  private BeepManager beepManager;
  private CameraManager cameraManager;
  private String characterSet;
  private boolean copyToClipboard;
  private Collection decodeFormats;
  private CaptureActivityHandler handler;
  private boolean hasSurface;
  private InactivityTimer inactivityTimer;
  private Result lastResult;
  private View resultView;
  private String returnUrlTemplate;
  private Result savedResultToShow;
  private IntentSource source;
  private String sourceUrl;
  private TextView statusView;
  private ViewfinderView viewfinderView;

  private void decodeOrStoreSavedBitmap(Bitmap paramBitmap, Result paramResult)
  {
    if (this.handler == null);
    for (this.savedResultToShow = paramResult; ; this.savedResultToShow = null)
    {
      return;
      if (paramResult != null)
        this.savedResultToShow = paramResult;
      if (this.savedResultToShow != null)
      {
        Message localMessage = Message.obtain(this.handler, 2131230723, this.savedResultToShow);
        this.handler.sendMessage(localMessage);
      }
    }
  }

  private void displayFrameworkBugMessageAndExit()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(getString(2131296256));
    localBuilder.setMessage(getString(2131296567));
    localBuilder.setPositiveButton(2131296259, new FinishListener(this));
    localBuilder.setOnCancelListener(new FinishListener(this));
    localBuilder.show();
  }

  private static void drawLine(Canvas paramCanvas, Paint paramPaint, ResultPoint paramResultPoint1, ResultPoint paramResultPoint2)
  {
    paramCanvas.drawLine(paramResultPoint1.getX(), paramResultPoint1.getY(), paramResultPoint2.getX(), paramResultPoint2.getY(), paramPaint);
  }

  private void drawResultPoints(Bitmap paramBitmap, Result paramResult)
  {
    int i = 0;
    ResultPoint[] arrayOfResultPoint = paramResult.getResultPoints();
    Canvas localCanvas;
    Paint localPaint;
    if ((arrayOfResultPoint != null) && (arrayOfResultPoint.length > 0))
    {
      localCanvas = new Canvas(paramBitmap);
      localPaint = new Paint();
      localPaint.setColor(getResources().getColor(2131165214));
      localPaint.setStrokeWidth(3.0F);
      localPaint.setStyle(Paint.Style.STROKE);
      localCanvas.drawRect(new Rect(2, 2, -2 + paramBitmap.getWidth(), -2 + paramBitmap.getHeight()), localPaint);
      localPaint.setColor(getResources().getColor(2131165216));
      if (arrayOfResultPoint.length != 2)
        break label141;
      localPaint.setStrokeWidth(4.0F);
      drawLine(localCanvas, localPaint, arrayOfResultPoint[0], arrayOfResultPoint[1]);
    }
    while (true)
    {
      return;
      label141: if ((arrayOfResultPoint.length == 4) && ((paramResult.getBarcodeFormat() == BarcodeFormat.UPC_A) || (paramResult.getBarcodeFormat() == BarcodeFormat.EAN_13)))
      {
        drawLine(localCanvas, localPaint, arrayOfResultPoint[0], arrayOfResultPoint[1]);
        drawLine(localCanvas, localPaint, arrayOfResultPoint[2], arrayOfResultPoint[3]);
      }
      else
      {
        localPaint.setStrokeWidth(10.0F);
        int j = arrayOfResultPoint.length;
        while (i < j)
        {
          ResultPoint localResultPoint = arrayOfResultPoint[i];
          localCanvas.drawPoint(localResultPoint.getX(), localResultPoint.getY(), localPaint);
          i++;
        }
      }
    }
  }

  private void handleDecodeExternally(Result paramResult, ResultHandler paramResultHandler, Bitmap paramBitmap)
  {
    int i = 0;
    this.viewfinderView.drawResultBitmap(paramBitmap);
    this.statusView.setText(getString(paramResultHandler.getDisplayTitle()));
    if ((this.copyToClipboard) && (!paramResultHandler.areContentsSecure()))
      ((ClipboardManager)getSystemService("clipboard")).setText(paramResultHandler.getDisplayContents());
    if (this.source == IntentSource.NATIVE_APP_INTENT)
    {
      Intent localIntent = new Intent(getIntent().getAction());
      localIntent.addFlags(524288);
      localIntent.putExtra("SCAN_RESULT", paramResult.toString());
      localIntent.putExtra("SCAN_RESULT_FORMAT", paramResult.getBarcodeFormat().toString());
      byte[] arrayOfByte1 = paramResult.getRawBytes();
      if ((arrayOfByte1 != null) && (arrayOfByte1.length > 0))
        localIntent.putExtra("SCAN_RESULT_BYTES", arrayOfByte1);
      Map localMap = paramResult.getResultMetadata();
      if (localMap != null)
      {
        Integer localInteger = (Integer)localMap.get(ResultMetadataType.ORIENTATION);
        if (localInteger != null)
          localIntent.putExtra("SCAN_RESULT_ORIENTATION", localInteger.intValue());
        String str1 = (String)localMap.get(ResultMetadataType.ERROR_CORRECTION_LEVEL);
        if (str1 != null)
          localIntent.putExtra("SCAN_RESULT_ERROR_CORRECTION_LEVEL", str1);
        Iterable localIterable = (Iterable)localMap.get(ResultMetadataType.BYTE_SEGMENTS);
        if (localIterable != null)
        {
          Iterator localIterator = localIterable.iterator();
          while (localIterator.hasNext())
          {
            byte[] arrayOfByte2 = (byte[])localIterator.next();
            localIntent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i, arrayOfByte2);
            i++;
          }
        }
      }
      sendReplyMessage(2131230727, localIntent);
    }
    while (true)
    {
      return;
      if (this.source == IntentSource.PRODUCT_SEARCH_LINK)
      {
        int j = this.sourceUrl.lastIndexOf("/scan");
        sendReplyMessage(2131230724, this.sourceUrl.substring(0, j) + "?q=" + paramResultHandler.getDisplayContents() + "&source=zxing");
        continue;
      }
      if ((this.source != IntentSource.ZXING_LINK) || (this.returnUrlTemplate == null))
        continue;
      Object localObject = String.valueOf(paramResultHandler.getDisplayContents());
      try
      {
        String str2 = URLEncoder.encode((String)localObject, "UTF-8");
        localObject = str2;
        label432: sendReplyMessage(2131230724, this.returnUrlTemplate.replace("{CODE}", (CharSequence)localObject));
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        break label432;
      }
    }
  }

  private void initCamera(SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      this.cameraManager.openDriver(paramSurfaceHolder);
      if (this.handler == null)
        this.handler = new CaptureActivityHandler(this, this.decodeFormats, this.characterSet, this.cameraManager);
      decodeOrStoreSavedBitmap(null, null);
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        Logger.log(localIOException);
        displayFrameworkBugMessageAndExit();
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        Logger.log(localRuntimeException);
        displayFrameworkBugMessageAndExit();
      }
    }
  }

  private void resetStatusView()
  {
    this.resultView.setVisibility(8);
    this.statusView.setText(2131296568);
    this.statusView.setVisibility(0);
    this.viewfinderView.setVisibility(0);
    this.lastResult = null;
  }

  private void sendReplyMessage(int paramInt, Object paramObject)
  {
    Message localMessage = Message.obtain(this.handler, paramInt, paramObject);
    long l = getIntent().getLongExtra("RESULT_DISPLAY_DURATION_MS", 1500L);
    if (l > 0L)
      this.handler.sendMessageDelayed(localMessage, l);
    while (true)
    {
      return;
      this.handler.sendMessage(localMessage);
    }
  }

  public final void drawViewfinder()
  {
    this.viewfinderView.drawViewfinder();
  }

  final CameraManager getCameraManager()
  {
    return this.cameraManager;
  }

  public final Handler getHandler()
  {
    return this.handler;
  }

  final ViewfinderView getViewfinderView()
  {
    return this.viewfinderView;
  }

  public final void handleDecode(Result paramResult, Bitmap paramBitmap)
  {
    this.inactivityTimer.onActivity();
    this.lastResult = paramResult;
    ResultHandler localResultHandler = ResultHandlerFactory.makeResultHandler(this, paramResult);
    if (paramBitmap != null)
    {
      this.beepManager.playBeepSoundAndVibrate();
      drawResultPoints(paramBitmap, paramResult);
      switch (CaptureActivity.1.$SwitchMap$org$antivirus$license$qrreader$general$IntentSource[this.source.ordinal()])
      {
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      return;
      handleDecodeExternally(paramResult, localResultHandler, paramBitmap);
    }
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(128);
    setContentView(2130903056);
    this.hasSurface = false;
    this.inactivityTimer = new InactivityTimer(this);
    this.beepManager = new BeepManager(this);
    PreferenceManager.setDefaultValues(this, 2130968576, false);
  }

  protected final void onDestroy()
  {
    this.inactivityTimer.shutdown();
    super.onDestroy();
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (paramInt == 4)
      if (this.source == IntentSource.NATIVE_APP_INTENT)
      {
        setResult(0);
        finish();
      }
    while (true)
    {
      return bool;
      if (((this.source == IntentSource.NONE) || (this.source == IntentSource.ZXING_LINK)) && (this.lastResult != null))
      {
        restartPreviewAfterDelay(0L);
        continue;
        if ((paramInt == 80) || (paramInt == 27));
      }
      else
      {
        bool = super.onKeyDown(paramInt, paramKeyEvent);
      }
    }
  }

  protected final void onPause()
  {
    if (this.handler != null)
    {
      this.handler.quitSynchronously();
      this.handler = null;
    }
    this.inactivityTimer.onPause();
    this.cameraManager.closeDriver();
    if (!this.hasSurface)
      ((SurfaceView)findViewById(2131230837)).getHolder().removeCallback(this);
    super.onPause();
  }

  protected final void onResume()
  {
    super.onResume();
    this.cameraManager = new CameraManager(getApplication());
    this.viewfinderView = ((ViewfinderView)findViewById(2131230838));
    this.viewfinderView.setCameraManager(this.cameraManager);
    this.resultView = findViewById(2131230839);
    this.statusView = ((TextView)findViewById(2131230852));
    this.handler = null;
    this.lastResult = null;
    resetStatusView();
    SurfaceHolder localSurfaceHolder = ((SurfaceView)findViewById(2131230837)).getHolder();
    Intent localIntent;
    if (this.hasSurface)
    {
      initCamera(localSurfaceHolder);
      this.beepManager.updatePrefs();
      this.inactivityTimer.onResume();
      localIntent = getIntent();
      if ((!PreferenceManager.getDefaultSharedPreferences(this).getBoolean("preferences_copy_to_clipboard", true)) || ((localIntent != null) && (!localIntent.getBooleanExtra("SAVE_HISTORY", true))))
        break label315;
    }
    label315: for (boolean bool = true; ; bool = false)
    {
      this.copyToClipboard = bool;
      this.source = IntentSource.NONE;
      this.decodeFormats = null;
      this.characterSet = null;
      if (localIntent != null)
      {
        this.source = IntentSource.NATIVE_APP_INTENT;
        this.decodeFormats = DecodeFormatManager.parseDecodeFormats(localIntent);
        if ((localIntent.hasExtra("SCAN_WIDTH")) && (localIntent.hasExtra("SCAN_HEIGHT")))
        {
          int i = localIntent.getIntExtra("SCAN_WIDTH", 0);
          int j = localIntent.getIntExtra("SCAN_HEIGHT", 0);
          if ((i > 0) && (j > 0))
            this.cameraManager.setManualFramingRect(i, j);
        }
        String str = localIntent.getStringExtra("PROMPT_MESSAGE");
        if (str != null)
          this.statusView.setText(str);
        this.characterSet = localIntent.getStringExtra("CHARACTER_SET");
      }
      return;
      localSurfaceHolder.addCallback(this);
      localSurfaceHolder.setType(3);
      break;
    }
  }

  public final void restartPreviewAfterDelay(long paramLong)
  {
    if (this.handler != null)
      this.handler.sendEmptyMessageDelayed(2131230726, paramLong);
    resetStatusView();
  }

  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if (!this.hasSurface)
    {
      this.hasSurface = true;
      initCamera(paramSurfaceHolder);
    }
  }

  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.hasSurface = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.CaptureActivity
 * JD-Core Version:    0.6.2
 */