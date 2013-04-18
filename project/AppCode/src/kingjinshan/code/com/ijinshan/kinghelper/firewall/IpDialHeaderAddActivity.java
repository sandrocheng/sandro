package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.keniu.security.a;

public class IpDialHeaderAddActivity extends Activity
  implements View.OnClickListener
{
  private RadioGroup a;
  private EditText b;
  private Button c;
  private String[] d;

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131231070)
    {
      dc.j("未选择任何IP号码");
      a.a(this).W();
      finish();
    }
    while (true)
    {
      return;
      if (paramView.getId() == 2131231071)
      {
        dc.j(this.d[0]);
        a.a(this).W();
        finish();
      }
      else if (paramView.getId() == 2131231072)
      {
        dc.j(this.d[1]);
        a.a(this).W();
        finish();
      }
      else if (paramView.getId() == 2131231073)
      {
        this.b.setVisibility(0);
        this.c.setVisibility(0);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903117);
    ((TextView)findViewById(2131230727)).setText(getString(2131427449));
    String str1 = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
    this.d = new String[2];
    String str2;
    if (str1 != null)
      if ((str1.startsWith("46000")) || (str1.startsWith("46002")))
      {
        this.d[0] = "17951";
        this.d[1] = "12593";
        this.a = ((RadioGroup)findViewById(2131231069));
        str2 = dc.k("未选择任何IP号码");
        if (!str2.equals(this.d[0]))
          break label361;
        this.a.check(2131231071);
      }
    while (true)
    {
      ((RadioButton)findViewById(2131231070)).setOnClickListener(this);
      ((RadioButton)findViewById(2131231071)).setOnClickListener(this);
      ((RadioButton)findViewById(2131231071)).setText(this.d[0]);
      ((RadioButton)findViewById(2131231072)).setOnClickListener(this);
      ((RadioButton)findViewById(2131231072)).setText(this.d[1]);
      ((RadioButton)findViewById(2131231073)).setOnClickListener(this);
      this.b = ((EditText)findViewById(2131231074));
      this.c = ((Button)findViewById(2131231075));
      this.c.setOnClickListener(new ca(this));
      return;
      if (str1.startsWith("46001"))
      {
        this.d[0] = "10193";
        this.d[1] = "17911";
        break;
      }
      if (str1.startsWith("46003"))
      {
        this.d[0] = "17901";
        this.d[1] = "11808";
        break;
      }
      this.d[0] = "17951";
      this.d[1] = "12593";
      break;
      this.d[0] = "17951";
      this.d[1] = "12593";
      break;
      label361: if (str2.equals(this.d[1]))
        this.a.check(2131231072);
      else
        this.a.check(2131231070);
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.IpDialHeaderAddActivity
 * JD-Core Version:    0.6.2
 */