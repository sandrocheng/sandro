package com.keniu.security.util;

import android.app.ProgressDialog;
import android.content.Context;
import android.text.Html;

public final class aw
{
  private ProgressDialog a = null;
  private Object b = new Object();

  public final void a()
  {
    synchronized (this.b)
    {
      if ((this.a != null) && (this.a.isShowing()))
        this.a.dismiss();
      this.a = null;
      return;
    }
  }

  public final void a(Context paramContext)
  {
    a(paramContext, 0, 2131428466);
  }

  public final void a(Context paramContext, int paramInt1, int paramInt2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str1;
    if (paramInt1 == 0)
      str1 = "";
    while (true)
    {
      String str2 = ad.a(str1 + paramContext.getText(paramInt2), ae.d);
      synchronized (this.b)
      {
        if (this.a != null)
        {
          this.a.setMessage(Html.fromHtml(str2));
          return;
          str1 = paramContext.getText(paramInt1) + "<br/>";
          continue;
        }
        this.a = ProgressDialog.show(paramContext, null, Html.fromHtml(str2), true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.aw
 * JD-Core Version:    0.6.2
 */