package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.keniu.security.util.aq;

public class IPDialTypeActivity extends Activity
  implements View.OnClickListener
{
  private static final int b = 1;
  private static final int c = 2;
  private RadioGroup a;

  private Dialog a()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131427865));
    localaq.b(2131427482);
    localaq.a(getString(2131427541), new bx(this));
    localaq.b(getString(2131427542), new by(this));
    return localaq.c();
  }

  private Dialog b()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131427865));
    localaq.b(2131427481);
    localaq.b(getString(2131427483), new bz(this));
    return localaq.c();
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131231080)
    {
      dc.c(getString(2131427502));
      finish();
    }
    while (true)
    {
      return;
      if (paramView.getId() == 2131231078)
      {
        dc.c(getString(2131427500));
        startActivity(new Intent(this, IpProvinceCityActivity.class));
        finish();
      }
      else if (paramView.getId() == 2131231079)
      {
        showDialog(2);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903120);
    ((TextView)findViewById(2131230727)).setText(getString(2131427447));
    this.a = ((RadioGroup)findViewById(2131231077));
    String str = dc.b(getString(2131427502));
    if (str.equals(getString(2131427501)))
      this.a.check(2131231079);
    while (true)
    {
      ((RadioButton)findViewById(2131231080)).setOnClickListener(this);
      ((RadioButton)findViewById(2131231078)).setOnClickListener(this);
      ((RadioButton)findViewById(2131231079)).setOnClickListener(this);
      return;
      if (str.equals(getString(2131427500)))
        this.a.check(2131231078);
      else
        this.a.check(2131231080);
    }
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    if (paramInt == 1)
    {
      aq localaq1 = new aq(this, (byte)0);
      localaq1.a(getString(2131427865));
      localaq1.b(2131427481);
      localaq1.b(getString(2131427483), new bz(this));
      localObject = localaq1.c();
    }
    while (true)
    {
      return localObject;
      if (paramInt == 2)
      {
        aq localaq2 = new aq(this, (byte)0);
        localaq2.a(getString(2131427865));
        localaq2.b(2131427482);
        localaq2.a(getString(2131427541), new bx(this));
        localaq2.b(getString(2131427542), new by(this));
        localObject = localaq2.c();
      }
      else
      {
        localObject = super.onCreateDialog(paramInt);
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) || (paramInt == 3))
    {
      dc.c(getString(2131427502));
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    showDialog(1);
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.IPDialTypeActivity
 * JD-Core Version:    0.6.2
 */