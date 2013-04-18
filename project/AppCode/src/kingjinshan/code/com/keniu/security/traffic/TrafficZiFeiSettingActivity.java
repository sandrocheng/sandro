package com.keniu.security.traffic;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
import cn.com.wali.zft.plugin;
import com.ijinshan.kinghelper.firewall.dc;
import com.keniu.security.util.SafeViewFlipper;
import com.keniu.security.util.aq;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

public class TrafficZiFeiSettingActivity extends Activity
{
  private static final int O = 160;
  private static final int[] Q = { 1601, 1637, 1833, 2078, 2274, 2302, 2433, 2594, 2787, 3106, 3212, 3472, 3635, 3722, 3730, 3858, 4027, 4086, 4390, 4558, 4684, 4925, 5249, 5600 };
  private static final char[] R = { 97, 98, 99, 100, 101, 102, 103, 104, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 119, 120, 121, 122 };
  private static final int a = 300;
  private String A = "";
  private String[] B;
  private String[] C;
  private RadioGroup D;
  private RadioGroup E;
  private RadioButton F;
  private RadioButton G;
  private RadioButton H;
  private RadioButton I;
  private RadioButton J;
  private RadioButton K;
  private ImageView L;
  private ImageView M;
  private boolean N = true;
  private int P = -1;
  private RadioGroup.OnCheckedChangeListener S = new ee(this);
  private SafeViewFlipper b;
  private Button c;
  private Button d;
  private String[] e = null;
  private boolean f = false;
  private ArrayList g;
  private ArrayList h;
  private ArrayList i;
  private ArrayList j;
  private EditText k;
  private EditText l;
  private ListView m;
  private Button n;
  private ListView o;
  private LayoutInflater p;
  private ArrayList q;
  private ArrayList r;
  private String s;
  private boolean t;
  private boolean u;
  private String[] v;
  private int w;
  private String x = "";
  private String y = "";
  private String z = "";

  private static char a(byte[] paramArrayOfByte)
  {
    char c1 = '-';
    for (int i1 = 0; i1 < paramArrayOfByte.length; i1++)
      paramArrayOfByte[i1] = ((byte)(paramArrayOfByte[i1] - 160));
    int i2 = 100 * paramArrayOfByte[0] + paramArrayOfByte[1];
    for (int i3 = 0; ; i3++)
      if (i3 < 23)
      {
        if ((i2 >= Q[i3]) && (i2 < Q[(i3 + 1)]))
          c1 = R[i3];
      }
      else
        return c1;
  }

  protected static Animation a()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, -1.0F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  private static String a(String paramString)
  {
    String str = paramString.toLowerCase();
    StringBuffer localStringBuffer = new StringBuffer();
    int i1 = 0;
    while (true)
      if (i1 < str.length())
      {
        char[] arrayOfChar = { str.charAt(i1) };
        try
        {
          byte[] arrayOfByte2 = new String(arrayOfChar).getBytes("GBK");
          arrayOfByte1 = arrayOfByte2;
          if ((arrayOfByte1[0] < 128) && (arrayOfByte1[0] > 0))
          {
            localStringBuffer.append(arrayOfChar);
            i1++;
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          while (true)
          {
            localUnsupportedEncodingException.printStackTrace();
            byte[] arrayOfByte1 = null;
            continue;
            localStringBuffer.append(a(arrayOfByte1));
          }
        }
      }
    return localStringBuffer.toString();
  }

  private boolean a(String[] paramArrayOfString, String paramString)
  {
    String str = paramString.toLowerCase();
    setTitle(str);
    int i1 = 0;
    if (i1 < paramArrayOfString.length)
      if (!paramArrayOfString[i1].endsWith(str));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i1++;
      break;
    }
  }

  protected static Animation b()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 0.0F, 2, 1.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  private void c()
  {
    dd.a(this, null);
    y localy = y.a(this);
    String str = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
    localy.p = str;
    if ((str != null) && (!str.equals("")))
      localy.a(this, 2131428297);
    if (!TextUtils.isEmpty(this.x))
    {
      dc.a(this);
      if (this.x.equals(this.y))
        dc.e(this.x.split(",")[1].toString());
    }
    else
    {
      localy.k = this.x;
      localy.a(this, 2131428299);
      localy.l = this.y;
      localy.a(this, 2131428300);
      localy.n = this.z;
      localy.a(this, 2131428301);
      localy.m = this.A;
      localy.a(this, 2131428302);
      if ((this.b.getDisplayedChild() != 4) || (!TextUtils.isEmpty(this.k.getText().toString())))
        break label348;
      setResult(1);
      label191: if ((!this.u) || (!dc.b()))
        break label356;
      new aq(this, (byte)0).a(2131427865).b(2131429624).a(2131429625, new em(this)).b(2131429626, new el(this)).d();
    }
    while (true)
    {
      if (this.t)
      {
        Intent localIntent = new Intent();
        localIntent.setClass(this, TrafficTabActivity.class);
        localIntent.putExtra("updateZFT", true);
        startActivity(localIntent);
      }
      return;
      dc.e(this.x.split(",")[1].toString() + this.y.split(",")[1].toString());
      break;
      label348: setResult(-1);
      break label191;
      label356: finish();
    }
  }

