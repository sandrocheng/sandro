package com.jxphone.mosecurity.activity;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

public class BaseContactActivity extends v
{
  protected static final int b = 0;
  protected static final int c = 1;
  protected static final int d = 3;
  protected static final int e = 4;
  protected static final int f = 5;
  protected static com.jxphone.mosecurity.c.b g = null;
  private static final String l = "BaseContactActivity";
  private static final String m = "isPassed";
  private static short n = 0;
  private static r o = null;
  protected com.jxphone.mosecurity.c.c h = com.jxphone.mosecurity.c.c.a;
  protected boolean i = false;
  protected boolean j = false;
  com.jxphone.mosecurity.d.n k;
  private boolean p = false;

  public static Dialog a(Activity paramActivity, boolean paramBoolean)
  {
    View localView = LayoutInflater.from(paramActivity).inflate(2130903280, null);
    com.jxphone.mosecurity.d.k localk = com.jxphone.mosecurity.d.k.a(paramActivity);
    TextView localTextView1 = (TextView)localView.findViewById(2131231568);
    TextView localTextView2 = (TextView)localView.findViewById(2131231569);
    TextView localTextView3 = (TextView)localView.findViewById(2131231571);
    if (!localk.a(paramBoolean))
    {
      ((TextView)localView.findViewById(2131231567)).setVisibility(8);
      localTextView1.setVisibility(8);
      localTextView2.setText(2131428862);
      localTextView3.setText(2131428863);
    }
    while (true)
    {
      TextView localTextView4 = (TextView)localView.findViewById(2131231570);
      TextView localTextView5 = (TextView)localView.findViewById(2131231572);
      localTextView4.setOnKeyListener(new u());
      localTextView5.setOnKeyListener(new u());
      aq localaq = new aq(paramActivity, (byte)0).a(2131428861).a(localView);
      localaq.a(new p(paramActivity));
      localaq.a(true);
      localaq.b();
      localaq.a(2131428994, new q(localView, localk, paramBoolean, paramActivity));
      localaq.b(2131428995, new b(paramActivity));
      ap localap = localaq.c();
      localView.findViewById(2131231573).setVisibility(8);
      localView.findViewById(2131231574).setVisibility(8);
      return localap;
      localTextView1.setOnKeyListener(new u());
    }
  }

  private Dialog a(Context paramContext, r paramr)
  {
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(2131428965);
    localaq.b(2131428995, null);
    localaq.d(2131165206, new i(this, paramContext, paramr));
    return localaq.c();
  }

