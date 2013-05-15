package com.avast.android.generic.filebrowser;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.a.m;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.generic.v;
import com.avast.android.generic.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

public abstract class AbstractFileBrowserFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks, AdapterView.OnItemLongClickListener
{
  protected a a;
  protected e b;
  protected String c;
  private d d;
  private boolean e;
  private ListView f;
  private LinkedList g;
  private f h;
  private View i;
  private View j;
  private Button k;
  private TextView l;
  private String m;
  private ActionMode n;
  private ActionMode.Callback o = new b(this);
  private ActionMode.Callback p;

  private void a(int paramInt)
  {
    if ((!this.c.equals("android.intent.action.GET_CONTENT")) && (this.p == null))
      this.f.setItemChecked(paramInt, false);
    while (true)
    {
      return;
      if ((this.c.equals("android.intent.action.GET_CONTENT")) && (((this.a.a(paramInt).e()) && (this.d.equals(d.a))) || ((this.a.a(paramInt).d()) && (this.d.equals(d.b)))))
        this.f.setItemChecked(paramInt, false);
      if (c().size() > 0)
      {
        if (this.n == null)
          this.n = getSherlockActivity().startActionMode(this.o);
        int i1 = c().size();
        ActionMode localActionMode = this.n;
        Resources localResources = getResources();
        int i2 = x.g;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i1);
        localActionMode.setSubtitle(localResources.getQuantityString(i2, i1, arrayOfObject));
      }
      else if (this.n != null)
      {
        this.n.finish();
      }
    }
  }

  private d h()
  {
    Object localObject = d.c;
    String str;
    if (getArguments().containsKey("pick"))
      str = getArguments().getString("pick");
    try
    {
      d locald = d.valueOf(str);
      localObject = locald;
      return localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localObject = d.c;
    }
  }

  private void i()
  {
    if (this.h != null)
    {
      this.l.setText(k());
      c(this.h);
    }
  }

  private String k()
  {
    return this.h.c();
  }

  private boolean l()
  {
    if ((this.c.equals("android.intent.action.GET_CONTENT")) && ((this.d.equals(d.a)) || (this.d.equals(d.c))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean m()
  {
    if ((this.c.equals("android.intent.action.GET_CONTENT")) && ((this.d.equals(d.b)) || (this.d.equals(d.c))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected abstract ActionMode.Callback a();

  protected abstract a a(Context paramContext, List paramList, String paramString, d paramd);

  protected abstract e a(int paramInt, Bundle paramBundle);

  public void a(m paramm, List paramList)
  {
    if (this.a == null)
    {
      this.a = a(getActivity(), paramList, this.c, this.d);
      setListAdapter(this.a);
    }
    while (true)
    {
      int i1 = c().size();
      if ((this.n != null) && (i1 > 0) && (this.c.equals("android.intent.action.GET_CONTENT")))
      {
        ActionMode localActionMode = this.n;
        Resources localResources = getResources();
        int i2 = x.g;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(i1);
        localActionMode.setSubtitle(localResources.getQuantityString(i2, i1, arrayOfObject));
      }
      this.i.setVisibility(8);
      this.j.setVisibility(0);
      d(this.b.w());
      return;
      this.a.a(paramList);
    }
  }

  protected void a(f paramf)
  {
    getLoaderManager().restartLoader(986198516, b(paramf), this);
  }

  protected final void a(boolean paramBoolean)
  {
    this.k.setEnabled(paramBoolean);
  }

  protected abstract Bundle b(f paramf);

  protected final List c()
  {
    SparseBooleanArray localSparseBooleanArray = this.f.getCheckedItemPositions();
    ArrayList localArrayList = new ArrayList();
    for (int i1 = 0; i1 < localSparseBooleanArray.size(); i1++)
    {
      int i2 = localSparseBooleanArray.keyAt(i1);
      if (localSparseBooleanArray.get(i2))
        localArrayList.add(Integer.valueOf(i2));
    }
    return localArrayList;
  }

  protected void c(f paramf)
  {
  }

  protected void d(f paramf)
  {
  }

  public boolean d()
  {
    if (e());
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      getActivity().setResult(0);
    }
  }

  protected final boolean e()
  {
    if (this.g.size() > 0)
      a((f)this.g.removeLast());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String f()
  {
    return "/filebrowser";
  }

  protected abstract String g();

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = BaseActivity.a(getArguments()).getAction();
    if (this.c == null)
      this.c = "";
    this.g = new LinkedList();
    this.d = h();
    this.e = getArguments().getBoolean("pick_multiple", false);
    this.p = a();
    this.m = (g() + "://");
    setRetainInstance(true);
  }

  public m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if (this.a != null)
      this.a.a(Collections.EMPTY_LIST);
    this.i.setVisibility(0);
    this.j.setVisibility(8);
    this.b = a(paramInt, paramBundle);
    this.h = this.b.w();
    i();
    return this.b;
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(v.z, paramViewGroup, false);
  }

  public boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1;
    if (this.c.equals("android.intent.action.GET_CONTENT"))
    {
      boolean bool2 = this.e;
      bool1 = false;
      if (!bool2);
    }
    else
    {
      if (!this.f.getCheckedItemPositions().get(paramInt))
        break label60;
      this.f.setItemChecked(paramInt, false);
    }
    while (true)
    {
      a(paramInt);
      bool1 = true;
      return bool1;
      label60: this.f.setItemChecked(paramInt, true);
    }
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if (this.n != null)
      a(paramInt);
    while (true)
    {
      return;
      this.f.setItemChecked(paramInt, false);
      f localf = this.a.a(paramInt);
      if (localf.e())
      {
        this.g.add(this.h);
        a(localf);
      }
      else if (l())
      {
        Intent localIntent = new Intent();
        localIntent.setData(Uri.parse(this.m + localf.b()));
        getActivity().setResult(-1, localIntent);
        getActivity().finish();
      }
    }
  }

  public void onLoaderReset(m paramm)
  {
    this.a.a(null);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.i = paramView.findViewById(t.aB);
    this.j = paramView.findViewById(t.aQ);
    this.l = ((TextView)paramView.findViewById(t.ab));
    this.k = ((Button)paramView.findViewById(t.aA));
    if (m())
    {
      this.k.setVisibility(0);
      this.k.setOnClickListener(new c(this));
    }
    if ((this.a != null) && (getListAdapter() == null))
      setListAdapter(this.a);
    i();
    getLoaderManager().initLoader(986198516, b(this.h), this);
    this.f = getListView();
    this.f.setChoiceMode(2);
    this.f.setOnItemLongClickListener(this);
    if (this.n != null)
      this.n = getSherlockActivity().startActionMode(this.o);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.filebrowser.AbstractFileBrowserFragment
 * JD-Core Version:    0.6.2
 */