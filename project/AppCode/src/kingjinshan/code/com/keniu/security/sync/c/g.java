package com.keniu.security.sync.c;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import com.keniu.security.sync.r;

public class g extends AsyncTask
{
  private com.keniu.security.sync.ui.h a;
  protected Context b;
  protected Handler c;
  private int d;
  private String e;
  private String f;

  public g(Context paramContext, Handler paramHandler, String paramString)
  {
    this.b = paramContext;
    this.c = paramHandler;
    this.d = 1;
    this.f = paramString;
  }

  public g(Context paramContext, String paramString, Handler paramHandler)
  {
    this.b = paramContext;
    this.e = paramString;
    this.c = paramHandler;
  }

  protected Integer a(String[] paramArrayOfString)
  {
    com.keniu.security.g.a().a(this.b);
    return null;
  }

  protected final void a(int paramInt)
  {
    this.a.a(paramInt);
  }

  protected void a(Integer paramInteger)
  {
    if ((this.b != null) && (!((Activity)this.b).isFinishing()) && (this.a != null) && (this.a.isShowing()))
      this.a.dismiss();
    super.onPostExecute(paramInteger);
  }

  protected final void b(int paramInt)
  {
    this.a.b(paramInt);
  }

  protected void onCancelled()
  {
    if ((this.a != null) && (this.a.isShowing()))
      this.a.dismiss();
    super.onCancelled();
  }

  protected void onPreExecute()
  {
    if (!r.c(this.b))
      cancel(true);
    Context localContext = this.b;
    if (this.f != null);
    for (String str = this.f; ; str = "")
    {
      this.a = new com.keniu.security.sync.ui.h(localContext, str);
      if (this.e != null)
        this.a.setMessage(this.e);
      if (this.d == 1)
        this.a.c(this.d);
      this.a.setOnCancelListener(new h(this));
      if ((this.b != null) && (!((Activity)this.b).isFinishing()))
        this.a.show();
      super.onPreExecute();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.g
 * JD-Core Version:    0.6.2
 */