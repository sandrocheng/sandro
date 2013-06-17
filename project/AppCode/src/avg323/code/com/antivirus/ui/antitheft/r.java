package com.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import com.antivirus.m;
import com.avg.ui.general.a.a;

public class r
{
  private a a;
  private ProgressDialog b;
  private Handler c;
  private AlertDialog d;
  private x e;
  private com.a.a.a.c f;
  private String g;
  private Handler h;
  private com.antivirus.core.b i;

  public r(a parama, x paramx)
  {
    this.a = parama;
    this.f = new com.a.a.a.c(this.a, "XX8R", 0, true);
    this.c = new s(this);
    this.h = new t(this);
    this.e = paramx;
    this.i = new com.antivirus.core.b(this.a);
  }

  private void a(CharSequence paramCharSequence, String paramString, int paramInt, DialogInterface.OnDismissListener paramOnDismissListener)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setTitle(paramString);
    localBuilder.setMessage(paramCharSequence);
    localBuilder.setIcon(paramInt);
    localBuilder.setPositiveButton(m.a(this.a, 2131296269), new w(this));
    this.d = localBuilder.create();
    this.d.setOnDismissListener(paramOnDismissListener);
    this.d.setCanceledOnTouchOutside(false);
    this.d.show();
  }

  private void b(String paramString)
  {
    if (this.f != null)
    {
      this.f.b("XX8R", paramString);
      this.f.a();
    }
  }

  private String c()
  {
    String str = com.antivirus.c.a(this.a);
    if (TextUtils.isEmpty(str))
    {
      str = com.antivirus.c.b.a(this.a);
      if (TextUtils.isEmpty(str))
        break label32;
    }
    while (true)
    {
      return str;
      label32: str = "";
    }
  }

  public void a()
  {
    this.b = ProgressDialog.show(this.a, "", this.a.getString(2131296729), true, false);
    com.antivirus.antitheft.b.a(this.a, this.h);
  }

  public void a(String paramString)
  {
    this.g = paramString;
    this.b = ProgressDialog.show(this.a, "", m.a(this.a, 2131296722), true, false);
    com.antivirus.antitheft.b.a(this.a, paramString, this.c);
  }

  protected void a(boolean paramBoolean)
  {
    if ((this.b != null) && (this.b.isShowing()))
    {
      this.b.dismiss();
      this.b = null;
    }
    if (paramBoolean)
    {
      b(null);
      com.antivirus.c.b(null);
      this.e.e(paramBoolean);
    }
    while (true)
    {
      return;
      a(m.a(this.a, 2131296723), m.a(this.a, 2131296261), 2130837719, new u(this, paramBoolean));
    }
  }

  public String b()
  {
    String str = "";
    if (this.f != null)
      str = this.f.a("XX8R", str);
    if (TextUtils.isEmpty(str))
      str = c();
    return str;
  }

  protected void b(boolean paramBoolean)
  {
    if ((this.b != null) && (this.b.isShowing()))
    {
      this.b.dismiss();
      this.b = null;
    }
    v localv = new v(this, paramBoolean);
    if (paramBoolean)
    {
      b(this.g);
      if (com.antivirus.antitheft.w.b(this.a, this.i))
      {
        com.antivirus.c.c(true);
        com.antivirus.c.n();
      }
      String str = m.a(this.a, 2131296518);
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(m.a(this.a, 2131296519));
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(this.a.getResources().getColor(2131165250)), 0, str.length(), 33);
      a(localSpannableStringBuilder, m.a(this.a, 2131296517), 2130837721, localv);
    }
    while (true)
    {
      return;
      if (!paramBoolean)
        a(m.a(this.a, 2131296723), m.a(this.a, 2131296261), 2130837719, localv);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.r
 * JD-Core Version:    0.6.2
 */