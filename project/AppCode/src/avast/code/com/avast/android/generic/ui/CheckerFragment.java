package com.avast.android.generic.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.p;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ah;
import com.avast.android.generic.q;
import com.avast.android.generic.s;
import com.avast.android.generic.ui.b.d;
import com.avast.android.generic.ui.widget.ContextDialogFragment;
import com.avast.android.generic.ui.widget.f;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.generic.v;
import com.avast.android.generic.z;
import java.util.Iterator;
import java.util.List;

public abstract class CheckerFragment extends TrackedListFragment
  implements f
{
  private View a;
  private com.avast.android.generic.ui.b.a b;
  private int c = -1;
  private Button d;
  private Button e;
  private Button f;
  private boolean g = false;
  private TextView h;
  private LinearLayout i;
  private boolean j = false;
  private boolean k = false;
  private Boolean l = null;
  private LinearLayout m = null;

  public abstract void a();

  public void a(int paramInt)
  {
    if (!isAdded());
    while (true)
    {
      return;
      try
      {
        FragmentActivity localFragmentActivity = getActivity();
        if (localFragmentActivity != null)
        {
          d locald = (d)this.b.getItem(this.c);
          if (locald == null)
          {
            h();
          }
          else
          {
            a("checker", "click context item " + locald.a(), paramInt);
            if (locald.a(localFragmentActivity, this, paramInt))
            {
              a("checker", "problem solved " + locald.a(), 0);
              new Thread(new l(this, locald)).start();
            }
            else
            {
              a("checker", "problem solved later " + locald.a(), 0);
              h();
            }
          }
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
      }
    }
  }

  public void a(String paramString1, String paramString2, int paramInt)
  {
    if (f() != null)
      super.a(g(), paramString1, paramString2, paramInt);
  }

  public final void a(String paramString1, String paramString2, String paramString3, long paramLong)
  {
  }

  public abstract com.avast.android.generic.ui.b.a b();

  public abstract int c();

  public abstract int d();

  public abstract int e();

  public abstract String g();

  protected void h()
  {
    if (!isAdded());
    label112: List localList2;
    while (true)
    {
      return;
      FragmentActivity localFragmentActivity;
      try
      {
        localFragmentActivity = getActivity();
        if (localFragmentActivity == null)
          continue;
        if (this.f != null)
        {
          if (!this.g)
            break label112;
          this.f.setText(getString(z.bq));
        }
        while (true)
        {
          this.b.a(localFragmentActivity, this.g);
          List localList1 = this.b.a();
          if (localList1 == null)
            break;
          Iterator localIterator2 = localList1.iterator();
          bool = false;
          while (localIterator2.hasNext())
            if (!((d)localIterator2.next()).c())
              bool = true;
          this.f.setText(getString(z.W));
        }
      }
      catch (Exception localException)
      {
        com.avast.android.generic.util.t.a("AvastGeneric", "Error updating setup check rows", localException);
      }
      continue;
      boolean bool = false;
      if ((this.l == null) || (this.l.booleanValue() != bool))
      {
        ae localae = (ae)ad.a(localFragmentActivity, ah.class);
        localae.a("hasproblems", bool);
        localae.b();
        this.l = Boolean.valueOf(bool);
        Intent localIntent = new Intent("com.avast.android.generic.action.ACTION_PROBLEMS_CHANGED");
        p.a(localFragmentActivity).a(localIntent);
      }
      localList2 = this.b.a();
      if (this.k)
        break;
      this.i.setVisibility(8);
      if ((localList2 != null) && (localList2.size() != 0))
        break label297;
      i();
    }
    LinearLayout localLinearLayout = this.i;
    label290: label297: if (localList2 != null)
      if (localList2.size() != 0)
        break label652;
    while (true)
    {
      localLinearLayout.setVisibility(n);
      Iterator localIterator1 = localList2.iterator();
      int i1 = 0;
      int i2 = 1;
      while (true)
      {
        if (localIterator1.hasNext())
        {
          if (!((d)localIterator1.next()).b())
          {
            i3 = 0;
            break label642;
          }
        }
        else
        {
          if (i2 == 0)
          {
            a("checker", "non ignorable problem present", 0);
            this.d.setText(getString(z.ag));
            this.d.setOnClickListener(new j(this));
            this.e.setText(getString(c()));
            this.d.setVisibility(0);
            this.e.setVisibility(0);
            this.h.setText(e());
            this.h.setTextColor(getResources().getColor(q.d));
            this.h.setCompoundDrawablesWithIntrinsicBounds(0, 0, s.b, 0);
          }
          while (true)
          {
            this.b.notifyDataSetChanged();
            break;
            a("checker", "only ignorable problems", 0);
            this.d.setText(getString(z.cz));
            this.d.setOnClickListener(new k(this));
            this.e.setText(getString(c()));
            this.d.setVisibility(0);
            this.e.setVisibility(0);
            if (i1 != 0)
            {
              this.h.setText(e());
              this.h.setTextColor(getResources().getColor(q.d));
              this.h.setCompoundDrawablesWithIntrinsicBounds(0, 0, s.b, 0);
            }
            else
            {
              this.h.setText(z.ai);
              this.h.setTextColor(getResources().getColor(q.a));
              this.h.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            }
          }
        }
        int i3 = i2;
        break label642;
        n = 0;
        break label290;
        label642: i2 = i3;
        i1 = 1;
      }
      label652: int n = 8;
    }
  }

  public void i()
  {
    if (!isAdded());
    while (true)
    {
      return;
      a("checker", "success, launch next", 0);
      a();
    }
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (!isAdded());
    while (true)
    {
      return;
      if (paramInt1 == 2)
        com.avast.android.generic.util.a.a(this);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = b();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(v.p, paramViewGroup, false);
    b(localView);
    this.a = paramLayoutInflater.inflate(v.I, null);
    ((TextView)localView.findViewById(com.avast.android.generic.t.aa)).setText(d());
    this.h = ((TextView)this.a.findViewById(com.avast.android.generic.t.aq));
    this.h.setText(e());
    this.d = ((Button)this.a.findViewById(com.avast.android.generic.t.r));
    this.e = ((Button)this.a.findViewById(com.avast.android.generic.t.aW));
    this.f = ((Button)this.a.findViewById(com.avast.android.generic.t.ak));
    this.i = ((LinearLayout)this.a.findViewById(com.avast.android.generic.t.aI));
    if (this.j)
    {
      this.m = ((LinearLayout)this.a.findViewById(com.avast.android.generic.t.U));
      this.m.setVisibility(8);
      this.m = ((LinearLayout)this.a.findViewById(com.avast.android.generic.t.af));
      this.m.setVisibility(0);
    }
    while (true)
    {
      this.e.setOnClickListener(new h(this));
      this.f.setOnClickListener(new i(this));
      return localView;
      this.m = ((LinearLayout)this.a.findViewById(com.avast.android.generic.t.af));
      this.m.setVisibility(8);
      this.m = ((LinearLayout)this.a.findViewById(com.avast.android.generic.t.U));
      this.m.setVisibility(0);
    }
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    setListAdapter(null);
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (!isAdded());
    while (true)
    {
      return;
      FragmentActivity localFragmentActivity = getActivity();
      if (localFragmentActivity != null)
      {
        int n = paramInt - 1;
        this.c = n;
        d locald = (d)this.b.getItem(n);
        a("checker", "click row " + locald.a(), 0);
        List localList = locald.d(localFragmentActivity);
        String[] arrayOfString = new String[localList.size()];
        if (localList.size() > 0)
          for (int i1 = 0; i1 < localList.size(); i1++)
            arrayOfString[i1] = ((String)localList.get(i1));
        ContextDialogFragment localContextDialogFragment = new ContextDialogFragment();
        localContextDialogFragment.a(arrayOfString);
        localContextDialogFragment.a(getString(z.j));
        localContextDialogFragment.setTargetFragment(this, 0);
        localContextDialogFragment.show(getFragmentManager(), "contextDialogFragment");
      }
    }
  }

  public void onResume()
  {
    if (!isAdded());
    while (true)
    {
      return;
      h();
      super.onResume();
    }
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    getListView().addHeaderView(this.a);
    setListAdapter(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.CheckerFragment
 * JD-Core Version:    0.6.2
 */