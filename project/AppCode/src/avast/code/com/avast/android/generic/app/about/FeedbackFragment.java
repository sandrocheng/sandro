package com.avast.android.generic.app.about;

import android.app.ProgressDialog;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.avast.android.generic.g.c;
import com.avast.android.generic.internet.a.a;
import com.avast.android.generic.o;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.BaseMultiPaneActivity;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.SelectorRow;
import com.avast.android.generic.util.ac;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.v;
import com.avast.android.generic.z;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class FeedbackFragment extends TrackedFragment
{
  private static final Pattern a = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");
  private int b;
  private ScrollView c;
  private EditText d;
  private TextView e;
  private TextView f;
  private EditText g;
  private EditText h;
  private TextView i;
  private TextView j;
  private SelectorRow k;
  private CheckBoxRow l;
  private CheckBoxRow m;
  private CheckBoxRow n;
  private Button o;
  private Button p;
  private byte[] q;
  private byte[] r;
  private c s;
  private n t;
  private ProgressDialog u;
  private boolean v;

  private void a(int paramInt)
  {
    this.b = paramInt;
    if (this.b == 3)
    {
      a(this.l);
      a(this.m);
      a(this.n);
    }
    while (true)
    {
      if (this.b == 3)
        this.i.setVisibility(8);
      return;
      if (this.b == 2)
      {
        a(this.l);
        a(this.n);
        this.m.setEnabled(true);
      }
      else
      {
        this.l.setEnabled(true);
        this.m.setEnabled(true);
        this.n.setEnabled(true);
      }
    }
  }

  private void a(n paramn)
  {
    g();
    this.u = new ProgressDialog(getActivity());
    this.u.setCancelable(true);
    this.u.setOnCancelListener(new l(this, paramn));
    this.u.setMessage(getString(z.bt));
    this.u.show();
  }

  private void a(CheckBoxRow paramCheckBoxRow)
  {
    paramCheckBoxRow.b(true);
    paramCheckBoxRow.setEnabled(false);
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Toast.makeText(getActivity(), z.cs, 0).show();
      j();
    }
    while (true)
    {
      return;
      Toast.makeText(getActivity(), z.g, 1).show();
    }
  }

  private void c()
  {
    ac localac;
    long l1;
    if (getActivity() != null)
    {
      localac = new ac(getActivity());
      if ((this.q == null) || (this.r == null))
        break label317;
      if (!this.m.c())
        break label312;
      l1 = 0L + this.q.length;
      if (this.n.c())
        l1 += this.r.length;
      String str2 = localac.a(this.q.length);
      String str3 = localac.a(this.r.length);
      this.m.d(getString(z.ax) + ", " + str2);
      this.n.d(getString(z.bc) + ", " + str3);
    }
    while (true)
    {
      if (this.s != null)
      {
        if (this.l.c())
          l1 += this.s.w();
        String str1 = localac.a(this.s.w());
        this.l.d(getString(z.as) + ", " + str1);
      }
      if (l1 > 0L)
        this.o.setText(getString(z.bR) + "\n" + localac.a(l1));
      while (true)
      {
        return;
        this.o.setText(getString(z.bR));
      }
      label312: l1 = 0L;
      break;
      label317: l1 = 0L;
    }
  }

  private void c(View paramView)
  {
    this.d = ((EditText)paramView.findViewById(t.o));
    this.e = ((TextView)paramView.findViewById(t.e));
    this.f = ((TextView)paramView.findViewById(t.L));
    this.g = ((EditText)paramView.findViewById(t.aL));
    this.h = ((EditText)paramView.findViewById(t.aH));
    this.i = ((TextView)paramView.findViewById(t.bd));
    this.j = ((TextView)paramView.findViewById(t.A));
    this.d.addTextChangedListener(new f(this));
    TextView localTextView = this.i;
    int i1 = z.cV;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(20);
    localTextView.setText(getString(i1, arrayOfObject));
    this.h.addTextChangedListener(new g(this));
  }

  private void d(View paramView)
  {
    this.k = ((SelectorRow)paramView.findViewById(t.t));
    this.k.c(getString(z.bM));
    this.k.a(getString(z.bL));
    this.k.a(o.b);
    int[] arrayOfInt = { 1, 2, 3, 4 };
    this.k.a(arrayOfInt);
    this.b = this.k.c();
    this.k.a(new h(this));
  }

  private boolean d()
  {
    this.h.setText(this.h.getText().toString().trim());
    int i1;
    boolean bool;
    if (!f())
    {
      this.i.setVisibility(0);
      i1 = this.j.getTop() + ((View)this.j.getParent()).getTop();
      bool = false;
    }
    while (true)
    {
      this.d.setText(this.d.getText().toString().trim());
      if (!e())
      {
        this.e.setVisibility(0);
        i1 = this.f.getTop() + ((View)this.f.getParent()).getTop();
        bool &= false;
      }
      if (!bool)
        this.c.scrollTo(0, i1);
      return bool;
      bool = true;
      i1 = 0;
    }
  }

  private void e(View paramView)
  {
    i locali = new i(this);
    this.l = ((CheckBoxRow)paramView.findViewById(t.T));
    this.m = ((CheckBoxRow)paramView.findViewById(t.ag));
    this.n = ((CheckBoxRow)paramView.findViewById(t.aP));
    this.l.a(null);
    this.l.c(getString(z.cF));
    this.l.d(getString(z.as));
    this.l.b(true);
    this.l.a(locali);
    this.m.a(null);
    this.m.c(getString(z.bI));
    this.m.d(getString(z.ax));
    this.m.a(locali);
    this.n.a(locali);
  }

  private boolean e()
  {
    if ((this.d.getText().length() == 0) || (a.matcher(this.d.getText().toString()).matches()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void f(View paramView)
  {
    this.o = ((Button)paramView.findViewById(t.ba));
    this.p = ((Button)paramView.findViewById(t.bc));
    this.o.setOnClickListener(new j(this));
    this.p.setOnClickListener(new k(this));
  }

  private boolean f()
  {
    if ((this.b == 3) || (this.h.getText().length() > 20));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void g()
  {
    if (this.u != null)
    {
      this.u.dismiss();
      this.u = null;
    }
  }

  public String a()
  {
    return "/ms/about/feedback";
  }

  public int a_()
  {
    return z.B;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getActivity().getWindow().setSoftInputMode(1);
    if ((this.t != null) && (!this.t.getStatus().equals(AsyncTask.Status.FINISHED)))
      a(this.t);
    this.s = a.a(null, getActivity(), getArguments().getBundle("community_iq"));
    if ((this.q == null) || (this.r == null))
      new m(this, null).execute(new Void[0]);
    c();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    if ((paramBundle != null) && (paramBundle.containsKey("zipped_log")) && (paramBundle.containsKey("zipped_dumpsys")))
    {
      this.q = paramBundle.getByteArray("zipped_log");
      this.r = paramBundle.getByteArray("zipped_dumpsys");
    }
    this.v = getArguments().getBoolean("not_ams", false);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.c = ((ScrollView)paramLayoutInflater.inflate(v.m, paramViewGroup, false));
    return this.c;
  }

  public void onDestroy()
  {
    super.onDestroy();
    if ((this.t != null) && (!this.t.getStatus().equals(AsyncTask.Status.FINISHED)))
      this.t.cancel(true);
  }

  public void onDetach()
  {
    super.onDetach();
    g();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    if ((this.q != null) && (this.r != null))
    {
      paramBundle.putByteArray("zipped_log", this.q);
      paramBundle.putByteArray("zipped_dumpsys", this.r);
    }
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if ((this.v) && (!(getActivity() instanceof BaseMultiPaneActivity)))
      paramView.findViewById(t.z).setVisibility(8);
    c(paramView);
    d(paramView);
    e(paramView);
    f(paramView);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.FeedbackFragment
 * JD-Core Version:    0.6.2
 */