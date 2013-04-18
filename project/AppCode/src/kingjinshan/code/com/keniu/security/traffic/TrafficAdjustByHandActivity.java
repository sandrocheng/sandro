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
import com.keniu.security.util.at;
import java.math.BigDecimal;
import java.util.Date;

public class TrafficAdjustByHandActivity extends Activity
  implements View.OnClickListener
{
  private EditText a;
  private TextView b;
  private RadioGroup c;
  private EditText d;
  private EditText e;
  private Button f;
  private Button g;
  private Button h;

  private void a()
  {
    this.a = ((EditText)findViewById(2131231635));
    this.b = ((TextView)findViewById(2131231636));
    this.c = ((RadioGroup)findViewById(2131231638));
    this.d = ((EditText)findViewById(2131231641));
    this.e = ((EditText)findViewById(2131231642));
    this.f = ((Button)findViewById(2131231643));
    this.f.setOnClickListener(this);
    this.g = ((Button)findViewById(2131231645));
    this.g.setOnClickListener(this);
    this.h = ((Button)findViewById(2131231646));
    this.h.setOnClickListener(this);
    this.b.setText("M");
    this.c.check(this.c.getChildAt(0).getId());
    this.c.setOnCheckedChangeListener(new w(this));
    this.d.setText(as.a(this));
    this.e.setText(as.b(this));
    long l1 = getIntent().getLongExtra("month_used", 0L);
    if (l1 != 0L)
    {
      long l2 = l1 % 1048576L;
      long l3 = l2 * 10L % 1048576L;
      long l4 = l3 * 10L % 1048576L;
      BigDecimal localBigDecimal = new BigDecimal(String.valueOf(l1 / 1048576L) + "." + String.valueOf(l2 * 10L / 1048576L) + String.valueOf(l3 * 10L / 1048576L) + String.valueOf(l4 * 10L / 1048576L)).setScale(2, 4);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localBigDecimal.toString();
      String str = String.format("%s", arrayOfObject);
      this.a.setText(str);
      this.a.selectAll();
    }
  }

  private void a(String paramString1, String paramString2)
  {
    if (!com.ijinshan.kinghelper.firewall.dd.j());
    while (true)
    {
      return;
      if (at.b(this))
      {
        y.a(this);
        if (y.b())
        {
          a locala = new a(paramString1, paramString2, this);
          com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, locala, 2);
          locala.c();
        }
      }
    }
  }

  public void onClick(View paramView)
  {
    y localy;
    switch (paramView.getId())
    {
    case 2131231644:
    default:
    case 2131231643:
    case 2131231645:
      while (true)
      {
        return;
        if ((TextUtils.isEmpty(this.d.getText())) || (TextUtils.isEmpty(this.e.getText())))
        {
          Toast.makeText(this, 2131428011, 1).show();
        }
        else
        {
          com.jxphone.mosecurity.a.a.d(this, "2");
          String str1 = this.d.getText().toString();
          String str2 = this.e.getText().toString();
          as.a(this, str1, str2);
          if (as.a())
          {
            Toast.makeText(this, 2131428070, 1).show();
            if ((com.ijinshan.kinghelper.firewall.dd.j()) && (at.b(this)))
            {
              y.a(this);
              if (y.b())
              {
                a locala = new a(str1, str2, this);
                com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, locala, 2);
                locala.c();
                continue;
                if (!TextUtils.isEmpty(this.a.getText()))
                  break;
                Toast.makeText(this, 2131428015, 1).show();
              }
            }
          }
        }
      }
      localy = y.a(this);
      if (!this.b.getText().toString().equals("M"))
        break;
    case 2131231646:
    }
    for (localy.i = (()(1024.0F * (1024.0F * (1024.0F * Float.valueOf(this.a.getText().toString()).floatValue())) / 1024.0F)); ; localy.i = (()(1024.0F * (1024.0F * (1024.0F * (1024.0F * Float.valueOf(this.a.getText().toString()).floatValue()))) / 1024.0F)))
    {
      localy.a(this, 2131428296);
      Date localDate = new Date();
      long l = localy.a(localDate);
      dd.a(this, localy.i, l, localDate.getTime(), false);
      Toast.makeText(this, 2131428066, 1).show();
      finish();
      break;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903299);
    this.a = ((EditText)findViewById(2131231635));
    this.b = ((TextView)findViewById(2131231636));
    this.c = ((RadioGroup)findViewById(2131231638));
    this.d = ((EditText)findViewById(2131231641));
    this.e = ((EditText)findViewById(2131231642));
    this.f = ((Button)findViewById(2131231643));
    this.f.setOnClickListener(this);
    this.g = ((Button)findViewById(2131231645));
    this.g.setOnClickListener(this);
    this.h = ((Button)findViewById(2131231646));
    this.h.setOnClickListener(this);
    this.b.setText("M");
    this.c.check(this.c.getChildAt(0).getId());
    this.c.setOnCheckedChangeListener(new w(this));
    this.d.setText(as.a(this));
    this.e.setText(as.b(this));
    long l1 = getIntent().getLongExtra("month_used", 0L);
    if (l1 != 0L)
    {
      long l2 = l1 % 1048576L;
      long l3 = 10L * l2 % 1048576L;
      long l4 = 10L * l3 % 1048576L;
      BigDecimal localBigDecimal = new BigDecimal(String.valueOf(l1 / 1048576L) + "." + String.valueOf(l2 * 10L / 1048576L) + String.valueOf(10L * l3 / 1048576L) + String.valueOf(10L * l4 / 1048576L)).setScale(2, 4);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localBigDecimal.toString();
      String str = String.format("%s", arrayOfObject);
      this.a.setText(str);
      this.a.selectAll();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficAdjustByHandActivity
 * JD-Core Version:    0.6.2
 */