package com.keniu.security.sync.c;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import com.keniu.security.sync.a.a;
import com.keniu.security.sync.d.d.a.ge;
import com.keniu.security.sync.d.d.a.jn;
import com.keniu.security.sync.i;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;
import java.security.NoSuchAlgorithmException;

public final class f extends AsyncTask
{
  jn a;
  private Context b;
  private Handler c;
  private ProgressDialog d;
  private String e;
  private String f;
  private String g;

  public f(Context paramContext, Handler paramHandler)
  {
    this.b = paramContext;
    this.c = paramHandler;
  }

  private Boolean a(String[] paramArrayOfString)
  {
    this.e = paramArrayOfString[0];
    this.f = paramArrayOfString[1];
    this.g = paramArrayOfString[2];
    try
    {
      new a();
      this.a = a.a(this.e, this.f, l.c(this.b), "0.0.0.001");
      return null;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        localNoSuchAlgorithmException.printStackTrace();
    }
  }

  private void a(Boolean paramBoolean)
  {
    if ((this.b != null) && (!((Activity)this.b).isFinishing()) && (this.d.isShowing()))
      this.d.cancel();
    if (this.a == null)
    {
      i.a(this, ">>>>> null response");
      l.a(this.b, 2131429472);
    }
    while (true)
    {
      return;
      try
      {
        int j = this.a.k().k();
        switch (j)
        {
        default:
          i = 2131429484;
        case 0:
        case 3000:
        case 3017:
        }
        while (true)
        {
          l.a(this.b, i);
          super.onPostExecute(paramBoolean);
          break;
          i.a(this, ">>>>> log suc");
          k localk = k.a();
          localk.a(this.b);
          localk.a("session_id", this.a.n());
          localk.a("user_name", this.e);
          localk.a("pass_word", this.f);
          localk.a("auto_status", Boolean.valueOf(this.g.equals("true")));
          this.c.sendEmptyMessage(17);
          i = 2131429481;
          continue;
          i = 2131429488;
          continue;
          i = 2131429489;
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          int i = 2131429484;
        }
      }
    }
  }

  protected final void onPreExecute()
  {
    this.d = new ProgressDialog(this.b);
    l.a(this.b, this.d, 2131429480);
    super.onPreExecute();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.f
 * JD-Core Version:    0.6.2
 */