package com.avast.android.mobilesecurity.app.scanner;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.a.p;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.notification.j;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.ui.widget.ContextDialogFragment;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.generic.util.k;
import com.avast.android.mobilesecurity.app.manager.AppDetailActivity;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.engine.v;
import com.avast.android.mobilesecurity.q;
import com.avast.android.mobilesecurity.t;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ScannerLogFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks, com.avast.android.generic.ui.widget.f, com.avast.android.generic.util.y, ap
{
  private static ArrayList m;
  private static ArrayList n;
  private com.avast.android.generic.util.x a;
  private Handler b;
  private ac c;
  private t d;
  private View e;
  private View f;
  private TextView g;
  private int h = -1;
  private int i;
  private int j;
  private int k;
  private int l;

  private boolean d()
  {
    boolean bool;
    if ((m != null) && (!m.isEmpty()))
    {
      Uri localUri = Uri.parse("package:" + (String)m.get(0));
      m.remove(0);
      startActivityForResult(new Intent("android.intent.action.DELETE", localUri), 1);
      bool = true;
    }
    while (true)
    {
      return bool;
      if ((n != null) && (!n.isEmpty()))
      {
        b.a(new f(getActivity()), n.toArray(new String[n.size()]));
        bool = true;
      }
      else
      {
        bool = false;
      }
    }
  }

  private void e()
  {
    WidgetControlProvider.a(getActivity());
  }

  public void a()
  {
    j localj = (j)ad.a(getActivity(), j.class);
    if (this.l != 0);
    for (long l1 = this.l; ; l1 = 2131427342L)
    {
      localj.a(l1);
      com.avast.android.generic.util.x localx1 = this.a;
      Uri localUri1 = q.c();
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = String.valueOf(com.avast.android.mobilesecurity.engine.x.l.a());
      localx1.startQuery(2, null, localUri1, null, "result = ?", arrayOfString1, null);
      com.avast.android.generic.util.x localx2 = this.a;
      Uri localUri2 = q.a();
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = ("" + com.avast.android.mobilesecurity.engine.x.l.a());
      localx2.startDelete(3, null, localUri2, "result != ?", arrayOfString2);
      return;
    }
  }

  public void a(int paramInt)
  {
    try
    {
      ae localae = (ae)((List)this.c.getItem(this.h)).get(0);
      switch (paramInt)
      {
      case 0:
        if (TextUtils.isEmpty(localae.b))
        {
          Intent localIntent = new Intent("android.intent.action.DELETE");
          localIntent.setData(Uri.fromFile(new File(localae.c)));
          startActivity(localIntent);
        }
        else
        {
          startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + localae.b)));
        }
        break;
      case 1:
        if (TextUtils.isEmpty(localae.b));
        for (Uri localUri3 = Uri.fromFile(new File(localae.c)); ; localUri3 = Uri.parse("package:" + localae.b))
        {
          FragmentTransaction localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
          Fragment localFragment = getActivity().getSupportFragmentManager().findFragmentByTag("reportDialog");
          if (localFragment != null)
            localFragmentTransaction.remove(localFragment);
          Bundle localBundle = new Bundle();
          localBundle.putParcelable("uri", localUri3);
          localBundle.putString("result", "" + localae.e.a());
          localBundle.putString("infectionType", localae.d);
          new ReportDialogFragment(localBundle).show(localFragmentTransaction, "reportDialog");
          break;
        }
      case 2:
        if (localae.e != com.avast.android.mobilesecurity.engine.x.l)
        {
          if (TextUtils.isEmpty(localae.b))
          {
            ContentResolver localContentResolver2 = getActivity().getContentResolver();
            Uri localUri2 = q.a();
            String[] arrayOfString2 = new String[1];
            arrayOfString2[0] = localae.c;
            localContentResolver2.delete(localUri2, "name = ?", arrayOfString2);
          }
          while (getActivity() != null)
          {
            b.a(new ab(getActivity(), null), new ae[] { localae });
            break;
            ContentResolver localContentResolver1 = getActivity().getContentResolver();
            Uri localUri1 = q.a();
            String[] arrayOfString1 = new String[1];
            arrayOfString1[0] = localae.b;
            localContentResolver1.delete(localUri1, "packageName = ?", arrayOfString1);
          }
        }
      case 3:
        if (!TextUtils.isEmpty(localae.b))
          AppDetailActivity.call(getActivity(), localae.b, 0, 2131165405);
        break;
      }
      label488: return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      break label488;
    }
  }

  public void a(int paramInt1, Object paramObject, Cursor paramCursor, Uri paramUri, int paramInt2)
  {
    if (paramInt1 == 2)
    {
      m = new ArrayList();
      n = new ArrayList();
      while (paramCursor.moveToNext())
      {
        String str = paramCursor.getString(paramCursor.getColumnIndex("packageName"));
        if (str != null)
          m.add(str);
        else
          n.add(paramCursor.getString(paramCursor.getColumnIndex("name")));
      }
      paramCursor.close();
      d();
    }
    if ((paramInt1 == 3) && (paramInt2 > 0))
    {
      t localt = (t)ad.a(getActivity(), t.class);
      localt.d(0);
      localt.e(0);
      e();
    }
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    if (getActivity() == null)
      return;
    ArrayList localArrayList;
    HashMap localHashMap;
    label134: long l1;
    String str1;
    String str2;
    String str3;
    v localv;
    com.avast.android.mobilesecurity.engine.x localx;
    int i8;
    if (paramm.k() == 10002)
    {
      this.i = 0;
      this.j = 0;
      this.k = 0;
      localArrayList = new ArrayList();
      localHashMap = new HashMap();
      if (paramCursor.getCount() > 0)
        if (paramCursor.moveToFirst())
        {
          int i2 = paramCursor.getColumnIndex("_id");
          int i3 = paramCursor.getColumnIndex("packageName");
          int i4 = paramCursor.getColumnIndex("name");
          int i5 = paramCursor.getColumnIndex("result");
          int i6 = paramCursor.getColumnIndex("infection");
          int i7 = paramCursor.getColumnIndex("detection_type");
          l1 = paramCursor.getLong(i2);
          str1 = paramCursor.getString(i3);
          str2 = paramCursor.getString(i4);
          str3 = paramCursor.getString(i6);
          localv = v.a(paramCursor.getInt(i7));
          localx = com.avast.android.mobilesecurity.engine.x.a(paramCursor.getInt(i5));
          if (!TextUtils.isEmpty(str1))
            break label669;
          i8 = 0;
        }
    }
    for (String str4 = str2; ; str4 = str1)
    {
      Object localObject = (List)localHashMap.get(str4);
      if (localObject == null)
      {
        localObject = new ArrayList();
        localHashMap.put(str4, localObject);
        localArrayList.add(str4);
        if (localx != com.avast.android.mobilesecurity.engine.x.l)
          break label538;
        if (i8 != 0)
          this.i = (1 + this.i);
      }
      else
      {
        label287: ae localae = new ae(null);
        localae.a = l1;
        localae.b = str1;
        localae.c = str2;
        localae.d = str3;
        localae.e = localx;
        localae.f = localv;
        ((List)localObject).add(localae);
        if (paramCursor.moveToNext())
          break label134;
        this.c.a(localArrayList, localHashMap);
        TextView localTextView = this.g;
        Resources localResources = getResources();
        int i1 = localArrayList.size();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(localArrayList.size());
        localTextView.setText(localResources.getQuantityString(2131689492, i1, arrayOfObject));
        if (!((t)ad.a(getActivity(), t.class)).am())
          break label551;
        ((ImageView)this.e.findViewById(2131165273)).setImageResource(2130837799);
        ((Button)this.e.findViewById(2131165620)).setBackgroundResource(2130837888);
        this.g.setTextColor(getResources().getColor(2131296273));
      }
      while (true)
      {
        this.f.setVisibility(8);
        if (getView() == null)
          break;
        getListView().setVisibility(0);
        break;
        this.j = (1 + this.j);
        break label287;
        label538: this.k = (1 + this.k);
        break label287;
        label551: ((ImageView)this.e.findViewById(2131165273)).setImageResource(2130837800);
        ((Button)this.e.findViewById(2131165620)).setBackgroundResource(2130837895);
        this.g.setTextColor(getResources().getColor(2131296274));
      }
      this.c.a(null, null);
      this.b.post(new aa(this));
      if (getActivity() != null)
        p.a(getActivity()).a(new Intent("com.avast.android.mobilesecurity.app.scanner.ACTION_LOG_CLEARED"));
      e();
      break;
      break;
      label669: i8 = 1;
    }
  }

  public int a_()
  {
    return 2131493373;
  }

  public void c()
  {
  }

  public String f()
  {
    return "/ms/scanner/log";
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getListView().addHeaderView(this.e);
    setListAdapter(this.c);
    this.a = new com.avast.android.generic.util.x(getActivity().getContentResolver(), this);
    getActivity().getSupportLoaderManager().initLoader(10002, null, this);
    if (paramBundle != null)
    {
      m = (ArrayList)paramBundle.getSerializable("appsToDelete");
      n = (ArrayList)paramBundle.getSerializable("filesToDelete");
      this.l = paramBundle.getInt("notificationId");
      this.h = paramBundle.getInt("selectedPosition");
      d();
    }
    while (true)
    {
      return;
      Intent localIntent = BaseActivity.a(getArguments());
      if (localIntent.hasExtra("notificationId"))
      {
        this.l = localIntent.getIntExtra("notificationId", 0);
        if (this.l != 0)
          ((j)ad.a(getActivity(), j.class)).a(this.l);
      }
    }
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    com.avast.android.generic.util.m.b("ScannerLogFragment", "onActivityResult(), request: " + paramInt1 + ", result: " + paramInt2 + ", data: " + paramIntent);
    if (paramInt1 == 1);
    for (boolean bool = d(); ; bool = false)
    {
      if (bool)
        ((BaseActivity)getActivity()).f();
      return;
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.c = new ac(getActivity());
    this.b = new Handler();
    this.d = ((t)ad.a(getActivity(), t.class));
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new android.support.v4.a.f(getActivity(), q.a(), null, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903138, paramViewGroup, false);
    this.f = localView.findViewById(2131165480);
    localView.findViewById(2131165427).setOnClickListener(new y(this));
    com.avast.android.generic.ae localae = (com.avast.android.generic.ae)ad.a(getActivity(), com.avast.android.generic.ae.class);
    ((TextView)localView.findViewById(2131165519)).setText("" + localae.b("lastScanObjects", 0));
    int i1 = localae.b("lastScanTime", 0);
    TextView localTextView = (TextView)localView.findViewById(2131165521);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i1 / 60);
    arrayOfObject[1] = Integer.valueOf(i1 % 60);
    localTextView.setText(String.format("%d:%02d", arrayOfObject));
    long l1 = localae.b("lastScanDate", 0L);
    if (l1 == 0L)
      ((TextView)localView.findViewById(2131165528)).setText(getText(2131493376));
    while (true)
    {
      this.e = paramLayoutInflater.inflate(2130903178, null);
      this.g = ((TextView)this.e.findViewById(2131165275));
      this.e.findViewById(2131165620).setOnClickListener(new z(this));
      return localView;
      ((TextView)localView.findViewById(2131165528)).setText(k.a(getActivity(), l1, 131089));
    }
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    this.h = (paramInt - 1);
    ae localae = (ae)((List)this.c.getItem(this.h)).get(0);
    if (!TextUtils.isEmpty(localae.b));
    for (int i1 = 3; ; i1 = 2)
    {
      if (localae.e != com.avast.android.mobilesecurity.engine.x.l)
        i1++;
      String[] arrayOfString = new String[i1];
      if (TextUtils.isEmpty(localae.b))
      {
        arrayOfString[0] = getString(2131493405);
        arrayOfString[1] = getString(2131493406);
        if (localae.e == com.avast.android.mobilesecurity.engine.x.l)
          break label204;
        arrayOfString[2] = getString(2131493407);
        if (arrayOfString.length == 4)
          arrayOfString[3] = getString(2131493352);
      }
      while (true)
      {
        ContextDialogFragment localContextDialogFragment = new ContextDialogFragment();
        localContextDialogFragment.a(arrayOfString);
        localContextDialogFragment.a(getString(2131493129));
        localContextDialogFragment.setTargetFragment(this, 0);
        localContextDialogFragment.show(getFragmentManager(), "contextDialogFragment");
        return;
        arrayOfString[0] = getString(2131493404);
        break;
        label204: if (arrayOfString.length == 3)
          arrayOfString[2] = getString(2131493352);
      }
    }
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    if (paramm.k() == 10002)
      this.c.a(null, null);
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("selectedPosition", this.h);
    paramBundle.putSerializable("appsToDelete", m);
    paramBundle.putSerializable("filesToDelete", n);
    paramBundle.putInt("notificationId", this.l);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ScannerLogFragment
 * JD-Core Version:    0.6.2
 */