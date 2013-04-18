package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.a.g;

public class UserBlackAddByNumbersActivity extends Activity
  implements View.OnClickListener
{
  public static final String a = "UserWhiteBlackAddActivity_rule";
  private EditText b;
  private Spinner c;
  private Button d;
  private Button e;
  private TextView f;
  private g g;

  private boolean a()
  {
    boolean bool;
    if (TextUtils.isEmpty(this.b.getText()))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = getString(2131427578);
      Toast.makeText(this, getString(2131427546, arrayOfObject), 0).show();
      this.b.requestFocus();
      bool = false;
      return bool;
    }
    e.a(this);
    String str1 = i.a(this.b.getText().toString());
    if (this.g != null);
    for (long l1 = this.g.i; ; l1 = -1L)
    {
      if (!e.b(str1, l1))
        break label144;
      Toast.makeText(this, getString(2131427548, new Object[] { str1 }), 0).show();
      this.b.requestFocus();
      bool = false;
      break;
    }
    label144: String str2 = this.c.getSelectedItem().toString();
    int i;
    if (TextUtils.equals(str2, getString(2131427525)))
      i = 1;
    while (true)
    {
      label173: long l2;
      if (this.g == null)
      {
        l2 = e.a(2, str1, null, i, 5);
        label191: if (l2 <= 0L)
          break label282;
        setResult(-1, getIntent());
      }
      while (true)
      {
        if (l2 <= 0L)
          break label299;
        bool = true;
        break;
        if (TextUtils.equals(str2, getString(2131427526)))
        {
          i = 2;
          break label173;
        }
        if (!TextUtils.equals(str2, getString(2131427527)))
          break label305;
        i = 3;
        break label173;
        l2 = e.a(this.g.i, 2, str1, null, i, 5);
        break label191;
        label282: Toast.makeText(this, getString(2131428810), 0).show();
      }
      label299: bool = false;
      break;
      label305: i = 1;
    }
  }

  public void onClick(View paramView)
  {
    int j;
    label83: String str1;
    label166: String str2;
    int i;
    if (paramView.getId() == 2131230767)
    {
      if (TextUtils.isEmpty(this.b.getText()))
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = getString(2131427578);
        Toast.makeText(this, getString(2131427546, arrayOfObject), 0).show();
        this.b.requestFocus();
        j = 0;
        if (j != 0)
        {
          setResult(-1, getIntent());
          finish();
        }
        return;
      }
      e.a(this);
      str1 = i.a(this.b.getText().toString());
      if (this.g != null);
      for (long l1 = this.g.i; ; l1 = -1L)
      {
        if (!e.b(str1, l1))
          break label166;
        Toast.makeText(this, getString(2131427548, new Object[] { str1 }), 0).show();
        this.b.requestFocus();
        break;
      }
      str2 = this.c.getSelectedItem().toString();
      if (TextUtils.equals(str2, getString(2131427525)))
        i = 1;
    }
    while (true)
    {
      label195: long l2;
      if (this.g == null)
      {
        l2 = e.a(2, str1, null, i, 5);
        label213: if (l2 <= 0L)
          break label304;
        setResult(-1, getIntent());
      }
      while (true)
      {
        if (l2 <= 0L)
          break label319;
        j = 1;
        break;
        if (TextUtils.equals(str2, getString(2131427526)))
        {
          i = 2;
          break label195;
        }
        if (!TextUtils.equals(str2, getString(2131427527)))
          break label337;
        i = 3;
        break label195;
        l2 = e.a(this.g.i, 2, str1, null, i, 5);
        break label213;
        label304: Toast.makeText(this, getString(2131428810), 0).show();
      }
      label319: break;
      if (paramView.getId() != 2131230768)
        break label83;
      finish();
      break label83;
      label337: i = 1;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setResult(0);
    setContentView(2130903045);
    this.b = ((EditText)findViewById(2131230764));
    this.d = ((Button)findViewById(2131230767));
    this.e = ((Button)findViewById(2131230768));
    this.f = ((TextView)findViewById(2131230749));
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.c = ((Spinner)findViewById(2131230766));
    this.g = ((g)getIntent().getSerializableExtra("UserWhiteBlackAddActivity_rule"));
    if (this.g != null)
    {
      this.f.setText(2131427331);
      this.b.setText(this.g.f);
      if (this.g.d == 1)
        this.c.setSelection(0);
    }
    while (true)
    {
      return;
      if (this.g.d == 2)
      {
        this.c.setSelection(1);
      }
      else if (this.g.d == 3)
      {
        this.c.setSelection(2);
      }
      else
      {
        this.c.setSelection(0);
        continue;
        this.b.setText(null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.UserBlackAddByNumbersActivity
 * JD-Core Version:    0.6.2
 */