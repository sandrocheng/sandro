package com.jxphone.mosecurity.d;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.jxphone.mosecurity.logic.a.a;
import java.util.Map;

public class n
  implements a
{
  public static final int c = 1;
  public static final int d = 2;
  private ProgressDialog a;
  private boolean e;
  private Handler f;

  public n(Context paramContext, int paramInt, Handler paramHandler)
  {
    this.f = paramHandler;
    Log.e("ProgressDialogCallback", ">>>>new ProgressDialog()");
    this.a = new ProgressDialog(paramContext);
    this.a.setProgressStyle(1);
    this.a.setTitle(paramInt);
    this.a.setCancelable(true);
    this.a.setButton(paramContext.getString(2131428995), new o(this));
    Message localMessage = Message.obtain();
    localMessage.what = 1;
    paramHandler.handleMessage(localMessage);
    this.a.show();
  }

  public void a()
  {
    this.a.dismiss();
    Message localMessage = Message.obtain();
    localMessage.what = 2;
    this.f.handleMessage(localMessage);
  }

  public final void a(Map paramMap)
  {
    this.a.setMax(((Integer)paramMap.get("size")).intValue());
  }

  public final void b()
  {
    this.a.incrementProgressBy(1);
  }

  public final boolean c()
  {
    return this.e;
  }

  public final ProgressDialog d()
  {
    return this.a;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.n
 * JD-Core Version:    0.6.2
 */