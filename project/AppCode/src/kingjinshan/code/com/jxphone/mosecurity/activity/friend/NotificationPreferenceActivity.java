package com.jxphone.mosecurity.activity.friend;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import com.keniu.security.a;

public class NotificationPreferenceActivity extends Activity
{
  public static final int a = 0;
  public static final int b = 1;
  public static final String c = "flag";
  private ImageView d;
  private EditText e;
  private int f;
  private a g;
  private TextView h;

  private void a()
  {
    switch (this.f)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      this.h.setText(getString(2131428943));
      continue;
      this.h.setText(getString(2131428957));
    }
  }

  private void b()
  {
    this.d = ((ImageView)findViewById(2131231046));
    this.e = ((EditText)findViewById(2131231044));
    String str2;
    int j;
    switch (this.f)
    {
    default:
      return;
    case 0:
      int k = this.g.aC();
      str2 = this.g.aB();
      j = k;
    case 1:
    }
    String str1;
    for (Object localObject = str2; ; localObject = str1)
    {
      this.d.setImageResource(j);
      this.e.setText((CharSequence)localObject);
      break;
      int i = this.g.aE();
      str1 = this.g.aD();
      j = i;
    }
  }

  private void c()
  {
    GridView localGridView = (GridView)findViewById(2131231047);
    bc localbc = new bc(this);
    localGridView.setAdapter(new bc(this));
    localGridView.setOnItemClickListener(new ba(this, localbc));
    this.e.addTextChangedListener(new bb(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903108);
    this.h = ((TextView)findViewById(2131230727));
    this.g = a.a(this);
    this.f = getIntent().getIntExtra("flag", -1);
    if (this.f == -1)
    {
      finish();
      label64: return;
    }
    switch (this.f)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      this.d = ((ImageView)findViewById(2131231046));
      this.e = ((EditText)findViewById(2131231044));
      switch (this.f)
      {
      default:
        GridView localGridView = (GridView)findViewById(2131231047);
        bc localbc = new bc(this);
        localGridView.setAdapter(new bc(this));
        localGridView.setOnItemClickListener(new ba(this, localbc));
        this.e.addTextChangedListener(new bb(this));
        break label64;
        this.h.setText(getString(2131428943));
        continue;
        this.h.setText(getString(2131428957));
      case 0:
      case 1:
      }
    }
    int k = this.g.aC();
    String str2 = this.g.aB();
    int j = k;
    String str1;
    for (Object localObject = str2; ; localObject = str1)
    {
      this.d.setImageResource(j);
      this.e.setText((CharSequence)localObject);
      break;
      int i = this.g.aE();
      str1 = this.g.aD();
      j = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.NotificationPreferenceActivity
 * JD-Core Version:    0.6.2
 */