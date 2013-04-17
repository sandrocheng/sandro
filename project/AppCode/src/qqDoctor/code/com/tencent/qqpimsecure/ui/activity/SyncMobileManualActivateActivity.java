package com.tencent.qqpimsecure.ui.activity;

import a;
import aej;
import aek;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import cg;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import cy;
import cz;
import da;
import df;
import ha;

public class SyncMobileManualActivateActivity extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a(this);
  }

  public final class a extends BaseView
    implements View.OnClickListener, cg
  {
    private ButtonView a;
    private ButtonView b;
    private EditText c;
    private TextView d;
    private cy e = null;
    private cz f = null;
    private Dialog g;
    private int h = 30;
    private df i;
    private String j;
    private String k;
    private String l;
    private Handler m = new aej(this);

    public a(Context arg2)
    {
      super(2130903258);
    }

    private void a(String paramString1, String paramString2, String paramString3)
    {
      String str = "+" + paramString1 + paramString2;
      if ((str != null) && (str.length() > 0))
      {
        da.b(this.j);
        da.c(paramString2);
      }
      da.d(paramString3);
      this.f.a(str, paramString3, (byte)2);
      this.b.setEnabled(false);
      this.h = 30;
      if (this.i == null)
        this.i = new df(this);
      df localdf = this.i;
      if ((localdf.c != null) && (localdf.d != null))
        localdf.c.postDelayed(localdf.d, 1000L);
      ha.b(this.mContext, 2131427618);
    }

    private void b()
    {
      this.h = 30;
      if (this.i != null)
      {
        df localdf = this.i;
        if ((localdf.c != null) && (localdf.d != null))
          localdf.c.removeCallbacks(localdf.d);
      }
      this.b.setText(this.mContext.getString(2131427623));
      this.b.setEnabled(true);
    }

    public final void a()
    {
      this.h = (-1 + this.h);
      if (this.h <= 0)
        b();
      while (true)
      {
        return;
        int i1 = this.h;
        this.b.setText(i1 + this.mContext.getString(2131428856));
        if (this.i == null)
          this.i = new df(this);
        df localdf = this.i;
        if ((localdf.c != null) && (localdf.d != null))
          localdf.c.postDelayed(localdf.d, 1000L);
      }
    }

    public final void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      case 2131231410:
      default:
      case 2131231411:
      case 2131231409:
      }
      while (true)
      {
        return;
        a(this.j, this.k, this.l);
        continue;
        b();
        String str = SyncMobileManualActivateActivity.this.getString(2131428839);
        if (this.g == null)
        {
          this.g = new Dialog(this.mContext);
          this.g.addProgressDialog();
          this.g.setTitle(2131427567);
          this.g.setNeutralButton(2131427379, new aek(this), 2);
        }
        this.g.setMessage(str);
        this.g.show();
        this.e.a("+" + this.j + this.k, this.c.getText().toString());
      }
    }

    public final void onCreate()
    {
      super.onCreate();
      this.a = ((ButtonView)findViewById(2131231409));
      this.b = ((ButtonView)findViewById(2131231411));
      this.c = ((EditText)findViewById(2131230774));
      this.a.setOnClickListener(this);
      this.b.setOnClickListener(this);
      this.d = ((TextView)findViewById(2131231410));
      String str = this.mContext.getResources().getString(2131427612);
      SpannableString localSpannableString = new SpannableString(str);
      localSpannableString.setSpan(new a(), 0, str.length(), 33);
      localSpannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(2131296289)), 0, str.length(), 34);
      this.d.setMovementMethod(LinkMovementMethod.getInstance());
      this.d.setText(localSpannableString);
      this.d.setMovementMethod(LinkMovementMethod.getInstance());
      this.f = new cz(this.mContext, this.m);
      this.e = new cy(this.mContext, this.m);
      Intent localIntent = SyncMobileManualActivateActivity.this.getIntent();
      Bundle localBundle;
      if (localIntent != null)
      {
        localBundle = localIntent.getExtras();
        if (localBundle == null);
      }
      try
      {
        this.j = localBundle.getString("intent_key_mobile_area_code");
        this.k = localBundle.getString("intent_key_mobile_num");
        this.l = a.a(localBundle.getByteArray("intent_key_mobile_pwd"), "DFG#$%^#%$RGHR(&*M<><".getBytes());
        label283: if ((this.j != null) && (this.k != null) && (this.l != null))
          a(this.j, this.k, this.l);
        return;
      }
      catch (Exception localException)
      {
        break label283;
      }
    }

    public final void onResume()
    {
      super.onResume();
      getFrameworkTemplateUI().updateInfoBarText(2131428829);
    }

    public final void onStop()
    {
      if ((this.g != null) && (this.g.isShowing()))
        this.g.dismiss();
      super.onStop();
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setTitleTextData(2131427663);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    }

    final class a extends ClickableSpan
    {
      private int a = 2131231410;

      public a()
      {
        TextPaint localTextPaint = new TextPaint();
        localTextPaint.linkColor = -1;
        updateDrawState(localTextPaint);
      }

      public final void onClick(View paramView)
      {
        switch (this.a)
        {
        default:
        case 2131231410:
        }
        while (true)
        {
          return;
          if (SyncMobileManualActivateActivity.a.c(SyncMobileManualActivateActivity.a.this).getVisibility() == 8)
            SyncMobileManualActivateActivity.a.c(SyncMobileManualActivateActivity.a.this).setVisibility(0);
          else
            SyncMobileManualActivateActivity.a.c(SyncMobileManualActivateActivity.a.this).setVisibility(8);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SyncMobileManualActivateActivity
 * JD-Core Version:    0.6.2
 */