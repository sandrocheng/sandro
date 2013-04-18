package com.keniu.security.traffic;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;
import java.util.Date;

public class TrafficSmsShowActivity extends Activity
  implements View.OnClickListener
{
  private EditText a;
  private TextView b;
  private RadioGroup c;
  private Button d;
  private Button e;

  private void a()
  {
    TextView localTextView1 = (TextView)findViewById(2131231692);
    TextView localTextView2 = (TextView)findViewById(2131231693);
    String str1 = getIntent().getStringExtra("address");
    String str2 = getIntent().getStringExtra("body");
    localTextView1.setText(getString(2131428232, new Object[] { str1 }));
    localTextView2.setText(str2);
    this.a = ((EditText)findViewById(2131231694));
    this.b = ((TextView)findViewById(2131231695));
    this.c = ((RadioGroup)findViewById(2131231696));
    this.b.setText("M");
    this.c.check(this.c.getChildAt(1).getId());
    this.c.setOnCheckedChangeListener(new cs(this));
    this.d = ((Button)findViewById(2131231700));
    this.d.setOnClickListener(this);
    this.e = ((Button)findViewById(2131231701));
    this.e.setOnClickListener(this);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231700:
    case 2131231701:
    }
    while (true)
    {
      return;
      if (TextUtils.isEmpty(this.a.getText()))
      {
        Toast.makeText(this, 2131428014, 1).show();
      }
      else
      {
        float f = Float.valueOf(this.a.getText().toString()).floatValue();
        y localy = y.a(this);
        if (this.c.getCheckedRadioButtonId() == 2131231698)
          localy.i = (()(1024.0F * (1024.0F * (f * 1024.0F)) / 1024.0F));
        while (true)
        {
          localy.a(this, 2131428296);
          Date localDate = new Date();
          long l = localy.a(localDate);
          dd.a(this, localy.i, l, localDate.getTime(), false);
          Toast.makeText(this, 2131428066, 1).show();
          finish();
          a.c(this, "7");
          startActivity(new Intent(this, TrafficTabActivity.class));
          break;
          if (this.c.getCheckedRadioButtonId() == 2131231697)
            localy.i = (()(1024.0F * (1024.0F * (f * 1024.0F)) / 1024.0F / 1024.0F));
          else
            localy.i = (()(1024.0F * (1024.0F * (1024.0F * (f * 1024.0F))) / 1024.0F));
        }
        finish();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903312);
    a.d(this, "5");
    TextView localTextView1 = (TextView)findViewById(2131231692);
    TextView localTextView2 = (TextView)findViewById(2131231693);
    String str1 = getIntent().getStringExtra("address");
    String str2 = getIntent().getStringExtra("body");
    localTextView1.setText(getString(2131428232, new Object[] { str1 }));
    localTextView2.setText(str2);
    this.a = ((EditText)findViewById(2131231694));
    this.b = ((TextView)findViewById(2131231695));
    this.c = ((RadioGroup)findViewById(2131231696));
    this.b.setText("M");
    this.c.check(this.c.getChildAt(1).getId());
    this.c.setOnCheckedChangeListener(new cs(this));
    this.d = ((Button)findViewById(2131231700));
    this.d.setOnClickListener(this);
    this.e = ((Button)findViewById(2131231701));
    this.e.setOnClickListener(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficSmsShowActivity
 * JD-Core Version:    0.6.2
 */