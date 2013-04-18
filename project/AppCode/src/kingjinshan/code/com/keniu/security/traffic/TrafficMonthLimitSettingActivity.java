package com.keniu.security.traffic;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.sync.l;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.ax;

public class TrafficMonthLimitSettingActivity extends Activity
  implements View.OnClickListener
{
  private LinearLayout a;
  private EditText b;
  private Button c;
  private Button d;
  private Button e;
  private TextView f;
  private RadioGroup g;
  private EditText h;

  private void a()
  {
    this.a = ((LinearLayout)findViewById(2131231644));
    this.a.setVisibility(0);
    this.b = ((EditText)findViewById(2131231683));
    y localy = y.a(this);
    EditText localEditText = this.b;
    if (localy.d == 0L);
    for (String str = ""; ; str = ax.a(localy.d))
    {
      localEditText.setText(str);
      this.c = ((Button)findViewById(2131231685));
      this.c.setOnClickListener(this);
      this.d = ((Button)findViewById(2131231687));
      this.d.setOnClickListener(this);
      this.e = ((Button)findViewById(2131231686));
      this.e.setOnClickListener(this);
      this.f = ((TextView)findViewById(2131231684));
      this.g = ((RadioGroup)findViewById(2131231077));
      this.f.setText("M");
      this.g.check(this.g.getChildAt(0).getId());
      this.g.setOnCheckedChangeListener(new bs(this));
      return;
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231687:
    case 2131231686:
    case 2131231685:
    }
    while (true)
    {
      return;
      finish();
      continue;
      if (TextUtils.isEmpty(this.b.getText()))
      {
        Toast.makeText(this, 2131428013, 1).show();
      }
      else
      {
        float f1 = Float.valueOf(this.b.getText().toString()).floatValue();
        y localy = y.a(this);
        if (this.f.getText().equals("M"));
        for (float f2 = 1024.0F * (f1 * 1024.0F); ; f2 = 1024.0F * (1024.0F * (f1 * 1024.0F)))
        {
          localy.d = (()f2);
          localy.a(this, 2131428291);
          dd.a(this, null);
          setResult(-1);
          l.a(this);
          finish();
          break;
        }
        View localView = getLayoutInflater().inflate(2130903080, null);
        this.h = ((EditText)localView.findViewById(2131230956));
        this.h.setText(as.a(this));
        aq localaq = new aq(this, (byte)0);
        localaq.a(2131428020);
        localaq.a(localView);
        localaq.a(2131428022, new bt(this));
        localaq.b(2131428266, null);
        localaq.c().show();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903307);
    this.a = ((LinearLayout)findViewById(2131231644));
    this.a.setVisibility(0);
    this.b = ((EditText)findViewById(2131231683));
    y localy = y.a(this);
    EditText localEditText = this.b;
    if (localy.d == 0L);
    for (String str = ""; ; str = ax.a(localy.d))
    {
      localEditText.setText(str);
      this.c = ((Button)findViewById(2131231685));
      this.c.setOnClickListener(this);
      this.d = ((Button)findViewById(2131231687));
      this.d.setOnClickListener(this);
      this.e = ((Button)findViewById(2131231686));
      this.e.setOnClickListener(this);
      this.f = ((TextView)findViewById(2131231684));
      this.g = ((RadioGroup)findViewById(2131231077));
      this.f.setText("M");
      this.g.check(this.g.getChildAt(0).getId());
      this.g.setOnCheckedChangeListener(new bs(this));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficMonthLimitSettingActivity
 * JD-Core Version:    0.6.2
 */