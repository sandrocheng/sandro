package com.keniu.security.traffic;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import cn.com.wali.zft.plugin;
import com.keniu.security.util.aw;
import java.util.ArrayList;

public class TrafficZiFeiSubOperatorSettingActivity extends Activity
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
  private aw k = new aw();
  private RadioGroup.OnCheckedChangeListener l = new ez(this);

  private void a()
  {
    String str1 = this.f[0].substring(this.f[0].indexOf(","), this.f[0].length());
    String str2 = str1.substring(1, str1.length());
    String str3 = this.f[1].substring(this.f[1].indexOf(","), this.f[1].length());
    String str4 = str3.substring(1, str3.length());
    String str5 = this.f[2].substring(this.f[2].indexOf(","), this.f[2].length());
    String str6 = str5.substring(1, str5.length());
    this.h.setText(str2);
    this.i.setText(str4);
    this.j.setText(str6);
    if (!TextUtils.isEmpty(this.a.n))
    {
      if (!this.a.n.equals(this.f[0]))
        break label202;
      this.h.setChecked(true);
      this.e = this.f[0];
    }
    while (true)
    {
      return;
      label202: if (this.a.n.equals(this.f[1]))
      {
        this.i.setChecked(true);
        this.e = this.f[1];
      }
      else
      {
        if (!this.a.n.equals(this.f[2]))
          break;
        this.j.setChecked(true);
        this.e = this.f[2];
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903325);
    this.a = y.a(this);
    this.d = plugin.getcarries();
    this.f = ((String[])this.d.toArray(new String[this.d.size()]));
    this.b = ((Button)findViewById(2131231735));
    this.c = ((Button)findViewById(2131231736));
    this.g = ((RadioGroup)findViewById(2131231652));
    this.h = ((RadioButton)findViewById(2131231653));
    this.i = ((RadioButton)findViewById(2131231654));
    this.j = ((RadioButton)findViewById(2131231655));
    this.g.setOnCheckedChangeListener(this.l);
    this.b.setOnClickListener(new ex(this));
    this.c.setOnClickListener(new ey(this));
    String str1 = this.f[0].substring(this.f[0].indexOf(","), this.f[0].length());
    String str2 = str1.substring(1, str1.length());
    String str3 = this.f[1].substring(this.f[1].indexOf(","), this.f[1].length());
    String str4 = str3.substring(1, str3.length());
    String str5 = this.f[2].substring(this.f[2].indexOf(","), this.f[2].length());
    String str6 = str5.substring(1, str5.length());
    this.h.setText(str2);
    this.i.setText(str4);
    this.j.setText(str6);
    if (!TextUtils.isEmpty(this.a.n))
    {
      if (!this.a.n.equals(this.f[0]))
        break label382;
      this.h.setChecked(true);
      this.e = this.f[0];
    }
    while (true)
    {
      return;
      label382: if (this.a.n.equals(this.f[1]))
      {
        this.i.setChecked(true);
        this.e = this.f[1];
      }
      else
      {
        if (!this.a.n.equals(this.f[2]))
          break;
        this.j.setChecked(true);
        this.e = this.f[2];
      }
    }
  }

  protected void onPause()
  {
    super.onPause();
    if (this.k != null)
      this.k.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficZiFeiSubOperatorSettingActivity
 * JD-Core Version:    0.6.2
 */