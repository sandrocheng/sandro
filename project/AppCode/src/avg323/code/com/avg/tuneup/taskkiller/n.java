package com.avg.tuneup.taskkiller;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.avg.a.e;
import com.avg.a.f;
import com.avg.a.g;
import com.avg.ui.general.fragments.FragmentTabHost;
import com.avg.ui.general.fragments.i;
import com.avg.ui.general.fragments.j;
import java.util.ArrayList;

public class n extends i
{
  private String b;
  private String c;

  protected int F()
  {
    return f.tabs_fragment;
  }

  protected j[] G()
  {
    j[] arrayOfj = new j[2];
    arrayOfj[0] = new j(this.b, d.class, null);
    arrayOfj[1] = new j(this.c, a.class, null);
    return arrayOfj;
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.b = this.ag.getString(g.title_task_killer_Tasks);
    this.c = this.ag.getString(g.title_task_killer_Processes);
    View localView = super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.ag.o())
      a(this.ag.getString(g.title_task_killer_preference), localView, e.fragment_title);
    return localView;
  }

  public ArrayList a(Object paramObject)
  {
    d locald = (d)this.a.getCurrenTabFragment();
    if ((locald instanceof a));
    for (ArrayList localArrayList = null; ; localArrayList = locald.a(paramObject))
      return localArrayList;
  }

  public boolean b(int paramInt)
  {
    d locald = (d)this.a.getCurrenTabFragment();
    if ((locald instanceof a));
    for (boolean bool = false; ; bool = locald.b(paramInt))
      return bool;
  }

  public boolean e(MenuItem paramMenuItem)
  {
    d locald = (d)this.a.getCurrenTabFragment();
    if ((locald instanceof a));
    for (boolean bool = false; ; bool = locald.e(paramMenuItem))
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.n
 * JD-Core Version:    0.6.2
 */