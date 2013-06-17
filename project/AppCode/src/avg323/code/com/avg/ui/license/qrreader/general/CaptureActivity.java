package com.avg.ui.license.qrreader.general;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
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
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import com.avg.ui.general.b;
import com.avg.ui.general.e;
import com.avg.ui.general.g;
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

public final class CaptureActivity extends Activity
  implements SurfaceHolder.Callback
{
  public static final Collection a = Collections.singleton("QR_CODE");
  private static final String b = CaptureActivity.class.getSimpleName();
  private com.avg.ui.license.qrreader.a.c c;
  private d d;
  private Result e;
  private ViewfinderView f;
  private TextView g;
  private View h;
  private Result i;
  private boolean j;
  private boolean k;
  private n l;
  private String m;
  private String n;
  private Collection o;
  private String p;
  private j q;
  private a r;

  private void a(int paramInt, Object paramObject)
  {
    Message localMessage = Message.obtain(this.d, paramInt, paramObject);
    long l1 = getIntent().getLongExtra("RESULT_DISPLAY_DURATION_MS", 1500L);
    if (l1 > 0L)
      this.d.sendMessageDelayed(localMessage, l1);
    while (true)
    {
      return;
      this.d.sendMessage(localMessage);
    }
  }

  private void a(Bitmap paramBitmap, Result paramResult)
  {
    if (this.d == null);
    for (this.e = paramResult; ; this.e = null)
    {
      return;
      if (paramResult != null)
        this.e = paramResult;
      if (this.e != null)
      {
        Message localMessage = Message.obtain(this.d, 3, this.e);
        this.d.sendMessage(localMessage);
      }
    }
  }

  private static void a(Canvas paramCanvas, Paint paramPaint, ResultPoint paramResultPoint1, ResultPoint paramResultPoint2)
  {
    paramCanvas.drawLine(paramResultPoint1.getX(), paramResultPoint1.getY(), paramResultPoint2.getX(), paramResultPoint2.getY(), paramPaint);
  }

  private void a(SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      this.c.a(paramSurfaceHolder);
      if (this.d == null)
        this.d = new d(this, this.o, this.p, this.c);
      a(null, null);
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localIOException);
        e();
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localRuntimeException);
        e();
      }
    }
  }

  private void a(Result paramResult, com.avg.ui.license.qrreader.b.a parama, Bitmap paramBitmap)
  {
    int i1 = 0;
    this.f.a(paramBitmap);
    this.g.setText(getString(parama.c()));
    if ((this.k) && (!parama.a()))
      ((ClipboardManager)getSystemService("clipboard")).setText(parama.b());
    if (this.l == n.a)
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
            localIntent.putExtra("SCAN_RESULT_BYTE_SEGMENTS_" + i1, arrayOfByte2);
            i1++;
          }
        }
      }
      a(7, localIntent);
    }
    while (true)
    {
      return;
      if (this.l == n.b)
      {
        int i2 = this.m.lastIndexOf("/scan");
        a(4, this.m.substring(0, i2) + "?q=" + parama.b() + "&source=zxing");
        continue;
      }
      if ((this.l != n.c) || (this.n == null))
        continue;
      Object localObject = String.valueOf(parama.b());
      try
      {
        String str2 = URLEncoder.encode((String)localObject, "UTF-8");
        localObject = str2;
        label426: a(4, this.n.replace("{CODE}", (CharSequence)localObject));
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        break label426;
      }
    }
  }

  private void b(Bitmap paramBitmap, Result paramResult)
  {
    int i1 = 0;
    ResultPoint[] arrayOfResultPoint = paramResult.getResultPoints();
    Canvas localCanvas;
    Paint localPaint;
    if ((arrayOfResultPoint != null) && (arrayOfResultPoint.length > 0))
    {
      localCanvas = new Canvas(paramBitmap);
      localPaint = new Paint();
      localPaint.setColor(getResources().getColor(b.result_image_border));
      localPaint.setStrokeWidth(3.0F);
      localPaint.setStyle(Paint.Style.STROKE);
      localCanvas.drawRect(new Rect(2, 2, -2 + paramBitmap.getWidth(), -2 + paramBitmap.getHeight()), localPaint);
      localPaint.setColor(getResources().getColor(b.result_points));
      if (arrayOfResultPoint.length != 2)
        break label145;
      localPaint.setStrokeWidth(4.0F);
      a(localCanvas, localPaint, arrayOfResultPoint[0], arrayOfResultPoint[1]);
    }
    while (true)
    {
      return;
      label145: if ((arrayOfResultPoint.length == 4) && ((paramResult.getBarcodeFormat() == BarcodeFormat.UPC_A) || (paramResult.getBarcodeFormat() == BarcodeFormat.EAN_13)))
      {
        a(localCanvas, localPaint, arrayOfResultPoint[0], arrayOfResultPoint[1]);
        a(localCanvas, localPaint, arrayOfResultPoint[2], arrayOfResultPoint[3]);
      }
      else
      {
        localPaint.setStrokeWidth(10.0F);
        int i2 = arrayOfResultPoint.length;
        while (i1 < i2)
        {
          ResultPoint localResultPoint = arrayOfResultPoint[i1];
          localCanvas.drawPoint(localResultPoint.getX(), localResultPoint.getY(), localPaint);
          i1++;
        }
      }
    }
  }

  private void e()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    int i1 = getApplicationInfo().labelRes;
    if (i1 > 0);
    for (String str = getString(i1); ; str = "")
    {
      localBuilder.setTitle(str);
      localBuilder.setMessage(getString(g.msg_camera_framework_bug));
      localBuilder.setPositiveButton(g.ok, new i(this));
      localBuilder.setOnCancelListener(new i(this));
      localBuilder.show();
      return;
    }
  }

  private void f()
  {
    this.h.setVisibility(8);
    this.g.setText(getString(g.msg_default_status));
    this.g.setVisibility(0);
    this.f.setVisibility(0);
    this.i = null;
  }

  ViewfinderView a()
  {
    return this.f;
  }

  public void a(long paramLong)
  {
    if (this.d != null)
      this.d.sendEmptyMessageDelayed(6, paramLong);
    f();
  }

  public void a(Result paramResult, Bitmap paramBitmap)
  {
    this.q.a();
    this.i = paramResult;
    com.avg.ui.license.qrreader.b.a locala = com.avg.ui.license.qrreader.b.c.a(this, paramResult);
    if (paramBitmap != null)
    {
      this.r.b();
      b(paramBitmap, paramResult);
      switch (c.a[this.l.ordinal()])
      {
      default:
      case 1:
      case 2:
      }
    }
    while (true)
    {
      return;
      a(paramResult, locala, paramBitmap);
    }
  }

  public Handler b()
  {
    return this.d;
  }

  com.avg.ui.license.qrreader.a.c c()
  {
    return this.c;
  }

  public void d()
  {
    this.f.a();
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(128);
    setContentView(e.capture);
    this.j = false;
    this.q = new j(this);
    this.r = new a(this);
    PreferenceManager.setDefaultValues(this, com.avg.ui.general.i.preferences, false);
  }

  protected void onDestroy()
  {
    this.q.d();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (paramInt == 4)
      if (this.l == n.a)
      {
        setResult(0);
        finish();
      }
    while (true)
    {
      return bool;
      if (((this.l == n.d) || (this.l == n.c)) && (this.i != null))
      {
        a(0L);
        continue;
        if ((paramInt == 80) || (paramInt == 27));
      }
      else
      {
        bool = super.onKeyDown(paramInt, paramKeyEvent);
      }
    }
  }

  protected void onPause()
  {
    if (this.d != null)
    {
      this.d.a();
      this.d = null;
    }
    this.q.b();
    this.c.a();
    if (!this.j)
      ((SurfaceView)findViewById(com.avg.ui.general.d.preview_view)).getHolder().removeCallback(this);
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    this.c = new com.avg.ui.license.qrreader.a.c(getApplication());
    this.f = ((ViewfinderView)findViewById(com.avg.ui.general.d.viewfinder_view));
    this.f.setCameraManager(this.c);
    this.h = findViewById(com.avg.ui.general.d.result_view);
    this.g = ((TextView)findViewById(com.avg.ui.general.d.status_view));
    this.d = null;
    this.i = null;
    f();
    SurfaceHolder localSurfaceHolder = ((SurfaceView)findViewById(com.avg.ui.general.d.preview_view)).getHolder();
    Intent localIntent;
    if (this.j)
    {
      a(localSurfaceHolder);
      this.r.a();
      this.q.c();
      localIntent = getIntent();
      if ((!PreferenceManager.getDefaultSharedPreferences(this).getBoolean("preferences_copy_to_clipboard", true)) || ((localIntent != null) && (!localIntent.getBooleanExtra("SAVE_HISTORY", true))))
        break label315;
    }
    label315: for (boolean bool = true; ; bool = false)
    {
      this.k = bool;
      this.l = n.d;
      this.o = null;
      this.p = null;
      if (localIntent != null)
      {
        this.l = n.a;
        this.o = f.a(localIntent);
        if ((localIntent.hasExtra("SCAN_WIDTH")) && (localIntent.hasExtra("SCAN_HEIGHT")))
        {
          int i1 = localIntent.getIntExtra("SCAN_WIDTH", 0);
          int i2 = localIntent.getIntExtra("SCAN_HEIGHT", 0);
          if ((i1 > 0) && (i2 > 0))
            this.c.a(i1, i2);
        }
        String str = localIntent.getStringExtra("PROMPT_MESSAGE");
        if (str != null)
          this.g.setText(str);
        this.p = localIntent.getStringExtra("CHARACTER_SET");
      }
      return;
      localSurfaceHolder.addCallback(this);
      localSurfaceHolder.setType(3);
      break;
    }
  }

  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    if ((paramSurfaceHolder != null) || (!this.j))
    {
      this.j = true;
      a(paramSurfaceHolder);
    }
  }

  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    this.j = false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.CaptureActivity
 * JD-Core Version:    0.6.2
 */