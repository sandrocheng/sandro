package com.avast.android.mobilesecurity.app.globalactivitylog;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.a.f;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class GlobalActivityLogFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private t a;
  private Button b;
  private q c;
  private BroadcastReceiver d;
  private List e;
  private boolean[] f;
  private LinkedHashMap g;

  private LinkedHashMap a(Map paramMap)
  {
    LinkedList localLinkedList = new LinkedList(paramMap.entrySet());
    Collections.sort(localLinkedList, new o(this));
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    Iterator localIterator = localLinkedList.iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localLinkedHashMap.put(localEntry.getKey(), localEntry.getValue());
    }
    return localLinkedHashMap;
  }

  private void c()
  {
    Set localSet = this.a.aU();
    for (int i = 0; i < this.f.length; i++)
      this.f[i] = false;
    Iterator localIterator = localSet.iterator();
    label118: 
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      ArrayList localArrayList = new ArrayList(this.g.keySet());
      for (int j = 0; ; j++)
      {
        if (j >= localArrayList.size())
          break label118;
        if (locala.equals(localArrayList.get(j)))
        {
          this.f[j] = true;
          break;
        }
      }
    }
  }

  private void d()
  {
    List localList = a();
    Bundle localBundle = new Bundle();
    ArrayList localArrayList1 = new ArrayList(this.g.keySet());
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
      localArrayList2.add(Integer.valueOf(((a)localArrayList1.get(((Integer)localIterator.next()).intValue())).a()));
    localBundle.putIntegerArrayList("filter_types", localArrayList2);
    getLoaderManager().restartLoader(10007, localBundle, this);
  }

  public List a()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < this.f.length; i++)
      if (this.f[i] != 0)
        localArrayList.add(Integer.valueOf(i));
    return localArrayList;
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    this.c.changeCursor(paramCursor);
  }

  public String f()
  {
    return null;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.c = new q(getActivity());
    setListAdapter(this.c);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = ((t)ad.a(getActivity(), t.class));
    this.g = a(a.a(getResources()));
    this.e = new ArrayList(this.g.values());
    this.f = new boolean[this.e.size()];
    this.d = new n(this);
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.getIntegerArrayList("filter_types") != null));
    for (ArrayList localArrayList1 = paramBundle.getIntegerArrayList("filter_types"); ; localArrayList1 = null)
    {
      ArrayList localArrayList2;
      String str;
      if (localArrayList1 != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localArrayList2 = new ArrayList();
        localStringBuilder.append("type = -1").append(" OR ");
        Iterator localIterator1 = localArrayList1.iterator();
        while (localIterator1.hasNext())
        {
          Iterator localIterator2 = a.a(((Integer)localIterator1.next()).intValue()).b().iterator();
          while (localIterator2.hasNext())
          {
            y localy = (y)localIterator2.next();
            localStringBuilder.append("type = ?").append(" OR ");
            localArrayList2.add(String.valueOf(localy.a()));
          }
        }
        if (localStringBuilder.length() > 4)
          localStringBuilder.delete(-4 + localStringBuilder.length(), localStringBuilder.length());
        str = localStringBuilder.toString();
      }
      for (String[] arrayOfString = (String[])localArrayList2.toArray(new String[localArrayList2.size()]); ; arrayOfString = null)
      {
        return new f(getActivity(), com.avast.android.mobilesecurity.m.a(), null, str, arrayOfString, "date DESC");
        str = null;
      }
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903128, paramViewGroup, false);
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    this.c.a(paramInt);
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    this.c.changeCursor(null);
  }

  public void onResume()
  {
    super.onResume();
    d();
  }

  public void onStart()
  {
    super.onStart();
    android.support.v4.a.p.a(getActivity()).a(this.d, new IntentFilter("com.avast.android.mobilesecurity.app.globalactivitylog.ACTION_FILTER_SELECTED"));
  }

  public void onStop()
  {
    super.onStop();
    android.support.v4.a.p.a(getActivity()).a(this.d);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    getListView();
    c();
    this.b = ((Button)paramView.findViewById(2131165496));
    this.b.setOnClickListener(new p(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.globalactivitylog.GlobalActivityLogFragment
 * JD-Core Version:    0.6.2
 */