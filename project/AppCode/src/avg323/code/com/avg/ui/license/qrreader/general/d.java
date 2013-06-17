package com.avg.ui.license.qrreader.general;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.avg.ui.license.qrreader.a.c;
import com.google.zxing.Result;
import java.util.Collection;

public final class d extends Handler
{
  private static final String a = d.class.getSimpleName();
  private final CaptureActivity b;
  private final h c;
  private e d;
  private final c e;

  d(CaptureActivity paramCaptureActivity, Collection paramCollection, String paramString, c paramc)
  {
    this.b = paramCaptureActivity;
    this.c = new h(paramCaptureActivity, paramCollection, paramString, new p(paramCaptureActivity.a()));
    this.c.start();
    this.d = e.b;
    this.e = paramc;
    paramc.b();
    b();
  }

  private void b()
  {
    if (this.d == e.b)
    {
      this.d = e.a;
      this.e.a(this.c.a(), 1);
      this.e.b(this, 0);
      this.b.d();
    }
  }

  public void a()
  {
    this.d = e.c;
    this.e.c();
    Message.obtain(this.c.a(), 5).sendToTarget();
    try
    {
      this.c.join(500L);
      label38: removeMessages(3);
      removeMessages(2);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label38;
    }
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 1:
    case 5:
    default:
    case 0:
    case 6:
    case 3:
    case 2:
    case 7:
    case 4:
    }
    while (true)
    {
      return;
      if (this.d == e.a)
      {
        this.e.b(this, 0);
        continue;
        b();
        continue;
        this.d = e.b;
        Bundle localBundle = paramMessage.getData();
        if (localBundle == null);
        for (Bitmap localBitmap = null; ; localBitmap = (Bitmap)localBundle.getParcelable("barcode_bitmap"))
        {
          this.b.a((Result)paramMessage.obj, localBitmap);
          break;
        }
        this.d = e.a;
        this.e.a(this.c.a(), 1);
        continue;
        this.b.setResult(-1, (Intent)paramMessage.obj);
        this.b.finish();
        continue;
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse((String)paramMessage.obj));
        localIntent.addFlags(524288);
        this.b.startActivity(localIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.d
 * JD-Core Version:    0.6.2
 */