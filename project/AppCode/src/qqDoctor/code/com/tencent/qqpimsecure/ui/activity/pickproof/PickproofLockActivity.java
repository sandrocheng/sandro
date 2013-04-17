package com.tencent.qqpimsecure.ui.activity.pickproof;

import ahl;
import ahm;
import ahn;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.EditText;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import ft;
import ho;
import java.util.Timer;
import java.util.TimerTask;

public class PickproofLockActivity extends Activity
{
  private Timer a = null;
  private a b = new a((byte)0);
  private boolean c = false;
  private boolean d = false;
  private boolean e = true;
  private boolean f = false;
  private boolean g = false;
  private EditText h;
  private CheckBoxView i;
  private ButtonView j;
  private ButtonView k;
  private AntitheftManager l;
  private ho m;

  private void b()
  {
    String str1 = ft.c(this);
    TextView localTextView = (TextView)findViewById(2131231083);
    SpannableStringBuilder localSpannableStringBuilder;
    if ((str1 == null) || (str1.length() <= 0))
    {
      String str2 = getString(2131429371);
      localSpannableStringBuilder = new SpannableStringBuilder(str2);
      localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-65536), 0, str2.length(), 34);
    }
    while (true)
    {
      localTextView.setText(localSpannableStringBuilder);
      return;
      if (this.f)
      {
        String str4 = getString(2131429372);
        localSpannableStringBuilder = new SpannableStringBuilder(str4);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-6710887), 0, str4.length(), 34);
      }
      else
      {
        String str3 = getString(2131429370);
        localSpannableStringBuilder = new SpannableStringBuilder(str3);
        localSpannableStringBuilder.setSpan(new ForegroundColorSpan(-6710887), 0, str3.length(), 34);
      }
    }
  }

  public final void a()
  {
    if (this.a != null)
    {
      this.a.cancel();
      this.a.purge();
      this.a = null;
      this.c = false;
      this.e = false;
    }
    if (this.b != null)
    {
      this.b.cancel();
      this.b = null;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    getWindow().setSoftInputMode(3);
    this.g = getIntent().getBooleanExtra("sim_change", false);
    this.m = ho.a();
    this.m.b = false;
    this.l = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
    this.c = this.m.bG();
    this.d = false;
    if (this.g)
    {
      this.a = new Timer();
      this.a.schedule(this.b, 10L, 1000L);
    }
    String str1 = this.l.getBindQQNum();
    boolean bool;
    if ((str1 != null) && (!"".equals(str1)))
    {
      bool = true;
      this.f = bool;
      setContentView(2130903169);
      this.h = ((EditText)findViewById(2131231084));
      this.i = ((CheckBoxView)findViewById(2131231085));
      this.j = ((ButtonView)findViewById(2131231087));
      this.k = ((ButtonView)findViewById(2131231088));
      this.j.setOnClickListener(new ahl(this));
      if (this.f)
        break label275;
      this.k.setOnClickListener(new ahm(this));
    }
    while (true)
    {
      this.i.setClickListener(new ahn(this));
      b();
      return;
      bool = false;
      break;
      label275: LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.j.getLayoutParams();
      localLayoutParams.width = -1;
      localLayoutParams.leftMargin = ((int)(0.5F + 20.0F * getResources().getDisplayMetrics().density));
      localLayoutParams.rightMargin = ((int)(0.5F + 20.0F * getResources().getDisplayMetrics().density));
      this.j.setLayoutParams(localLayoutParams);
      this.h.setHint(2131429471);
      this.k.setVisibility(8);
      ((TextView)findViewById(2131231083)).setText(2131429372);
      this.i.setVisibility(8);
      ((TextView)findViewById(2131231086)).setVisibility(8);
      EditText localEditText = this.h;
      String str2 = getString(2131429459);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.l.getBindQQNum().substring(0, 2);
      localEditText.setHint(String.format(str2, arrayOfObject));
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (((paramInt == 4) || (paramInt == 3)) && (this.g));
    for (boolean bool = false; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (((paramInt == 4) || (paramInt == 3)) && (this.g));
    for (boolean bool = false; ; bool = super.onKeyUp(paramInt, paramKeyEvent))
      return bool;
  }

  public void onResume()
  {
    super.onResume();
  }

  final class a extends TimerTask
  {
    private a()
    {
    }

    public final void run()
    {
      if (PickproofLockActivity.e(PickproofLockActivity.this).b == true)
      {
        PickproofLockActivity.this.a();
        PickproofLockActivity.this.finish();
      }
      while (true)
      {
        return;
        if (PickproofLockActivity.g(PickproofLockActivity.this))
        {
          if ((!PickproofLockActivity.this.hasWindowFocus()) && (!PickproofLockActivity.e(PickproofLockActivity.this).b))
          {
            Intent localIntent = new Intent(QQPimApplication.a(), PickproofLockActivity.class);
            localIntent.setFlags(268435456);
            QQPimApplication.a().startActivity(localIntent);
          }
        }
        else
        {
          PickproofLockActivity.this.a();
          PickproofLockActivity.e(PickproofLockActivity.this).b = true;
          PickproofLockActivity.this.finish();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.pickproof.PickproofLockActivity
 * JD-Core Version:    0.6.2
 */