package com.keniu.security.traffic;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.SafeViewFlipper;
import com.keniu.security.util.ad;
import com.keniu.security.util.ae;
import com.keniu.security.util.ax;
import java.util.Date;

public class TrafficUsedSettingAcvitiy extends Activity
  implements View.OnClickListener, RadioGroup.OnCheckedChangeListener
{
  private SafeViewFlipper a;
  private RadioGroup b;
  private RadioGroup c;
  private long d;
  private EditText e;
  private EditText f;
  private EditText g;

  private void a()
  {
    this.d = getIntent().getLongExtra("monthUsed", 0L);
    this.a = ((SafeViewFlipper)findViewById(2131231724));
    this.a.setDisplayedChild(0);
    this.b = ((RadioGroup)findViewById(2131231491));
    this.b.check(2131231722);
    this.b.setOnCheckedChangeListener(this);
    ((TextView)findViewById(2131231629)).setText(Html.fromHtml(getString(2131428126) + ad.a(ax.c(this.d), ae.a)));
    this.e = ((EditText)findViewById(2131231635));
    this.f = ((EditText)findViewById(2131231632));
    this.f.setText(as.b(this));
    this.g = ((EditText)findViewById(2131230735));
    this.g.setText(as.a(this));
    this.c = ((RadioGroup)findViewById(2131231638));
    this.c.check(2131231639);
    findViewById(2131231725).setOnClickListener(this);
    findViewById(2131231726).setOnClickListener(this);
    findViewById(2131231633).setOnClickListener(this);
    findViewById(2131231630).setOnClickListener(this);
  }

  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 2131231722:
    case 2131231723:
    }
    while (true)
    {
      return;
      this.a.setDisplayedChild(0);
      continue;
      this.a.setDisplayedChild(1);
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231726:
    case 2131231725:
    case 2131231633:
    case 2131231630:
    }
    while (true)
    {
      return;
      finish();
      continue;
      if (TextUtils.isEmpty(this.e.getText()))
      {
        Toast.makeText(this, 2131428015, 1).show();
      }
      else
      {
        y localy = y.a(this);
        if (this.c.getCheckedRadioButtonId() == 2131231639);
        for (localy.i = (()(1024.0F * (1024.0F * (1024.0F * Float.valueOf(this.e.getText().toString()).floatValue())) / 1024.0F)); ; localy.i = (()(1024.0F * (1024.0F * (1024.0F * (1024.0F * Float.valueOf(this.e.getText().toString()).floatValue()))) / 1024.0F)))
        {
          localy.a(this, 2131428296);
          Date localDate = new Date();
          long l = localy.a(localDate);
          dd.a(this, localy.i, l, localDate.getTime(), false);
          setResult(-1);
          finish();
          break;
        }
        if ((TextUtils.isEmpty(this.g.getText())) || (TextUtils.isEmpty(this.f.getText())))
        {
          Toast.makeText(this, 2131428011, 1).show();
        }
        else
        {
          a.d(this, "2");
          as.a(this, this.g.getText().toString(), this.f.getText().toString());
          as.a();
          Toast.makeText(this, 2131428070, 1).show();
          continue;
          Intent localIntent = new Intent();
          localIntent.setClass(this, TrafficTabActivity.class);
          localIntent.putExtra("fromTrafficUsedSettingActivity", true);
          startActivity(localIntent);
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903316);
    this.d = getIntent().getLongExtra("monthUsed", 0L);
    this.a = ((SafeViewFlipper)findViewById(2131231724));
    this.a.setDisplayedChild(0);
    this.b = ((RadioGroup)findViewById(2131231491));
    this.b.check(2131231722);
    this.b.setOnCheckedChangeListener(this);
    ((TextView)findViewById(2131231629)).setText(Html.fromHtml(getString(2131428126) + ad.a(ax.c(this.d), ae.a)));
    this.e = ((EditText)findViewById(2131231635));
    this.f = ((EditText)findViewById(2131231632));
    this.f.setText(as.b(this));
    this.g = ((EditText)findViewById(2131230735));
    this.g.setText(as.a(this));
    this.c = ((RadioGroup)findViewById(2131231638));
    this.c.check(2131231639);
    findViewById(2131231725).setOnClickListener(this);
    findViewById(2131231726).setOnClickListener(this);
    findViewById(2131231633).setOnClickListener(this);
    findViewById(2131231630).setOnClickListener(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficUsedSettingAcvitiy
 * JD-Core Version:    0.6.2
 */