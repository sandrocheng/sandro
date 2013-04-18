package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.hoi.widget.SpinnerButton;
import com.ijinshan.kinghelper.firewall.a.e;
import com.ijinshan.kinghelper.firewall.a.g;
import com.keniu.security.mydb.opt.a;
import com.keniu.security.util.aq;
import java.util.List;

public class UserBlackAddByAreasActivity extends Activity
  implements View.OnClickListener
{
  public static final String a = "UserWhiteBlackAddActivity_rule";
  private Spinner b;
  private SpinnerButton c;
  private Button d;
  private Button e;
  private TextView f;
  private g g;
  private String h;
  private String i;
  private int j;
  private int k;
  private boolean l = false;
  private int m = 1;
  private String[][] n;
  private String[] o;

  private void a()
  {
    this.o = a.a(getApplicationContext());
    if (this.o != null)
    {
      this.n = new String[this.o.length][];
      for (int i1 = 0; i1 < this.o.length; i1++)
      {
        String str1 = this.o[i1];
        List localList = a.a(str1);
        if (localList != null)
        {
          int i2 = localList.size();
          if (i2 > 1)
          {
            this.n[i1] = new String[i2 + 2];
            this.n[i1][0] = str1;
            this.n[i1][1] = getString(2131428811);
            for (int i3 = 0; i3 < localList.size(); i3++)
            {
              String str2 = (String)localList.get(i3);
              this.n[i1][(i3 + 2)] = str2;
            }
          }
        }
        this.n[i1] = { str1 };
      }
    }
  }

  private boolean b()
  {
    e.a(this);
    boolean bool;
    if ((getString(2131427435).equals(this.c.a())) || (getString(2131427552).equals(this.c.a())))
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = getString(2131427553);
      Toast.makeText(this, getString(2131427546, arrayOfObject1), 0).show();
      bool = false;
      return bool;
    }
    String str1 = this.b.getSelectedItem().toString();
    int i1;
    if (TextUtils.equals(str1, getString(2131427525)))
      i1 = 1;
    while (true)
    {
      label102: String str2 = this.c.a();
      if (this.g != null);
      for (long l1 = this.g.i; ; l1 = -1L)
      {
        if (!e.a(str2, l1))
          break label222;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.c.a();
        Toast.makeText(this, getString(2131427548, arrayOfObject2), 0).show();
        bool = false;
        break;
        if (TextUtils.equals(str1, getString(2131427526)))
        {
          i1 = 2;
          break label102;
        }
        if (!TextUtils.equals(str1, getString(2131427527)))
          break label326;
        i1 = 3;
        break label102;
      }
      label222: long l2;
      if (this.g == null)
      {
        l2 = e.a(2, this.c.a(), null, i1, 6);
        label247: if (l2 <= 0L)
          break label304;
        setResult(-1, getIntent());
      }
      while (true)
      {
        if (l2 <= 0L)
          break label321;
        bool = true;
        break;
        l2 = e.a(this.g.i, 2, this.c.a(), null, i1, 6);
        break label247;
        label304: Toast.makeText(this, getString(2131428810), 0).show();
      }
      label321: bool = false;
      break;
      label326: i1 = 1;
    }
  }

  public final boolean a(int paramInt, SpinnerButton paramSpinnerButton)
  {
    boolean bool;
    if (this.o == null)
    {
      bool = false;
      return bool;
    }
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131427435));
    if (paramInt == -1)
      this.l = true;
    String[] arrayOfString;
    for (ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 17367049, this.o); ; localArrayAdapter = new ArrayAdapter(this, 17367049, arrayOfString))
    {
      localaq.a(localArrayAdapter, new ew(this, paramSpinnerButton));
      localaq.d();
      bool = this.l;
      break;
      this.l = false;
      arrayOfString = new String[this.n[paramInt].length - 1];
      System.arraycopy(this.n[paramInt], 1, arrayOfString, 0, arrayOfString.length);
    }
  }

  public void onClick(View paramView)
  {
    if (paramView == this.c)
    {
      a(-1, (SpinnerButton)paramView);
      this.m = 1;
    }
    label104: int i1;
    while (true)
    {
      return;
      if (paramView.getId() != 2131230760)
        break label374;
      e.a(this);
      if ((!getString(2131427435).equals(this.c.a())) && (!getString(2131427552).equals(this.c.a())))
        break;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = getString(2131427553);
      Toast.makeText(this, getString(2131427546, arrayOfObject1), 0).show();
      i1 = 0;
      label106: if (i1 == 0)
        break label326;
      setResult(-1, getIntent());
      finish();
    }
    String str1 = this.b.getSelectedItem().toString();
    int i2;
    if (TextUtils.equals(str1, getString(2131427525)))
      i2 = 1;
    while (true)
    {
      label155: String str2 = this.c.a();
      if (this.g != null);
      for (long l1 = this.g.i; ; l1 = -1L)
      {
        if (!e.a(str2, l1))
          break label275;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.c.a();
        Toast.makeText(this, getString(2131427548, arrayOfObject2), 0).show();
        break;
        if (TextUtils.equals(str1, getString(2131427526)))
        {
          i2 = 2;
          break label155;
        }
        if (!TextUtils.equals(str1, getString(2131427527)))
          break label390;
        i2 = 3;
        break label155;
      }
      label275: long l2;
      if (this.g == null)
      {
        l2 = e.a(2, this.c.a(), null, i2, 6);
        label300: if (l2 <= 0L)
          break label357;
        setResult(-1, getIntent());
      }
      while (true)
      {
        if (l2 <= 0L)
          break label372;
        i1 = 1;
        break label106;
        label326: break;
        l2 = e.a(this.g.i, 2, this.c.a(), null, i2, 6);
        break label300;
        label357: Toast.makeText(this, getString(2131428810), 0).show();
      }
      label372: break label104;
      label374: if (paramView.getId() != 2131230761)
        break;
      finish();
      break;
      label390: i2 = 1;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903044);
    this.c = ((SpinnerButton)findViewById(2131230758));
    this.c.setOnClickListener(this);
    this.b = ((Spinner)findViewById(2131230759));
    this.d = ((Button)findViewById(2131230760));
    this.e = ((Button)findViewById(2131230761));
    this.f = ((TextView)findViewById(2131230749));
    this.d.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.g = ((g)getIntent().getSerializableExtra("UserWhiteBlackAddActivity_rule"));
    if (this.g != null)
    {
      this.f.setText(2131427331);
      this.c.a(this.g.f);
      if (this.g.d == 1)
      {
        this.b.setSelection(0);
        this.o = a.a(getApplicationContext());
        if (this.o == null)
          return;
        this.n = new String[this.o.length][];
      }
    }
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= this.o.length)
        return;
      String str1 = this.o[i1];
      List localList = a.a(str1);
      if (localList != null)
      {
        int i2 = localList.size();
        if (i2 > 1)
        {
          this.n[i1] = new String[i2 + 2];
          this.n[i1][0] = str1;
          this.n[i1][1] = getString(2131428811);
          for (int i3 = 0; i3 < localList.size(); i3++)
          {
            String str2 = (String)localList.get(i3);
            this.n[i1][(i3 + 2)] = str2;
          }
          if (this.g.d == 2)
          {
            this.b.setSelection(1);
            break;
          }
          if (this.g.d == 3)
          {
            this.b.setSelection(2);
            break;
          }
          this.b.setSelection(0);
          break;
          this.c.a(getString(2131427435));
          break;
        }
      }
      this.n[i1] = { str1 };
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.UserBlackAddByAreasActivity
 * JD-Core Version:    0.6.2
 */