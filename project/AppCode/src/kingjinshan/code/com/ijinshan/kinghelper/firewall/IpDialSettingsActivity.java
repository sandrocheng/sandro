package com.ijinshan.kinghelper.firewall;

import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.sync.l;
import com.keniu.security.util.BasePreferenceActivity;
import com.keniu.security.util.aq;

public class IpDialSettingsActivity extends BasePreferenceActivity
  implements n
{
  public static final String a = "拨打长途时";
  public static final String b = "拨打所有电话时";
  public static final String c = "不使用IP拨号";
  public static final String d = "不选择任何IP号码";
  public static final String e = "其他IP号码";
  public static final String f = "未选择任何地区";
  public static final String g = "未选择任何IP号码";
  public static final String h = "选择全省";
  public static final String i = "个号码";
  public static final int j = 1;
  private static final String k = "17951";
  private static final String l = "12593";
  private static final String m = "10193";
  private static final String n = "17911";
  private static final String o = "17901";
  private static final String p = "11808";
  private static final int q = 4096;
  private static final int r = 8192;
  private static final int s = 12288;
  private static final int t = 16384;
  private static final int u = 20480;
  private static final int v = 24576;
  private Preference A;
  private Preference B;
  private Preference C;
  private String D = "不使用IP拨号";
  private String E;
  private String F;
  private String G;
  private String H;
  private int I;
  private int J;
  private String K;
  private String L;
  private int M;
  private int N;
  private boolean O = false;
  private boolean P = false;
  private boolean Q = false;
  private boolean R = false;
  private String[] S = null;
  private String[] T;
  private boolean U = false;
  private DialogInterface.OnClickListener V = new co(this);
  private DialogInterface.OnClickListener W = new cp(this);
  private DialogInterface.OnClickListener X = new cq(this);
  private DialogInterface.OnClickListener Y = new cs(this);
  private String[] w;
  private String[] x;
  private Preference y;
  private Preference z;

  private static int a(String[] paramArrayOfString, String paramString)
  {
    int i1 = 0;
    int i2 = 0;
    while (i1 < paramArrayOfString.length)
    {
      if (paramString.contains(paramArrayOfString[i1]))
        i2 = i1;
      i1++;
    }
    return i2;
  }

  private void c()
  {
    if (dc.e())
    {
      RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131230997);
      localRelativeLayout.setVisibility(0);
      TextView localTextView = (TextView)localRelativeLayout.findViewById(2131230999);
      localTextView.setClickable(true);
      localTextView.setOnClickListener(new cg(this));
      ((Button)localRelativeLayout.findViewById(2131231000)).setOnClickListener(new cr(this, localRelativeLayout));
    }
    this.G = dc.d(getString(2131429015));
    this.E = dc.k("未选择任何IP号码");
    this.F = dc.l("");
    this.A = a(getString(2131427461));
    String str;
    if ("其他IP号码".equals(this.E))
      if ((this.F != null) && (!"".equals(this.F)))
      {
        this.A.a(this.F);
        this.A.a(this);
        this.D = dc.b("不使用IP拨号");
        this.y = a(getString(2131427454));
        this.y.a(this.D);
        this.y.a(this);
        this.z = a(getString(2131427491));
        this.z.a(this.G);
        this.z.a(this);
        if (TextUtils.isEmpty(this.E))
        {
          dc.j("不选择任何IP号码");
          this.E = "不选择任何IP号码";
        }
        str = dc.d();
        if (!TextUtils.isEmpty(str))
          break label523;
        this.S = new String[0];
        label279: this.C = a(getString(2131427467));
        if (this.S.length != 0)
          break label537;
        this.C.a("未添加");
        label312: this.C.a(new ct(this));
        this.K = dc.f("未选择任何地区");
        this.L = dc.h("选择全省");
        this.B = a(getString(2131427468));
        if ((!"未选择任何地区".equals(this.K)) && (!TextUtils.isEmpty(this.K)))
          break label572;
        this.B.a("未选择任何地区");
        label391: this.B.a(this);
        if (!"不使用IP拨号".equals(dc.b("不使用IP拨号")))
          break label632;
        this.A.c(false);
        this.C.c(false);
        this.z.c(false);
        this.B.c(false);
      }
    while (true)
    {
      return;
      this.A.a("未选择任何IP号码");
      break;
      if ((this.E == null) || ("".equals(this.E)))
      {
        this.A.a("未选择任何IP号码");
        break;
      }
      if (this.E == "不选择任何IP号码")
      {
        this.A.a("未选择任何IP号码");
        break;
      }
      this.A.a(this.E);
      break;
      label523: this.S = str.split(";");
      break label279;
      label537: this.C.a(this.S.length / 2 + "个号码");
      break label312;
      label572: if ("选择全省".equals(this.L))
      {
        this.B.a(this.K);
        break label391;
      }
      this.B.a(this.K + this.L);
      break label391;
      label632: this.C.c(true);
      this.z.c(true);
      this.B.c(true);
      this.A.c(true);
    }
  }

  private Dialog d()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131427447));
    String str = dc.b("不使用IP拨号");
    int i1;
    if ("拨打长途时".equals(str))
      i1 = 0;
    while (true)
    {
      localaq.a(2131165232, i1, new cu(this));
      localaq.b(getString(2131427542), new cv(this));
      return localaq.c();
      if ("拨打所有电话时".equals(str))
        i1 = 1;
      else
        i1 = 2;
    }
  }

  private Dialog e()
  {
    if (TextUtils.isEmpty(this.G));
    int i2;
    for (this.I = dc.g(); ; this.I = i2)
    {
      aq localaq = new aq(this, (byte)0);
      localaq.a(2131165233, this.I, this.V);
      localaq.a(2131427488);
      localaq.a(getString(2131427541), new cw(this));
      localaq.b(getString(2131427542), new cx(this));
      return localaq.c();
      String[] arrayOfString = getResources().getStringArray(2131165233);
      String str = this.G;
      int i1 = 0;
      i2 = 0;
      while (i1 < arrayOfString.length)
      {
        if (str.contains(arrayOfString[i1]))
          i2 = i1;
        i1++;
      }
    }
  }

  private Dialog f()
  {
    if (this.O)
    {
      this.J = 0;
      this.O = false;
    }
    while (true)
    {
      aq localaq = new aq(this, (byte)0);
      localaq.a(2131427487);
      localaq.a(this.w, this.J, this.W);
      localaq.a(2131427541, new cy(this));
      localaq.b(2131427542, new cz(this));
      return localaq.c();
      this.J = dc.h();
    }
  }

  private Dialog g()
  {
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903279, null);
    TextView localTextView = (TextView)localView.findViewById(2131231566);
    RadioGroup localRadioGroup = (RadioGroup)localView.findViewById(2131231559);
    RadioButton localRadioButton1 = (RadioButton)localView.findViewById(2131231558);
    RadioButton localRadioButton2 = (RadioButton)localView.findViewById(2131231561);
    RadioButton localRadioButton3 = (RadioButton)localView.findViewById(2131231563);
    RadioButton localRadioButton4 = (RadioButton)localView.findViewById(2131231565);
    localRadioButton1.setText(this.T[0]);
    localRadioButton2.setText(this.T[1]);
    localRadioButton3.setText(this.T[2]);
    localRadioButton4.setText(this.T[3]);
    if ((TextUtils.isEmpty(this.E)) || (this.E == this.T[0]))
      localRadioButton1.setChecked(true);
    if (this.E == this.T[1])
      localRadioButton2.setChecked(true);
    if (this.E == this.T[2])
      localRadioButton3.setChecked(true);
    if (this.E == this.T[3])
    {
      this.Q = true;
      localRadioButton4.setChecked(true);
      localTextView.setVisibility(0);
    }
    localRadioGroup.setOnCheckedChangeListener(new ch(this, localRadioButton1, localRadioButton2, localRadioButton3, localRadioButton4, localTextView));
    if (TextUtils.isEmpty(this.F))
      localTextView.setHint("必填");
    while (true)
    {
      localaq.a(localView);
      localaq.a(2131427449);
      localaq.b();
      localaq.a(getString(2131427541), new ci(this, localTextView));
      localaq.b(getString(2131427542), new cj(this, localTextView));
      return localaq.c();
      localTextView.setText(this.F);
    }
  }

  private Dialog h()
  {
    this.M = dc.i();
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131165234, this.M, this.X);
    localaq.a(2131427484);
    localaq.a(getString(2131427541), new ck(this));
    localaq.b(getString(2131427542), new cl(this));
    return localaq.c();
  }

  private Dialog i()
  {
    if (this.P)
    {
      this.N = 0;
      this.P = false;
    }
    while (true)
    {
      aq localaq = new aq(this, (byte)0);
      localaq.a(2131427485);
      localaq.a(this.x, this.N, this.Y);
      localaq.a(2131427541, new cm(this));
      localaq.b(2131427542, new cn(this));
      return localaq.c();
      this.N = dc.j();
    }
  }

  public final boolean a(Preference paramPreference)
  {
    l.a(this);
    String str = paramPreference.A();
    if (getString(2131427491).equals(str))
      showDialog(4096);
    if (getString(2131427461).equals(str))
      showDialog(20480);
    while (true)
    {
      return false;
      if (getString(2131427468).equals(str))
        showDialog(12288);
      else if (getString(2131427454).equals(str))
        if ((com.keniu.security.a.a(this).V()) || (this.U))
          startActivity(new Intent(this, IPDialTypeActivity.class));
        else
          showDialog(24576);
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    String str;
    if ((paramInt1 == 1) && (paramInt2 == -1))
    {
      str = dc.d();
      if (!TextUtils.isEmpty(str))
        break label50;
      this.S = new String[0];
      if (this.S.length != 0)
        break label65;
      this.C.a("未添加");
    }
    while (true)
    {
      return;
      label50: this.S = str.split(";");
      break;
      label65: this.C.a(this.S.length / 2 + "个号码");
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2131034121);
    setContentView(2130903116);
    this.U = getIntent().getBooleanExtra("fromSIMChange", false);
    if (paramBundle == null)
      com.jxphone.mosecurity.a.a.i(this, "telman_ipdail");
    String str = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
    this.T = new String[4];
    if (str != null)
      if ((str.startsWith("46000")) || (str.startsWith("46002")))
      {
        this.T[0] = "不选择任何IP号码";
        this.T[1] = "17951";
        this.T[2] = "12593";
        this.T[3] = "其他IP号码";
      }
    while (true)
    {
      dc.a(this);
      dc.a();
      c();
      getListView().setCacheColorHint(0);
      return;
      if (str.startsWith("46001"))
      {
        this.T[0] = "不选择任何IP号码";
        this.T[1] = "10193";
        this.T[2] = "17911";
        this.T[3] = "其他IP号码";
      }
      else if (str.startsWith("46003"))
      {
        this.T[0] = "不选择任何IP号码";
        this.T[1] = "17901";
        this.T[2] = "11808";
        this.T[3] = "其他IP号码";
      }
      else
      {
        this.T[0] = "不选择任何IP号码";
        this.T[1] = "17951";
        this.T[2] = "12593";
        this.T[3] = "其他IP号码";
        continue;
        this.T[0] = "不选择任何IP号码";
        this.T[1] = "17951";
        this.T[2] = "12593";
        this.T[3] = "其他IP号码";
      }
    }
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    if (paramInt == 4096)
      if (TextUtils.isEmpty(this.G))
      {
        this.I = dc.g();
        aq localaq6 = new aq(this, (byte)0);
        localaq6.a(2131165233, this.I, this.V);
        localaq6.a(2131427488);
        localaq6.a(getString(2131427541), new cw(this));
        localaq6.b(getString(2131427542), new cx(this));
        localObject = localaq6.c();
      }
    while (true)
    {
      return localObject;
      String[] arrayOfString = getResources().getStringArray(2131165233);
      String str2 = this.G;
      int i2 = 0;
      for (int i3 = 0; i3 < arrayOfString.length; i3++)
        if (str2.contains(arrayOfString[i3]))
          i2 = i3;
      this.I = i2;
      break;
      if (paramInt == 8192)
      {
        if (this.O)
        {
          this.J = 0;
          this.O = false;
        }
        while (true)
        {
          aq localaq5 = new aq(this, (byte)0);
          localaq5.a(2131427487);
          localaq5.a(this.w, this.J, this.W);
          localaq5.a(2131427541, new cy(this));
          localaq5.b(2131427542, new cz(this));
          localObject = localaq5.c();
          break;
          this.J = dc.h();
        }
      }
      if (paramInt == 20480)
      {
        aq localaq1 = new aq(this, (byte)0);
        View localView = LayoutInflater.from(this).inflate(2130903279, null);
        TextView localTextView = (TextView)localView.findViewById(2131231566);
        RadioGroup localRadioGroup = (RadioGroup)localView.findViewById(2131231559);
        RadioButton localRadioButton1 = (RadioButton)localView.findViewById(2131231558);
        RadioButton localRadioButton2 = (RadioButton)localView.findViewById(2131231561);
        RadioButton localRadioButton3 = (RadioButton)localView.findViewById(2131231563);
        RadioButton localRadioButton4 = (RadioButton)localView.findViewById(2131231565);
        localRadioButton1.setText(this.T[0]);
        localRadioButton2.setText(this.T[1]);
        localRadioButton3.setText(this.T[2]);
        localRadioButton4.setText(this.T[3]);
        if ((TextUtils.isEmpty(this.E)) || (this.E == this.T[0]))
          localRadioButton1.setChecked(true);
        if (this.E == this.T[1])
          localRadioButton2.setChecked(true);
        if (this.E == this.T[2])
          localRadioButton3.setChecked(true);
        if (this.E == this.T[3])
        {
          this.Q = true;
          localRadioButton4.setChecked(true);
          localTextView.setVisibility(0);
        }
        localRadioGroup.setOnCheckedChangeListener(new ch(this, localRadioButton1, localRadioButton2, localRadioButton3, localRadioButton4, localTextView));
        if (TextUtils.isEmpty(this.F))
          localTextView.setHint("必填");
        while (true)
        {
          localaq1.a(localView);
          localaq1.a(2131427449);
          localaq1.b();
          localaq1.a(getString(2131427541), new ci(this, localTextView));
          localaq1.b(getString(2131427542), new cj(this, localTextView));
          localObject = localaq1.c();
          break;
          localTextView.setText(this.F);
        }
      }
      if (paramInt == 12288)
      {
        this.M = dc.i();
        aq localaq4 = new aq(this, (byte)0);
        localaq4.a(2131165234, this.M, this.X);
        localaq4.a(2131427484);
        localaq4.a(getString(2131427541), new ck(this));
        localaq4.b(getString(2131427542), new cl(this));
        localObject = localaq4.c();
      }
      else
      {
        if (paramInt == 16384)
        {
          if (this.P)
          {
            this.N = 0;
            this.P = false;
          }
          while (true)
          {
            aq localaq3 = new aq(this, (byte)0);
            localaq3.a(2131427485);
            localaq3.a(this.x, this.N, this.Y);
            localaq3.a(2131427541, new cm(this));
            localaq3.b(2131427542, new cn(this));
            localObject = localaq3.c();
            break;
            this.N = dc.j();
          }
        }
        if (paramInt == 24576)
        {
          aq localaq2 = new aq(this, (byte)0);
          localaq2.a(getString(2131427447));
          String str1 = dc.b("不使用IP拨号");
          int i1;
          if ("拨打长途时".equals(str1))
            i1 = 0;
          while (true)
          {
            localaq2.a(2131165232, i1, new cu(this));
            localaq2.b(getString(2131427542), new cv(this));
            localObject = localaq2.c();
            break;
            if ("拨打所有电话时".equals(str1))
              i1 = 1;
            else
              i1 = 2;
          }
        }
        localObject = super.onCreateDialog(paramInt);
      }
    }
  }

  protected void onResume()
  {
    super.onResume();
    c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.IpDialSettingsActivity
 * JD-Core Version:    0.6.2
 */