  private void d()
  {
    this.c.setText(2131429277);
    this.i = plugin.getcarries();
    this.B = ((String[])this.i.toArray(new String[this.i.size()]));
    String str1 = this.B[0].substring(this.B[0].indexOf(","), this.B[0].length());
    String str2 = str1.substring(1, str1.length());
    String str3 = this.B[1].substring(this.B[1].indexOf(","), this.B[1].length());
    String str4 = str3.substring(1, str3.length());
    String str5 = this.B[2].substring(this.B[2].indexOf(","), this.B[2].length());
    String str6 = str5.substring(1, str5.length());
    this.F.setText(str2);
    this.G.setText(str4);
    this.H.setText(str6);
    this.q = f();
    ((en)this.m.getAdapter()).notifyDataSetChanged();
    ((en)this.o.getAdapter()).notifyDataSetChanged();
  }

  private void e()
  {
    this.j = plugin.getbrands(String.valueOf(this.z).split(",")[0]);
    if (this.j == null)
      return;
    if ((!TextUtils.isEmpty(this.s)) && (this.s.equals("RatesRequest")))
      this.d.setText(2131429278);
    this.c.setText(2131429277);
    this.C = ((String[])this.j.toArray(new String[0]));
    if (this.C.length == 1)
    {
      String str11 = this.C[0].substring(this.C[0].indexOf(","), this.C[0].length());
      String str12 = str11.substring(1, str11.length());
      this.I.setText(str12);
      this.J.setVisibility(8);
      this.K.setVisibility(8);
      this.M.setVisibility(8);
      this.L.setVisibility(8);
    }
    while (true)
    {
      this.q = f();
      ((en)this.m.getAdapter()).notifyDataSetChanged();
      ((en)this.o.getAdapter()).notifyDataSetChanged();
      break;
      if (this.C.length == 2)
      {
        String str7 = this.C[0].substring(this.C[0].indexOf(","), this.C[0].length());
        String str8 = str7.substring(1, str7.length());
        String str9 = this.C[1].substring(this.C[1].indexOf(","), this.C[1].length());
        String str10 = str9.substring(1, str9.length());
        this.I.setText(str8);
        this.J.setVisibility(0);
        this.J.setText(str10);
        this.K.setVisibility(8);
        this.M.setVisibility(0);
        this.L.setVisibility(8);
      }
      else if (this.C.length == 3)
      {
        String str1 = this.C[0].substring(this.C[0].indexOf(","), this.C[0].length());
        String str2 = str1.substring(1, str1.length());
        String str3 = this.C[1].substring(this.C[1].indexOf(","), this.C[1].length());
        String str4 = str3.substring(1, str3.length());
        String str5 = this.C[2].substring(this.C[2].indexOf(","), this.C[2].length());
        String str6 = str5.substring(1, str5.length());
        this.I.setText(str2);
        this.J.setVisibility(0);
        this.J.setText(str4);
        this.K.setVisibility(0);
        this.K.setText(str6);
        this.L.setVisibility(0);
        this.M.setVisibility(0);
      }
    }
  }

  private ArrayList f()
  {
    this.g = plugin.getprovinces();
    if (this.r == null)
      this.r = new ArrayList();
    this.r.clear();
    if (this.b.getDisplayedChild() == 0)
    {
      this.e = ((String[])this.g.toArray(new String[this.g.size()]));
      for (int i4 = 0; i4 < this.e.length; i4++)
      {
        String str7 = this.e[i4].substring(this.e[i4].indexOf(","), this.e[i4].length());
        String str8 = str7.substring(1, str7.length());
        this.r.add(str8);
      }
    }
    if (this.b.getDisplayedChild() == 1)
      if (this.N)
      {
        this.h = plugin.getcities(Integer.valueOf(String.valueOf(this.g.get(this.w)).split(",")[0]).intValue());
        this.v = ((String[])this.h.toArray(new String[0]));
        this.y = this.v[0];
        if (this.v.length != 1)
          break label337;
        if (!this.N)
          break label283;
        this.b.showNext();
      }
    while (true)
    {
      return this.r;
      this.h = plugin.getcities(Integer.valueOf(String.valueOf(this.x).split(",")[0]).intValue());
      break;
      label283: this.c.setText(2131428627);
      this.b.showPrevious();
      this.q = f();
      ((en)this.m.getAdapter()).notifyDataSetChanged();
      ((en)this.o.getAdapter()).notifyDataSetChanged();
      continue;
      label337: for (int i3 = 0; i3 < this.v.length; i3++)
      {
        String str5 = this.v[i3].substring(this.v[i3].indexOf(","), this.v[i3].length());
        String str6 = str5.substring(1, str5.length());
        this.r.add(str6);
      }
      continue;
      if (this.b.getDisplayedChild() == 2)
      {
        this.i = plugin.getcarries();
        this.B = ((String[])this.i.toArray(new String[this.i.size()]));
        for (int i2 = 0; i2 < this.B.length; i2++)
        {
          String str3 = this.B[i2].substring(this.B[i2].indexOf(","), this.B[i2].length());
          String str4 = str3.substring(1, str3.length());
          this.r.add(str4);
        }
      }
      else if (this.b.getDisplayedChild() == 3)
      {
        this.i = plugin.getcarries();
        this.j = plugin.getbrands(String.valueOf(this.z).split(",")[0]);
        this.C = ((String[])this.j.toArray(new String[0]));
        for (int i1 = 0; i1 < this.C.length; i1++)
        {
          String str1 = this.C[i1].substring(this.C[i1].indexOf(","), this.C[i1].length());
          String str2 = str1.substring(1, str1.length());
          this.r.add(str2);
        }
      }
    }
  }

