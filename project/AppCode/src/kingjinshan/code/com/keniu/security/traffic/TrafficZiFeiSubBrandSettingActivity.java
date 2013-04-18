package com.keniu.security.traffic;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import cn.com.wali.zft.plugin;
import java.util.ArrayList;

public class TrafficZiFeiSubBrandSettingActivity extends Activity
{
  private y a;
  private Button b;
  private Button c;
  private ArrayList d;
  private String e = "";
  private String[] f;
  private RadioGroup g;
  private RadioButton h;
  private RadioButton i;
  private RadioButton j;
  private ImageView k;
  private ImageView l;

  private void a()
  {
    if (this.f.length == 1)
    {
      String str11 = this.f[0].substring(this.f[0].indexOf(","), this.f[0].length());
      String str12 = str11.substring(1, str11.length());
      this.h.setText(str12);
      this.i.setVisibility(8);
      this.j.setVisibility(8);
      this.l.setVisibility(8);
      this.k.setVisibility(8);
    }
    do
      while (true)
      {
        return;
        if (this.f.length != 2)
          break;
        String str7 = this.f[0].substring(this.f[0].indexOf(","), this.f[0].length());
        String str8 = str7.substring(1, str7.length());
        String str9 = this.f[1].substring(this.f[1].indexOf(","), this.f[1].length());
        String str10 = str9.substring(1, str9.length());
        this.h.setText(str8);
        this.i.setVisibility(0);
        this.i.setText(str10);
        this.j.setVisibility(8);
        this.l.setVisibility(0);
        this.k.setVisibility(8);
        if (!TextUtils.isEmpty(this.a.m))
        {
          if (this.a.m.equals(this.f[0]))
            this.h.setChecked(true);
          while (!this.a.m.equals(this.f[1]))
          {
            this.e = this.f[0];
            break;
          }
          this.i.setChecked(true);
          this.e = this.f[1];
        }
      }
    while (this.f.length != 3);
    String str1 = this.f[0].substring(this.f[0].indexOf(","), this.f[0].length());
    String str2 = str1.substring(1, str1.length());
    String str3 = this.f[1].substring(this.f[1].indexOf(","), this.f[1].length());
    String str4 = str3.substring(1, str3.length());
    String str5 = this.f[2].substring(this.f[2].indexOf(","), this.f[2].length());
    String str6 = str5.substring(1, str5.length());
    this.h.setText(str2);
    this.i.setVisibility(0);
    this.i.setText(str4);
    this.j.setVisibility(0);
    this.j.setText(str6);
    if (!TextUtils.isEmpty(this.a.m))
    {
      if (!this.a.m.equals(this.f[0]))
        break label586;
      this.h.setChecked(true);
      label557: this.e = this.f[0];
    }
    while (true)
    {
      this.k.setVisibility(0);
      this.l.setVisibility(0);
      break;
      label586: if (this.a.m.equals(this.f[1]))
      {
        this.i.setChecked(true);
        this.e = this.f[1];
      }
      else
      {
        if (!this.a.m.equals(this.f[2]))
          break label557;
        this.j.setChecked(true);
        this.e = this.f[2];
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903324);
    this.a = y.a(this);
    this.d = plugin.getbrands(String.valueOf(this.a.n).split(",")[0]);
    this.f = ((String[])this.d.toArray(new String[0]));
    this.b = ((Button)findViewById(2131231735));
    this.c = ((Button)findViewById(2131231736));
    this.g = ((RadioGroup)findViewById(2131231648));
    this.h = ((RadioButton)findViewById(2131231649));
    this.i = ((RadioButton)findViewById(2131231650));
    this.j = ((RadioButton)findViewById(2131231651));
    this.l = ((ImageView)findViewById(2131231560));
    this.k = ((ImageView)findViewById(2131231562));
    this.g.setOnCheckedChangeListener(new eu(this));
    this.b.setOnClickListener(new ev(this));
    this.c.setOnClickListener(new ew(this));
    if (this.f.length == 1)
    {
      String str11 = this.f[0].substring(this.f[0].indexOf(","), this.f[0].length());
      String str12 = str11.substring(1, str11.length());
      this.h.setText(str12);
      this.i.setVisibility(8);
      this.j.setVisibility(8);
      this.l.setVisibility(8);
      this.k.setVisibility(8);
    }
    do
      while (true)
      {
        return;
        if (this.f.length != 2)
          break;
        String str7 = this.f[0].substring(this.f[0].indexOf(","), this.f[0].length());
        String str8 = str7.substring(1, str7.length());
        String str9 = this.f[1].substring(this.f[1].indexOf(","), this.f[1].length());
        String str10 = str9.substring(1, str9.length());
        this.h.setText(str8);
        this.i.setVisibility(0);
        this.i.setText(str10);
        this.j.setVisibility(8);
        this.l.setVisibility(0);
        this.k.setVisibility(8);
        if (!TextUtils.isEmpty(this.a.m))
        {
          if (this.a.m.equals(this.f[0]))
            this.h.setChecked(true);
          while (!this.a.m.equals(this.f[1]))
          {
            this.e = this.f[0];
            break;
          }
          this.i.setChecked(true);
          this.e = this.f[1];
        }
      }
    while (this.f.length != 3);
    String str1 = this.f[0].substring(this.f[0].indexOf(","), this.f[0].length());
    String str2 = str1.substring(1, str1.length());
    String str3 = this.f[1].substring(this.f[1].indexOf(","), this.f[1].length());
    String str4 = str3.substring(1, str3.length());
    String str5 = this.f[2].substring(this.f[2].indexOf(","), this.f[2].length());
    String str6 = str5.substring(1, str5.length());
    this.h.setText(str2);
    this.i.setVisibility(0);
    this.i.setText(str4);
    this.j.setVisibility(0);
    this.j.setText(str6);
    if (!TextUtils.isEmpty(this.a.m))
    {
      if (!this.a.m.equals(this.f[0]))
        break label807;
      this.h.setChecked(true);
      label778: this.e = this.f[0];
    }
    while (true)
    {
      this.k.setVisibility(0);
      this.l.setVisibility(0);
      break;
      label807: if (this.a.m.equals(this.f[1]))
      {
        this.i.setChecked(true);
        this.e = this.f[1];
      }
      else
      {
        if (!this.a.m.equals(this.f[2]))
          break label778;
        this.j.setChecked(true);
        this.e = this.f[2];
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficZiFeiSubBrandSettingActivity
 * JD-Core Version:    0.6.2
 */