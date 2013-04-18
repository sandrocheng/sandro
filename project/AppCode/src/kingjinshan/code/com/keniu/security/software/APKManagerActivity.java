package com.keniu.security.software;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.ijinshan.kpref.t;
import com.keniu.security.util.aq;
import com.keniu.security.util.ax;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class APKManagerActivity extends Activity
{
  private static final int s = 0;
  private static final int t = 1;
  private static final int u = 0;
  private static final int v = 0;
  private static final int w = 1;
  private static final int x = 2;
  private static final int y = 3;
  private static final int z = 4;
  private Handler A = new b(this);
  private ProgressBar a;
  private TextView b;
  private List c = null;
  private List d = null;
  private List e = null;
  private k f = null;
  private int g = 0;
  private int h = 0;
  private ListView i = null;
  private long j = 0L;
  private TextView k = null;
  private TextView l = null;
  private Button m = null;
  private Button n = null;
  private int o = 0;
  private boolean p = false;
  private boolean q = false;
  private boolean r = false;

  private void a()
  {
    int i1 = 0;
    int i2 = 0;
    int i4;
    if (i1 < this.c.size())
    {
      com.keniu.security.d.a locala = (com.keniu.security.d.a)this.c.get(i1);
      int i3 = locala.e;
      if ((i3 == 1) || (i3 == 3))
        break label100;
      if (locala.h())
        i4 = 0;
    }
    while (true)
    {
      i1++;
      i2 = i4;
      break;
      i4 = 1;
      continue;
      if (i2 != 0)
        this.n.setText(2131428715);
      while (true)
      {
        return;
        this.n.setText(2131428716);
      }
      label100: i4 = i2;
    }
  }

  private void b()
  {
    int i1 = this.g + this.h;
    long l1 = this.j;
    int i2 = this.i.getAdapter().getCount() - 1;
    if (i2 >= 0)
    {
      com.keniu.security.d.a locala = (com.keniu.security.d.a)this.i.getAdapter().getItem(i2);
      if ((locala.e != 1) && (locala.e != 3) && (locala.h()))
      {
        if (locala.e != 2)
          break label148;
        this.g -= 1;
        this.c.remove(i2);
      }
      while (true)
      {
        this.j -= locala.c();
        new File(locala.e()).delete();
        i2--;
        break;
        label148: this.h -= 1;
        this.c.remove(i2);
      }
    }
    TextView localTextView = this.k;
    String str1 = getString(2131428728);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.g + this.h);
    arrayOfObject1[1] = ax.f(this.j);
    localTextView.setText(String.format(str1, arrayOfObject1));
    this.f.notifyDataSetChanged();
    String str2 = getString(2131428731);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(i1 - this.g - this.h);
    arrayOfObject2[1] = ax.f(l1 - this.j);
    Toast.makeText(this, String.format(str2, arrayOfObject2), 0).show();
    if (this.g + this.h <= 0)
      this.A.sendEmptyMessage(2);
  }

  private Dialog c()
  {
    com.keniu.security.d.a locala = (com.keniu.security.d.a)this.i.getAdapter().getItem(this.o);
    Date localDate = new Date(locala.f());
    String str1 = new SimpleDateFormat("yyyy-MM-dd").format(localDate);
    View localView = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130903286, null);
    CustomTextView localCustomTextView1 = (CustomTextView)localView.findViewById(2131231587);
    String str2 = getString(2131428723);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = locala.i();
    localCustomTextView1.a(String.format(str2, arrayOfObject1));
    TextView localTextView = (TextView)localView.findViewById(2131231588);
    String str3 = getString(2131428724);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = ax.f(locala.c());
    localTextView.setText(String.format(str3, arrayOfObject2));
    CustomTextView localCustomTextView2 = (CustomTextView)localView.findViewById(2131231589);
    String str4 = getString(2131428726);
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = locala.e().substring(0, locala.e().lastIndexOf(File.separatorChar));
    localCustomTextView2.a(String.format(str4, arrayOfObject3));
    ((TextView)localView.findViewById(2131231590)).setText(String.format(getString(2131428727), new Object[] { str1 }));
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131428721));
    localaq.a(localView);
    localaq.a(2131428976, new e(this, locala));
    localaq.c(2131428732, new f(this));
    localaq.a(new g(this));
    return localaq.c();
  }

  private Dialog d()
  {
    View localView = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130903097, null);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
    ((TextView)localView.findViewById(2131231003)).setText(2131429149);
    localCheckBox.setChecked(t.b(this).getBoolean(getString(2131428708), false));
    localCheckBox.setOnClickListener(new h(this));
    aq localaq = new aq(this, (byte)0);
    localaq.a(2131428684);
    localaq.a(localView);
    localaq.a(getString(2131428994), new i(this));
    localaq.b(getString(2131427866), new j(this));
    return localaq.c();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 != 0) || (this.i.getAdapter() == null));
    com.keniu.security.d.a locala1;
    do
    {
      return;
      locala1 = (com.keniu.security.d.a)this.i.getAdapter().getItem(this.o);
    }
    while (locala1.e == 2);
    Iterator localIterator = getPackageManager().getInstalledPackages(4096).iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (!((PackageInfo)localIterator.next()).applicationInfo.packageName.equals(locala1.a()));
    for (int i1 = 1; ; i1 = 0)
    {
      int i2;
      label120: int i3;
      if (i1 != 0)
      {
        i2 = this.e.size() - 1;
        if (i2 > 0)
        {
          com.keniu.security.d.a locala2 = (com.keniu.security.d.a)this.e.get(i2);
          if ((locala2.a() != null) && (locala2.a().equalsIgnoreCase(locala1.a())))
          {
            i3 = this.e.size() - 1;
            label178: if (i3 > 0)
            {
              if (((com.keniu.security.d.a)this.e.get(i3)).a() != locala2.a())
                break label370;
              this.e.remove(i3);
              locala1.e = 2;
              locala1.b(true);
              locala1.a(true);
              this.d.add(1, locala1);
              this.g = (1 + this.g);
              this.h -= 1;
            }
          }
        }
      }
      label370: for (int i4 = i2 - 1; ; i4 = i2)
      {
        i3--;
        i2 = i4;
        break label178;
        i2--;
        break label120;
        this.c.clear();
        this.c.addAll(this.d);
        this.c.addAll(this.e);
        this.f = new k(this, getApplicationContext(), this.c);
        this.i.setAdapter(this.f);
        this.i.invalidateViews();
        break;
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903101);
    ((TextView)findViewById(2131231016)).setText(2131429148);
    this.m = ((Button)findViewById(2131231018));
    this.m.setText(2131428976);
    this.m.setOnClickListener(new a(this));
    this.n = ((Button)findViewById(2131231017));
    this.n.setText(2131428715);
    this.n.setOnClickListener(new c(this));
    this.a = ((ProgressBar)findViewById(2131231021));
    this.b = ((TextView)findViewById(2131231023));
    this.l = ((TextView)findViewById(2131231022));
    this.i = ((ListView)findViewById(2131231020));
    this.k = ((TextView)findViewById(2131231019));
    this.A.sendEmptyMessage(0);
    this.i.setOnItemClickListener(new d(this));
    com.jxphone.mosecurity.a.a.i(this, "mg_apk_main");
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default:
      localObject = null;
    case 0:
    case 1:
    }
    while (true)
    {
      return localObject;
      View localView2 = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130903097, null);
      CheckBox localCheckBox = (CheckBox)localView2.findViewById(2131231005);
      ((TextView)localView2.findViewById(2131231003)).setText(2131429149);
      localCheckBox.setChecked(t.b(this).getBoolean(getString(2131428708), false));
      localCheckBox.setOnClickListener(new h(this));
      aq localaq2 = new aq(this, (byte)0);
      localaq2.a(2131428684);
      localaq2.a(localView2);
      localaq2.a(getString(2131428994), new i(this));
      localaq2.b(getString(2131427866), new j(this));
      localObject = localaq2.c();
      continue;
      com.keniu.security.d.a locala = (com.keniu.security.d.a)this.i.getAdapter().getItem(this.o);
      Date localDate = new Date(locala.f());
      String str1 = new SimpleDateFormat("yyyy-MM-dd").format(localDate);
      View localView1 = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130903286, null);
      CustomTextView localCustomTextView1 = (CustomTextView)localView1.findViewById(2131231587);
      String str2 = getString(2131428723);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = locala.i();
      localCustomTextView1.a(String.format(str2, arrayOfObject1));
      TextView localTextView = (TextView)localView1.findViewById(2131231588);
      String str3 = getString(2131428724);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = ax.f(locala.c());
      localTextView.setText(String.format(str3, arrayOfObject2));
      CustomTextView localCustomTextView2 = (CustomTextView)localView1.findViewById(2131231589);
      String str4 = getString(2131428726);
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = locala.e().substring(0, locala.e().lastIndexOf(File.separatorChar));
      localCustomTextView2.a(String.format(str4, arrayOfObject3));
      ((TextView)localView1.findViewById(2131231590)).setText(String.format(getString(2131428727), new Object[] { str1 }));
      aq localaq1 = new aq(this, (byte)0);
      localaq1.a(getString(2131428721));
      localaq1.a(localView1);
      localaq1.a(2131428976, new e(this, locala));
      localaq1.c(2131428732, new f(this));
      localaq1.a(new g(this));
      localObject = localaq1.c();
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131492869, paramMenu);
    return true;
  }

  public void onDestroy()
  {
    this.p = true;
    super.onDestroy();
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool;
    if (this.i.getAdapter() == null)
    {
      bool = true;
      return bool;
    }
    if (((com.keniu.security.d.a)this.i.getAdapter().getItem(0)).e == 1)
      if (this.q)
      {
        for (int i4 = 1; i4 < this.i.getAdapter().getCount(); i4++)
          ((com.keniu.security.d.a)this.i.getAdapter().getItem(i4)).b(false);
        paramMenuItem.setTitle(2131427871);
        this.q = false;
      }
    while (true)
    {
      this.f.notifyDataSetChanged();
      a();
      bool = true;
      break;
      for (int i3 = 1; i3 < this.i.getAdapter().getCount(); i3++)
        ((com.keniu.security.d.a)this.i.getAdapter().getItem(i3)).b(true);
      paramMenuItem.setTitle(2131427872);
      this.q = true;
      continue;
      if (((com.keniu.security.d.a)this.i.getAdapter().getItem(0)).e == 3)
        if (this.r)
        {
          for (int i2 = 1; i2 < this.i.getAdapter().getCount(); i2++)
            ((com.keniu.security.d.a)this.i.getAdapter().getItem(i2)).b(false);
          paramMenuItem.setTitle(2131427871);
          this.r = false;
        }
        else
        {
          for (int i1 = 1; i1 < this.i.getAdapter().getCount(); i1++)
            ((com.keniu.security.d.a)this.i.getAdapter().getItem(i1)).b(true);
          paramMenuItem.setTitle(2131427872);
          this.r = true;
        }
    }
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool;
    if (this.i.getAdapter() == null)
    {
      paramMenu.getItem(0).setVisible(false);
      paramMenu.getItem(1).setVisible(false);
      bool = true;
      return bool;
    }
    if (((com.keniu.security.d.a)this.i.getAdapter().getItem(0)).e == 1)
    {
      paramMenu.getItem(0).setVisible(true);
      paramMenu.getItem(1).setVisible(false);
    }
    while (true)
    {
      bool = true;
      break;
      if (((com.keniu.security.d.a)this.i.getAdapter().getItem(0)).e == 3)
      {
        paramMenu.getItem(0).setVisible(false);
        paramMenu.getItem(1).setVisible(true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.APKManagerActivity
 * JD-Core Version:    0.6.2
 */