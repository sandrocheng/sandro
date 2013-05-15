package com.avast.android.generic.notification;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.a.f;
import android.support.v4.a.m;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.v;

public class AvastNotificationFragment extends TrackedFragment
  implements LoaderManager.LoaderCallbacks
{
  private View a;
  private View b;
  private View c;
  private java.text.DateFormat d;
  private h e;
  private h f;
  private ListView g;
  private ListView h;
  private g i;
  private LoaderManager j;
  private boolean k;
  private Uri l;
  private j m;
  private AdapterView.OnItemClickListener n = new c(this);

  public String a()
  {
    return "/ms/notifications";
  }

  public void a(m paramm, Cursor paramCursor)
  {
    int i1;
    label47: int i2;
    label73: int i3;
    label100: int i4;
    label127: View localView3;
    int i5;
    switch (paramm.k())
    {
    default:
      View localView1 = this.b;
      if (this.e.isEmpty())
      {
        i1 = 8;
        localView1.setVisibility(i1);
        ListView localListView1 = this.g;
        if (!this.e.isEmpty())
          break label203;
        i2 = 8;
        localListView1.setVisibility(i2);
        View localView2 = this.c;
        if (!this.f.isEmpty())
          break label209;
        i3 = 8;
        localView2.setVisibility(i3);
        ListView localListView2 = this.h;
        if (!this.f.isEmpty())
          break label215;
        i4 = 8;
        localListView2.setVisibility(i4);
        localView3 = this.a;
        if (!this.e.isEmpty())
          break label221;
        boolean bool = this.f.isEmpty();
        i5 = 0;
        if (!bool)
          break label221;
      }
      break;
    case 10005:
    case 10006:
    }
    while (true)
    {
      localView3.setVisibility(i5);
      return;
      this.e.changeCursor(paramCursor);
      break;
      this.f.changeCursor(paramCursor);
      break;
      i1 = 0;
      break label47;
      label203: i2 = 0;
      break label73;
      label209: i3 = 0;
      break label100;
      label215: i4 = 0;
      break label127;
      label221: i5 = 8;
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.e = new h(this);
    this.f = new h(this);
    this.g.setAdapter(this.e);
    this.h.setAdapter(this.f);
    this.j = getActivity().getSupportLoaderManager();
    this.j.initLoader(10006, null, this);
    this.j.initLoader(10005, null, this);
    this.k = true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = android.text.format.DateFormat.getTimeFormat(getActivity());
    this.i = new g(this, new Handler());
  }

  public m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    Object localObject;
    switch (paramInt)
    {
    default:
      localObject = null;
    case 10005:
    case 10006:
    }
    while (true)
    {
      return localObject;
      localObject = new t(getActivity());
      continue;
      localObject = new f(getActivity(), com.avast.android.generic.e.a(this.l), null, "ongoing = ?", new String[] { "0" }, null);
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(v.g, paramViewGroup, false);
    this.m = ((j)ad.a(getActivity(), j.class));
    this.l = this.m.g();
    this.a = localView.findViewById(com.avast.android.generic.t.bb);
    this.a.setVisibility(8);
    TextView localTextView1 = (TextView)this.a.findViewById(com.avast.android.generic.t.aq);
    TextView localTextView2 = (TextView)this.a.findViewById(com.avast.android.generic.t.E);
    localTextView1.setText(getText(this.m.e()));
    localTextView2.setText(getText(this.m.f()));
    this.a.findViewById(com.avast.android.generic.t.as).setOnClickListener(new d(this));
    localView.findViewById(com.avast.android.generic.t.W).setOnClickListener(new e(this));
    this.g = ((ListView)localView.findViewById(com.avast.android.generic.t.aX));
    this.h = ((ListView)localView.findViewById(com.avast.android.generic.t.ai));
    this.g.setOnItemClickListener(this.n);
    this.h.setOnItemClickListener(this.n);
    this.b = localView.findViewById(com.avast.android.generic.t.ah);
    this.c = localView.findViewById(com.avast.android.generic.t.aC);
    return localView;
  }

  public void onLoaderReset(m paramm)
  {
    switch (paramm.k())
    {
    default:
    case 10005:
    case 10006:
    }
    while (true)
    {
      return;
      this.e.changeCursor(null);
      continue;
      this.f.changeCursor(null);
    }
  }

  public void onPause()
  {
    getActivity().getContentResolver().unregisterContentObserver(this.i);
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    if (!this.k)
      this.j.restartLoader(10005, null, this);
    while (true)
    {
      getActivity().getContentResolver().registerContentObserver(com.avast.android.generic.e.a(this.l), true, this.i);
      return;
      this.k = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.AvastNotificationFragment
 * JD-Core Version:    0.6.2
 */