  private static Animation g()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 1.0F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  private static Animation h()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(2, 0.0F, 2, -1.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation.setDuration(300L);
    localTranslateAnimation.setInterpolator(new AccelerateInterpolator());
    return localTranslateAnimation;
  }

  private void i()
  {
    this.d.setText(2131429278);
  }

  private void j()
  {
    SafeViewFlipper localSafeViewFlipper1 = this.b;
    TranslateAnimation localTranslateAnimation1 = new TranslateAnimation(2, 1.0F, 2, 0.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation1.setDuration(300L);
    localTranslateAnimation1.setInterpolator(new AccelerateInterpolator());
    localSafeViewFlipper1.setInAnimation(localTranslateAnimation1);
    SafeViewFlipper localSafeViewFlipper2 = this.b;
    TranslateAnimation localTranslateAnimation2 = new TranslateAnimation(2, 0.0F, 2, -1.0F, 2, 0.0F, 2, 0.0F);
    localTranslateAnimation2.setDuration(300L);
    localTranslateAnimation2.setInterpolator(new AccelerateInterpolator());
    localSafeViewFlipper2.setOutAnimation(localTranslateAnimation2);
    this.b.showNext();
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903321);
    Intent localIntent = getIntent();
    this.s = localIntent.getStringExtra("context");
    this.t = localIntent.getBooleanExtra("fromMain", false);
    this.u = localIntent.getBooleanExtra("fromSIMChange", false);
    this.b = ((SafeViewFlipper)findViewById(2131231724));
    this.c = ((Button)findViewById(2131231735));
    this.d = ((Button)findViewById(2131231736));
    this.n = ((Button)findViewById(2131231685));
    this.n.setOnClickListener(new ec(this));
    this.m = ((ListView)findViewById(2131231688));
    this.o = ((ListView)findViewById(2131231656));
    this.D = ((RadioGroup)findViewById(2131231652));
    this.E = ((RadioGroup)findViewById(2131231648));
    this.F = ((RadioButton)findViewById(2131231653));
    this.G = ((RadioButton)findViewById(2131231654));
    this.H = ((RadioButton)findViewById(2131231655));
    this.I = ((RadioButton)findViewById(2131231649));
    this.J = ((RadioButton)findViewById(2131231650));
    this.K = ((RadioButton)findViewById(2131231651));
    this.M = ((ImageView)findViewById(2131231560));
    this.L = ((ImageView)findViewById(2131231562));
    this.D.setOnCheckedChangeListener(this.S);
    this.E.setOnCheckedChangeListener(this.S);
    this.k = ((EditText)findViewById(2131231683));
    if (y.d(this))
    {
      y localy = y.a(this);
      this.k.setText(String.valueOf(localy.d / 1024L / 1024L));
    }
    this.k.addTextChangedListener(new ef(this));
    RadioGroup localRadioGroup = (RadioGroup)findViewById(2131231077);
    TextView localTextView = (TextView)findViewById(2131231684);
    localTextView.setText("M");
    localRadioGroup.check(localRadioGroup.getChildAt(0).getId());
    localRadioGroup.setOnCheckedChangeListener(new eg(this, localTextView));
    this.c.setOnClickListener(new eh(this));
    this.d.setOnClickListener(new ei(this, localTextView));
    int i1 = getIntent().getIntExtra("extra_num", 0);
    this.b.setDisplayedChild(i1);
    this.q = f();
    this.m.setCacheColorHint(0);
    this.m.setAdapter(new en(this, this));
    this.m.setOnItemClickListener(new ej(this));
    this.o.setCacheColorHint(0);
    this.o.setAdapter(new en(this, this));
    this.o.setOnItemClickListener(new ek(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficZiFeiSettingActivity
 * JD-Core Version:    0.6.2
 */