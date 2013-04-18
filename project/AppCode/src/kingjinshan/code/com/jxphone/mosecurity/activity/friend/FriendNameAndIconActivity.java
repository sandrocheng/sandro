package com.jxphone.mosecurity.activity.friend;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.a;

public class FriendNameAndIconActivity extends Activity
  implements View.OnClickListener
{
  public static final int a = 0;
  public static final int b = 1;
  public static final String c = "flag";
  public static final int d = 6;
  private ImageView e;
  private EditText f;
  private a g;
  private TextView h;
  private Button i;
  private Button j;
  private int k = 0;

  private void a()
  {
    this.e = ((ImageView)findViewById(2131231056));
    this.f = ((EditText)findViewById(2131231053));
    this.i = ((Button)findViewById(2131231059));
    this.i.setOnClickListener(this);
    this.j = ((Button)findViewById(2131231060));
    this.j.setOnClickListener(this);
    int m;
    switch (this.g.aA())
    {
    default:
      m = 2130837830;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      String str = this.g.aF();
      this.e.setImageResource(m);
      this.f.setText(str);
      return;
      m = 2130837830;
      continue;
      m = 2130837815;
      continue;
      m = 2130837816;
    }
  }

  private void b()
  {
    GridView localGridView = (GridView)findViewById(2131231057);
    ad localad = new ad(this);
    localGridView.setAdapter(new ad(this));
    localGridView.setOnItemClickListener(new ac(this, localad));
    this.f.setSelectAllOnFocus(true);
    this.f.setInputType(128);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231059:
    case 2131231060:
    }
    while (true)
    {
      return;
      String str = this.f.getText().toString();
      if ((str == null) || (str.length() == 0))
      {
        Toast.makeText(this, getString(2131428928), 0).show();
      }
      else if (str.length() > 6)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(6);
        Toast.makeText(this, getString(2131428929, arrayOfObject), 0).show();
      }
      else
      {
        this.g.a(str, getString(2131428313));
        this.g.a(Integer.valueOf(this.k));
        finish();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903111);
    this.h = ((TextView)findViewById(2131230727));
    this.h.setText("设置私密空间名称及图标");
    this.g = a.a(this);
    this.e = ((ImageView)findViewById(2131231056));
    this.f = ((EditText)findViewById(2131231053));
    this.i = ((Button)findViewById(2131231059));
    this.i.setOnClickListener(this);
    this.j = ((Button)findViewById(2131231060));
    this.j.setOnClickListener(this);
    int m;
    switch (this.g.aA())
    {
    default:
      m = 2130837830;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      String str = this.g.aF();
      this.e.setImageResource(m);
      this.f.setText(str);
      GridView localGridView = (GridView)findViewById(2131231057);
      ad localad = new ad(this);
      localGridView.setAdapter(new ad(this));
      localGridView.setOnItemClickListener(new ac(this, localad));
      this.f.setSelectAllOnFocus(true);
      this.f.setInputType(128);
      return;
      m = 2130837830;
      continue;
      m = 2130837815;
      continue;
      m = 2130837816;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.FriendNameAndIconActivity
 * JD-Core Version:    0.6.2
 */