  private Dialog a(com.jxphone.mosecurity.c.c paramc, r paramr)
  {
    View localView = LayoutInflater.from(this).inflate(2130903069, null);
    EditText localEditText1 = (EditText)localView.findViewById(2131230910);
    EditText localEditText2 = (EditText)localView.findViewById(2131230912);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230913);
    com.jxphone.mosecurity.logic.a.d locald = h.c(this, this.i);
    aq localaq = new aq(this, (byte)0);
    localaq.a(localView);
    localaq.b(2131428995, null);
    int i1;
    switch (h.a[paramc.ordinal()])
    {
    default:
      localaq.a(2131428848, a(this, localEditText1, localEditText2, localCheckBox, locald, paramr, com.jxphone.mosecurity.c.c.b));
      localaq.c(2131428633, a(this, localEditText1, localEditText2, localCheckBox, locald, paramr, com.jxphone.mosecurity.c.c.c));
      localaq.b(2131428651, a(this, localEditText1, localEditText2, localCheckBox, locald, paramr, com.jxphone.mosecurity.c.c.e));
      i1 = 2131428851;
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      localaq.a(i1);
      localCheckBox.setOnCheckedChangeListener(new n(this));
      return localaq.c();
      if (this.i)
      {
        localCheckBox.setVisibility(8);
        localCheckBox.setChecked(false);
      }
      localaq.a(2131428848, a(this, localEditText1, localEditText2, localCheckBox, locald, paramr, paramc));
      i1 = 2131428848;
      continue;
      localaq.a(2131428633, a(this, localEditText1, localEditText2, localCheckBox, locald, paramr, paramc));
      i1 = 2131428633;
      continue;
      localCheckBox.setVisibility(8);
      localaq.a(2131428651, a(this, localEditText1, localEditText2, localCheckBox, locald, paramr, paramc));
      i1 = 2131428651;
    }
  }

  private DialogInterface.OnClickListener a(Context paramContext, EditText paramEditText1, EditText paramEditText2, CheckBox paramCheckBox, com.jxphone.mosecurity.logic.a.d paramd, r paramr, com.jxphone.mosecurity.c.c paramc)
  {
    return new o(this, paramEditText1, paramEditText2, paramContext, paramc, paramd, paramCheckBox, paramr);
  }

  private static void a(Dialog paramDialog)
  {
    TextView localTextView1 = (TextView)paramDialog.findViewById(2131230910);
    TextView localTextView2 = (TextView)paramDialog.findViewById(2131230912);
    if (g == null)
    {
      localTextView1.setText(null);
      localTextView2.setText(null);
      return;
    }
    String str1 = g.b();
    String str2 = g.c();
    if ((str1 == null) || (str1.length() == 0))
      localTextView1.setText(str2);
    while (true)
    {
      localTextView2.setText(str2);
      break;
      localTextView1.setText(str1);
    }
  }

  private void a(com.jxphone.mosecurity.c.b paramb)
  {
    r localr = new r();
    View localView = LayoutInflater.from(this).inflate(2130903069, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131230910);
    TextView localTextView2 = (TextView)localView.findViewById(2131230912);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230913);
    localTextView1.setText(paramb.b());
    localTextView2.setText(paramb.c());
    localCheckBox.setChecked(false);
    localCheckBox.setVisibility(8);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131428960);
    localBuilder.setView(localView);
    localBuilder.setNegativeButton(2131428995, null);
    localBuilder.setPositiveButton(2131428994, new k(this, localTextView2, localTextView1, localr));
    localBuilder.show();
  }

  private void a(com.jxphone.mosecurity.c.b paramb, r paramr)
  {
    View localView = LayoutInflater.from(this).inflate(2130903069, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131230910);
    TextView localTextView2 = (TextView)localView.findViewById(2131230912);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230913);
    localTextView1.setText(paramb.b());
    localTextView2.setText(paramb.c());
    localCheckBox.setChecked(false);
    localCheckBox.setVisibility(8);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(2131428960);
    localBuilder.setView(localView);
    localBuilder.setNegativeButton(2131428995, null);
    localBuilder.setPositiveButton(2131428994, new k(this, localTextView2, localTextView1, paramr));
    localBuilder.show();
  }

  private static void b(Dialog paramDialog)
  {
    if (g.b() == null)
      g.c();
    while (true)
    {
      paramDialog.setTitle(2131428965);
      return;
      g.b();
    }
  }

  private Dialog m()
  {
    return new aq(this, (byte)0).d(2131165193, new a(this)).a(2131428849).c();
  }

  private Dialog n()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131428970);
    localaq.b(2131428971);
    localaq.a(2131428994, null);
    localaq.b(2131428996, new m(this));
    return localaq.c();
  }

  private Dialog o()
  {
    View localView = LayoutInflater.from(this).inflate(2130903244, null);
    aq localaq = new aq(this, (byte)0).a(2131428912).a(localView);
    localaq.a(new c(this));
    TextView localTextView = (TextView)localView.findViewById(2131231485);
    localTextView.setImeOptions(2);
    localTextView.setOnKeyListener(new u());
    localaq.a(2131428994, new d(this, localTextView));
    localaq.b(2131428995, new e(this));
    localaq.a(new f(this));
    ap localap = localaq.c();
    localap.setOnDismissListener(new g(this));
    return localap;
  }

  protected Bundle a()
  {
    Bundle localBundle = super.a();
    if (localBundle != null)
      this.p = localBundle.getBoolean("isPassed", false);
    return localBundle;
  }

  protected final void a(int paramInt, com.jxphone.mosecurity.c.b paramb, r paramr)
  {
    g = paramb;
    o = paramr;
    showDialog(paramInt);
  }

  public final void a(String paramString1, String paramString2, com.jxphone.mosecurity.c.c paramc, s params)
  {
    View localView = LayoutInflater.from(this).inflate(2130903069, null);
    TextView localTextView1 = (TextView)localView.findViewById(2131230910);
    TextView localTextView2 = (TextView)localView.findViewById(2131230912);
    localView.findViewById(2131230913).setVisibility(8);
    aq localaq;
    int i1;
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      localTextView1.setText(paramString2);
      localTextView2.setText(paramString2);
      localaq = new aq(this, (byte)0);
      i1 = 2131428850;
      switch (h.a[paramc.ordinal()])
      {
      case 1:
      default:
      case 2:
      }
    }
    while (true)
    {
      localaq.a(i1);
      localaq.a(localView);
      localaq.b(2131428995, null);
      localaq.a(2131428994, new l(this, params, localTextView1, localTextView2, paramc));
      localaq.d();
      return;
      localTextView1.setText(paramString1);
      break;
      i1 = 2131428634;
    }
  }

  public Bundle c()
  {
    Bundle localBundle = super.c();
    localBundle.putBoolean("isPassed", this.p);
    return localBundle;
  }

  protected int e()
  {
    return 2131427927;
  }

  protected void f()
  {
    this.p = true;
    n = (short)(1 + n);
  }

  protected final void g()
  {
    boolean bool = com.jxphone.mosecurity.d.k.a(this).a();
    if ((this.p) || (n > 0) || (!bool))
      f();
    while (true)
    {
      return;
      if (!this.a)
        showDialog(1);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
    this.i = getIntent().getBooleanExtra("isDummy", false);
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    case 2:
    default:
      localObject = super.onCreateDialog(paramInt);
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return localObject;
      localObject = new aq(this, (byte)0).d(2131165193, new a(this)).a(2131428849).c();
      continue;
      View localView2 = LayoutInflater.from(this).inflate(2130903244, null);
      aq localaq4 = new aq(this, (byte)0).a(2131428912).a(localView2);
      localaq4.a(new c(this));
      TextView localTextView = (TextView)localView2.findViewById(2131231485);
      localTextView.setImeOptions(2);
      localTextView.setOnKeyListener(new u());
      localaq4.a(2131428994, new d(this, localTextView));
      localaq4.b(2131428995, new e(this));
      localaq4.a(new f(this));
      localObject = localaq4.c();
      ((Dialog)localObject).setOnDismissListener(new g(this));
      continue;
      r localr2 = o;
      aq localaq3 = new aq(this, (byte)0);
      localaq3.a(2131428965);
      localaq3.b(2131428995, null);
      localaq3.d(2131165206, new i(this, this, localr2));
      localObject = localaq3.c();
      continue;
      com.jxphone.mosecurity.c.c localc = this.h;
      r localr1 = o;
      View localView1 = LayoutInflater.from(this).inflate(2130903069, null);
      EditText localEditText1 = (EditText)localView1.findViewById(2131230910);
      EditText localEditText2 = (EditText)localView1.findViewById(2131230912);
      CheckBox localCheckBox = (CheckBox)localView1.findViewById(2131230913);
      com.jxphone.mosecurity.logic.a.d locald = h.c(this, this.i);
      aq localaq2 = new aq(this, (byte)0);
      localaq2.a(localView1);
      localaq2.b(2131428995, null);
      int i1;
      switch (h.a[localc.ordinal()])
      {
      default:
        localaq2.a(2131428848, a(this, localEditText1, localEditText2, localCheckBox, locald, localr1, com.jxphone.mosecurity.c.c.b));
        localaq2.c(2131428633, a(this, localEditText1, localEditText2, localCheckBox, locald, localr1, com.jxphone.mosecurity.c.c.c));
        localaq2.b(2131428651, a(this, localEditText1, localEditText2, localCheckBox, locald, localr1, com.jxphone.mosecurity.c.c.e));
        i1 = 2131428851;
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        localaq2.a(i1);
        localCheckBox.setOnCheckedChangeListener(new n(this));
        localObject = localaq2.c();
        break;
        if (this.i)
        {
          localCheckBox.setVisibility(8);
          localCheckBox.setChecked(false);
        }
        localaq2.a(2131428848, a(this, localEditText1, localEditText2, localCheckBox, locald, localr1, localc));
        i1 = 2131428848;
        continue;
        localaq2.a(2131428633, a(this, localEditText1, localEditText2, localCheckBox, locald, localr1, localc));
        i1 = 2131428633;
        continue;
        localCheckBox.setVisibility(8);
        localaq2.a(2131428651, a(this, localEditText1, localEditText2, localCheckBox, locald, localr1, localc));
        i1 = 2131428651;
      }
      aq localaq1 = new aq(this, (byte)0);
      localaq1.a(2131428970);
      localaq1.b(2131428971);
      localaq1.a(2131428994, null);
      localaq1.b(2131428996, new m(this));
      localObject = localaq1.c();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.p)
    {
      this.p = false;
      n = (short)(n - 1);
    }
  }

  protected void onPause()
  {
    if (this.k != null)
      this.k.d().dismiss();
    super.onPause();
  }

  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default:
    case 4:
    case 3:
    case 2131165204:
    }
    while (true)
    {
      return;
      TextView localTextView1 = (TextView)paramDialog.findViewById(2131230910);
      TextView localTextView2 = (TextView)paramDialog.findViewById(2131230912);
      if (g == null)
      {
        localTextView1.setText(null);
        localTextView2.setText(null);
      }
      else
      {
        String str1 = g.b();
        String str2 = g.c();
        if ((str1 == null) || (str1.length() == 0))
          localTextView1.setText(str2);
        while (true)
        {
          localTextView2.setText(str2);
          break;
          localTextView1.setText(str1);
        }
        if (g.b() == null)
          g.c();
        while (true)
        {
          paramDialog.setTitle(2131428965);
          break;
          g.b();
        }
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = g.b();
        paramDialog.setTitle(getString(2131428998, arrayOfObject));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.BaseContactActivity
 * JD-Core Version:    0.6.2
 */