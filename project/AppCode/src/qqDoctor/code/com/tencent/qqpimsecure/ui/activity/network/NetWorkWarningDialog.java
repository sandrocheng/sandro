package com.tencent.qqpimsecure.ui.activity.network;

import a;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import fs;
import it;
import iu;

public class NetWorkWarningDialog extends Activity
  implements View.OnClickListener
{
  private ButtonView a;
  private ButtonView b;
  private ButtonView c;
  private ButtonView d;
  private LinearLayout e;
  private CheckBoxView f;
  private TextView g;
  private TextView h;
  private it i;
  private boolean j = false;

  public static void a(Context paramContext, float paramFloat, boolean paramBoolean)
  {
    if (new iu(QQPimApplication.a()).getTotalForMonth() != 0L)
    {
      Intent localIntent = new Intent(paramContext, NetWorkWarningDialog.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("radio", paramFloat);
      localIntent.putExtra("closeConnection", paramBoolean);
      paramContext.startActivity(localIntent);
    }
  }

  public void onClick(View paramView)
  {
    boolean bool = this.j;
    if (this.f.getChecked())
    {
      if (!bool)
        break label44;
      this.i.d();
    }
    while (true)
    {
      if (paramView == this.a)
        fs.a(this);
      finish();
      return;
      label44: this.i.b();
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.f.getChecked())
      this.f.setChecked(true);
    while (true)
    {
      return;
      this.f.setChecked(false);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903062);
    this.f = ((CheckBoxView)findViewById(2131230752));
    this.f.setChecked(false);
    this.a = ((ButtonView)findViewById(2131230781));
    this.b = ((ButtonView)findViewById(2131230763));
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
    this.g = ((TextView)findViewById(2131230755));
    this.c = ((ButtonView)findViewById(2131230782));
    this.c.setOnClickListener(this);
    this.e = ((LinearLayout)findViewById(2131230780));
    this.d = ((ButtonView)findViewById(2131230779));
    this.h = ((TextView)findViewById(2131230778));
    this.d.setOnClickListener(this);
    if (this.i == null)
      this.i = new iu(QQPimApplication.a());
    float f1 = getIntent().getFloatExtra("radio", 0.0F);
    if (getIntent().getBooleanExtra("closeConnection", false))
    {
      this.g.setText(getResources().getString(2131428526));
      this.a.setVisibility(8);
      this.b.setVisibility(8);
      this.d.setVisibility(8);
      this.e.setVisibility(0);
      this.c.setText(getString(2131429537));
      this.j = true;
    }
    while (true)
    {
      return;
      if (f1 >= 1.0F)
      {
        this.g.setText(getResources().getString(2131428527));
        this.a.setVisibility(0);
        this.b.setText(getString(2131427379));
        this.c.setVisibility(8);
        this.d.setVisibility(8);
        this.h.setVisibility(8);
        this.e.setVisibility(0);
        iu localiu = new iu(QQPimApplication.a());
        a.c(localiu.getTotalForMonth());
        String str1 = getString(2131427483);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = a.c(localiu.getTotalForMonth());
        String str2 = String.format(str1, arrayOfObject);
        this.h.setText(str2);
        this.j = true;
      }
      else if ((f1 >= 0.9F) && (f1 < 1.0F))
      {
        this.g.setText(getResources().getString(2131428525));
        this.a.setVisibility(8);
        this.b.setVisibility(8);
        this.c.setText(getString(2131427397));
        this.d.setVisibility(8);
        this.h.setVisibility(8);
        this.e.setVisibility(0);
        this.j = false;
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.network.NetWorkWarningDialog
 * JD-Core Version:    0.6.2
 */