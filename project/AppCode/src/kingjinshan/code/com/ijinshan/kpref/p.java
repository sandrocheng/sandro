package com.ijinshan.kpref;

import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class p extends BaseAdapter
  implements l
{
  private static final String a = "PreferenceGroupAdapter";
  private PreferenceGroup b;
  private List c;
  private ArrayList d;
  private r e = new r();
  private boolean f = false;
  private volatile boolean g = false;
  private Handler h = new Handler();
  private Runnable i = new q(this);

  public p(PreferenceGroup paramPreferenceGroup)
  {
    this.b = paramPreferenceGroup;
    this.b.a(this);
    this.c = new ArrayList();
    this.d = new ArrayList();
    c();
  }

  private Preference a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getCount()));
    for (Preference localPreference = null; ; localPreference = (Preference)this.c.get(paramInt))
      return localPreference;
  }

  private static r a(Preference paramPreference, r paramr)
  {
    if (paramr != null);
    for (r localr = paramr; ; localr = new r())
    {
      r.a(localr, paramPreference.getClass().getName());
      r.a(localr, paramPreference.s());
      r.b(localr, paramPreference.u());
      return localr;
    }
  }

  private void a(Preference paramPreference)
  {
    r localr = a(paramPreference, null);
    int j = Collections.binarySearch(this.d, localr);
    if (j < 0)
    {
      int k = j * -1 - 1;
      this.d.add(k, localr);
    }
  }

  private void a(List paramList, PreferenceGroup paramPreferenceGroup)
  {
    paramPreferenceGroup.f();
    int j = paramPreferenceGroup.b();
    for (int k = 0; k < j; k++)
    {
      Preference localPreference = paramPreferenceGroup.a(k);
      paramList.add(localPreference);
      if ((!this.f) && (!localPreference.L()))
      {
        r localr = a(localPreference, null);
        int m = Collections.binarySearch(this.d, localr);
        if (m < 0)
        {
          int n = m * -1 - 1;
          this.d.add(n, localr);
        }
      }
      if ((localPreference instanceof PreferenceGroup))
      {
        PreferenceGroup localPreferenceGroup = (PreferenceGroup)localPreference;
        if (localPreferenceGroup.e())
          a(paramList, localPreferenceGroup);
      }
      localPreference.a(this);
    }
  }

  private void c()
  {
    try
    {
      if (this.g)
        return;
      this.g = true;
      ArrayList localArrayList = new ArrayList(this.c.size());
      a(localArrayList, this.b);
      this.c = localArrayList;
      notifyDataSetChanged();
      try
      {
        this.g = false;
        notifyAll();
      }
      finally
      {
        localObject2 = finally;
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public final void a()
  {
    notifyDataSetChanged();
  }

  public final boolean areAllItemsEnabled()
  {
    return false;
  }

  public final void b()
  {
    this.h.removeCallbacks(this.i);
    this.h.post(this.i);
  }

  public final int getCount()
  {
    return this.c.size();
  }

  public final long getItemId(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getCount()));
    for (long l = -9223372036854775808L; ; l = a(paramInt).z())
      return l;
  }

  public final int getItemViewType(int paramInt)
  {
    if (!this.f)
      this.f = true;
    Preference localPreference = a(paramInt);
    int j;
    if (localPreference.L())
      j = -1;
    while (true)
    {
      return j;
      this.e = a(localPreference, this.e);
      j = Collections.binarySearch(this.d, this.e);
      if (j < 0)
        j = -1;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Preference localPreference = a(paramInt);
    this.e = a(localPreference, this.e);
    if (Collections.binarySearch(this.d, this.e) < 0);
    for (View localView = null; ; localView = paramView)
      return localPreference.a(localView, paramViewGroup);
  }

  public final int getViewTypeCount()
  {
    if (!this.f)
      this.f = true;
    return Math.max(1, this.d.size());
  }

  public final boolean hasStableIds()
  {
    return true;
  }

  public final boolean isEnabled(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getCount()));
    for (boolean bool = true; ; bool = a(paramInt).y())
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.p
 * JD-Core Version:    0.6.2
 */