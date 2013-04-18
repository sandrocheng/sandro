package com.keniu.security.software;

import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.StatFs;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.main.MainActivity;
import com.keniu.security.malware.bz;
import com.keniu.security.util.aq;
import com.keniu.security.util.ax;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class SoftwareManager2 extends BaseTitleActivity
{
  private TextView A;
  private PopupWindow B;
  private LayoutInflater C;
  private int D;
  private String E;
  private boolean F = false;
  private final int G = 256;
  private final int H = 257;
  private final int I = 259;
  private final String[] J = { "Google Inc." };
  final Handler a = new r(this);
  AdapterView.OnItemClickListener b = new x(this);
  private final int c = 0;
  private final int d = 1;
  private final int e = 2;
  private final int f = 3;
  private final int g = 4;
  private final int h = 5;
  private final int i = 0;
  private final int j = 1;
  private int k;
  private int l;
  private int m;
  private int n;
  private int o;
  private int p;
  private int q;
  private ArrayList r = new ArrayList();
  private ArrayList s = new ArrayList();
  private ArrayList t = new ArrayList();
  private aj u;
  private aj v;
  private aj w;
  private af x;
  private ListView y;
  private TextView z;

  private void a()
  {
    this.z = ((TextView)findViewById(2131231011));
    StatFs localStatFs1 = new StatFs("/data");
    long l1 = localStatFs1.getFreeBlocks() * localStatFs1.getBlockSize();
    File localFile = new File("/sdcard");
    if ((localFile.exists()) && (localFile.canRead()))
    {
      StatFs localStatFs2 = new StatFs("/sdcard");
      long l2 = localStatFs2.getFreeBlocks() * localStatFs2.getBlockSize();
      TextView localTextView2 = this.z;
      String str2 = getString(2131429132);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = ax.c(l1);
      arrayOfObject2[1] = ax.c(l2);
      localTextView2.setText(String.format(str2, arrayOfObject2));
    }
    while (true)
    {
      return;
      TextView localTextView1 = this.z;
      String str1 = getString(2131429133);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = ax.c(l1);
      localTextView1.setText(String.format(str1, arrayOfObject1));
    }
  }

  private void a(String paramString)
  {
    try
    {
      Intent localIntent = getPackageManager().getLaunchIntentForPackage(paramString);
      if (localIntent != null)
        startActivity(localIntent);
      label18: return;
    }
    catch (Exception localException)
    {
      break label18;
    }
  }

  private void a(Comparator paramComparator)
  {
    ArrayList localArrayList = new ArrayList();
    o localo1 = (o)this.r.get(0);
    localArrayList.clear();
    for (int i1 = 1; i1 < this.r.size(); i1++)
      localArrayList.add(this.r.get(i1));
    Collections.sort(localArrayList, paramComparator);
    this.r.clear();
    this.r.add(localo1);
    Iterator localIterator1 = localArrayList.iterator();
    while (localIterator1.hasNext())
    {
      o localo6 = (o)localIterator1.next();
      this.r.add(localo6);
    }
    o localo2 = (o)this.t.get(0);
    localArrayList.clear();
    for (int i2 = 1; i2 < this.t.size(); i2++)
      localArrayList.add(this.t.get(i2));
    Collections.sort(localArrayList, paramComparator);
    this.t.clear();
    this.t.add(localo2);
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      o localo5 = (o)localIterator2.next();
      this.t.add(localo5);
    }
    o localo3 = (o)this.s.get(0);
    localArrayList.clear();
    for (int i3 = 1; i3 < this.s.size(); i3++)
      localArrayList.add(this.s.get(i3));
    Collections.sort(localArrayList, paramComparator);
    this.s.clear();
    this.s.add(localo3);
    Iterator localIterator3 = localArrayList.iterator();
    while (localIterator3.hasNext())
    {
      o localo4 = (o)localIterator3.next();
      this.s.add(localo4);
    }
    this.u.notifyDataSetChanged();
    this.v.notifyDataSetChanged();
    this.w.notifyDataSetChanged();
  }

  private void b()
  {
    new ar(this, this.a).start();
  }

  private void b(String paramString)
  {
    o localo = (o)this.y.getAdapter().getItem(0);
    if (localo.b().equalsIgnoreCase("appCate"))
    {
      Intent localIntent = new Intent("android.intent.action.DELETE");
      localIntent.setData(Uri.parse("package:".concat(paramString)));
      startActivityForResult(localIntent, 1);
    }
    while (true)
    {
      return;
      if (localo.b().equalsIgnoreCase("appSysCate"))
        showDialog(3);
      else if (localo.b().equalsIgnoreCase("appInnerSysCate"))
        f();
    }
  }

  private Dialog c()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427865);
    localaq.b(2131429136);
    localaq.c(2131427869, new y(this));
    localaq.a(new z(this));
    return localaq.c();
  }

  private Dialog d()
  {
    View localView = this.C.inflate(2130903097, null);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
    ((TextView)localView.findViewById(2131231003)).setText(getString(2131429135));
    TextView localTextView = (TextView)localView.findViewById(2131231004);
    localTextView.setVisibility(0);
    localTextView.setText(2131427937);
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    localTextView.setOnClickListener(new aa(this));
    localCheckBox.setChecked(com.ijinshan.kpref.t.b(this).getBoolean("hidesoftwareremoverootdialog", false));
    localCheckBox.setOnClickListener(new ab(this));
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131428684);
    localaq.a(localView);
    localaq.b(getString(2131429171), new ac(this));
    localaq.a(false);
    return localaq.c();
  }

  private Dialog e()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131427865);
    localaq.b(2131429134);
    localaq.a(2131428265, new ad(this));
    localaq.c(2131428266, new ae(this));
    localaq.a(new s(this));
    return localaq.c();
  }

  private void f()
  {
    if (bz.a().e());
    try
    {
      o localo = (o)this.y.getAdapter().getItem(this.D);
      if (localo.e().contains("/data/cust/app/"))
      {
        bz.a().b("/cust_backup/image/cust_data/unicom/cn/app", "/cust_backup");
        bz.a().b("\"" + localo.e() + "\"");
        bz.a().c(localo.f());
        HandlerThread localHandlerThread = new HandlerThread("systemUninstall");
        localHandlerThread.start();
        new Handler(localHandlerThread.getLooper()).postDelayed(new av(this, localo), 2000L);
      }
      while (true)
      {
        label147: return;
        if (localo.e().contains("/cust/chinatelecom/cn/delapp"))
        {
          bz.a().b("/cust/chinatelecom/cn/delapp", "/cust");
          bz.a().b("\"" + localo.e() + "\"");
          break;
        }
        bz.a().f();
        bz.a().b("\"" + localo.e() + "\"");
        break;
        bz.a();
        if (!bz.b())
          showDialog(4);
        else
          Toast.makeText(this, 2131429188, 0).show();
      }
    }
    catch (Exception localException)
    {
      break label147;
    }
  }

  private Dialog g()
  {
    o localo = (o)this.y.getAdapter().getItem(this.D);
    if (localo == null);
    aq localaq;
    for (Object localObject = null; ; localObject = localaq.c())
    {
      return localObject;
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      if (((o)this.y.getAdapter().getItem(0)).b().equalsIgnoreCase("appCate"))
      {
        localArrayList1.add(getString(2131428697));
        localArrayList2.add(new t(this));
      }
      localArrayList1.add(getString(2131428695));
      localArrayList2.add(new u(this));
      localArrayList1.add(getString(2131428696));
      localArrayList2.add(new v(this));
      String[] arrayOfString = (String[])localArrayList1.toArray(new String[0]);
      localaq = new aq(this, (byte)0);
      localaq.a(localo.b());
      localaq.a(arrayOfString, new w(this, localo, localArrayList2));
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.B != null) && (this.B.isShowing()))
    {
      this.B.dismiss();
      this.B = null;
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1)
      if (paramInt2 != 0);
    while (true)
    {
      try
      {
        String str2 = ((o)this.y.getAdapter().getItem(this.D)).a();
        getPackageManager().getPackageInfo(str2, 256);
        return;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        ((aj)this.y.getAdapter()).a(this.D);
        continue;
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
        continue;
      }
      if ((paramInt1 == 2) && (paramInt2 == -1))
        try
        {
          String str1 = ((o)this.y.getAdapter().getItem(this.D)).a();
          getPackageManager().getPackageInfo(str1, 256);
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          ((aj)this.y.getAdapter()).a(this.D);
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
        }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903100, 2131429126);
    a.i(this, "sm");
    this.C = getLayoutInflater();
    this.y = ((ListView)findViewById(2131231013));
    this.A = ((TextView)findViewById(2131231012));
    this.y.setOnItemClickListener(this.b);
    this.y.setSelector(2130837790);
    a();
    new ar(this, this.a).start();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default:
      localObject = g();
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return localObject;
      localObject = g();
      continue;
      aq localaq3 = new aq(this, (byte)0);
      localaq3.a(2131427865);
      localaq3.b(2131429134);
      localaq3.a(2131428265, new ad(this));
      localaq3.c(2131428266, new ae(this));
      localaq3.a(new s(this));
      localObject = localaq3.c();
      continue;
      aq localaq2 = new aq(this, (byte)0);
      localaq2.a(2131427865);
      localaq2.b(2131429136);
      localaq2.c(2131427869, new y(this));
      localaq2.a(new z(this));
      localObject = localaq2.c();
      continue;
      View localView = this.C.inflate(2130903097, null);
      CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
      ((TextView)localView.findViewById(2131231003)).setText(getString(2131429135));
      TextView localTextView = (TextView)localView.findViewById(2131231004);
      localTextView.setVisibility(0);
      localTextView.setText(2131427937);
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView.setOnClickListener(new aa(this));
      localCheckBox.setChecked(com.ijinshan.kpref.t.b(this).getBoolean("hidesoftwareremoverootdialog", false));
      localCheckBox.setOnClickListener(new ab(this));
      aq localaq1 = new aq(this, (byte)0);
      localaq1.a(2131428684);
      localaq1.a(localView);
      localaq1.b(getString(2131429171), new ac(this));
      localaq1.a(false);
      localObject = localaq1.c();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.F = true;
    this.r.clear();
    this.s.clear();
    this.t.clear();
    bz.a().g();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (paramInt == 4)
      if (this.B != null)
      {
        this.B.dismiss();
        this.B = null;
        bool = true;
      }
    while (true)
    {
      return bool;
      if ((this.y.getAdapter() != null) && (!this.y.getAdapter().equals(this.x)))
      {
        this.z.setVisibility(0);
        this.A.setVisibility(8);
        a();
        this.y.setAdapter(this.x);
      }
      while (true)
      {
        bool = true;
        break;
        Intent localIntent = new Intent();
        localIntent.setClass(this, MainActivity.class);
        startActivity(localIntent);
      }
      bool = super.onKeyDown(paramInt, paramKeyEvent);
    }
  }

  protected void onPause()
  {
    if (this.B != null)
    {
      this.B.dismiss();
      this.B = null;
    }
    super.onPause();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.SoftwareManager2
 * JD-Core Version:    0.6.2
 */