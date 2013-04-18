package com.keniu.security.process;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Debug.MemoryInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.main.BaseTitleActivity;
import com.keniu.security.monitor.b;
import com.keniu.security.util.ax;
import java.io.BufferedReader;
import java.io.FileReader;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class ProcessManagerActivity extends BaseTitleActivity
  implements b
{
  private static final int H = 2;
  private static final int I = 4;
  private static final int J = 5;
  private static final int K = 6;
  private static final int s = 1;
  private static final int t = -1;
  private static final int u = 3;
  private static final int v = -3;
  private long A = 0L;
  private boolean B = false;
  private boolean C = false;
  private com.jxphone.mosecurity.d.m D;
  private SharedPreferences E;
  private com.keniu.security.a F;
  private View.OnClickListener G = new f(this);
  private Handler L = null;
  public boolean a = false;
  AdapterView.OnItemClickListener b = new g(this);
  AdapterView.OnItemLongClickListener c = new h(this);
  public Handler d = new i(this);
  HandlerThread e = new HandlerThread("updateDbCache");
  private ListView f;
  private TextView g;
  private LinearLayout h;
  private Button i;
  private RadioGroup j;
  private RelativeLayout k;
  private Button l;
  private int m;
  private ActivityManager n;
  private com.jxphone.mosecurity.b.c o;
  private r p;
  private o q;
  private o r;
  private int w = 1;
  private int x = 0;
  private int y = 0;
  private String z = "0";

  private int a()
  {
    int i1 = 0;
    o localo = (o)this.f.getAdapter();
    int i5;
    if (localo == null)
      i5 = 0;
    while (true)
    {
      return i5;
      int i2 = this.f.getCount();
      int i3 = 0;
      if (i1 < i2)
      {
        com.keniu.security.d.e locale = (com.keniu.security.d.e)this.f.getItemAtPosition(i1);
        if (locale.a())
        {
          this.A += locale.d();
          i3++;
          if (locale.c == 4)
          {
            this.D.b(locale.b());
            this.y -= 1;
          }
        }
        for (int i6 = i3; ; i6 = i3)
        {
          i1++;
          i3 = i6;
          break;
          if (locale.c == 2)
          {
            this.D.a(locale.b());
            this.x -= 1;
          }
        }
      }
      for (int i4 = i2 - 1; i4 >= 0; i4--)
        if (((com.keniu.security.d.e)this.f.getItemAtPosition(i4)).a())
          localo.a(i4);
      if (i3 > 0)
      {
        a(i3, this.A);
        com.jxphone.mosecurity.a.a.i(this, "cl");
        d();
        this.A = 0L;
        i5 = i3;
      }
      else
      {
        i5 = i3;
      }
    }
  }

  private static int a(Debug.MemoryInfo paramMemoryInfo)
  {
    return ((Integer)paramMemoryInfo.getClass().getMethod("getTotalPss", new Class[0]).invoke(paramMemoryInfo, new Object[0])).intValue();
  }

  private void a(int paramInt)
  {
    List localList1 = this.q.a();
    List localList2 = this.r.a();
    switch (paramInt)
    {
    case 1:
    default:
    case 0:
    case 2:
    }
    while (true)
    {
      return;
      m localm = new m(this);
      Collections.sort(localList1, localm);
      Collections.sort(localList2, localm);
      continue;
      n localn = new n(this);
      Collections.sort(localList1, localn);
      Collections.sort(localList2, localn);
    }
  }

  private void a(int paramInt, long paramLong)
  {
    String str1 = getString(2131428672);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    String str2 = String.format(str1, arrayOfObject1);
    if ((paramInt > 0) && (paramLong > 0L))
    {
      StringBuilder localStringBuilder = new StringBuilder().append(str2);
      String str3 = getString(2131428673);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = ax.f(paramLong);
      str2 = String.format(str3, arrayOfObject2);
    }
    Toast.makeText(getApplicationContext(), str2, 0).show();
  }

  private void a(List paramList)
  {
    int i1 = this.w;
    Object localObject = null;
    switch (i1)
    {
    case -2:
    case 0:
    case 2:
    default:
    case -1:
    case 1:
    case -3:
    case 3:
    }
    while (true)
    {
      Collections.sort(paramList, (Comparator)localObject);
      return;
      localObject = new n(this);
      continue;
      localObject = new m(this);
    }
  }

  private void b()
  {
    int i1 = Integer.parseInt(Build.VERSION.SDK);
    List localList1 = this.q.a();
    List localList2 = this.r.a();
    int i2;
    int[] arrayOfInt;
    if (i1 >= 5)
    {
      i2 = this.y + this.x;
      arrayOfInt = new int[i2];
      int i3 = 0;
      if (i3 < i2)
      {
        if (i3 < this.x)
          arrayOfInt[i3] = ((com.keniu.security.d.e)localList1.get(i3)).e();
        while (true)
        {
          i3++;
          break;
          arrayOfInt[i3] = ((com.keniu.security.d.e)localList2.get(i3 - this.x)).e();
        }
      }
    }
    while (true)
    {
      int i4;
      try
      {
        Debug.MemoryInfo[] arrayOfMemoryInfo = (Debug.MemoryInfo[])this.n.getClass().getMethod("getProcessMemoryInfo", new Class[] { [I.class }).invoke(this.n, new Object[] { arrayOfInt });
        i4 = 0;
        if (i4 < i2)
          if (i4 < this.x)
            ((com.keniu.security.d.e)localList1.get(i4)).b(1024 * a(arrayOfMemoryInfo[i4]));
          else
            ((com.keniu.security.d.e)localList2.get(i4 - this.x)).b(1024 * a(arrayOfMemoryInfo[i4]));
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      while (true)
      {
        return;
        l locall = new l(this);
        locall.a();
        Iterator localIterator1 = localList1.iterator();
        while (localIterator1.hasNext())
        {
          com.keniu.security.d.e locale2 = (com.keniu.security.d.e)localIterator1.next();
          locale2.b(1024 * locall.a(locale2.b()) / 8);
        }
        Iterator localIterator2 = localList2.iterator();
        while (localIterator2.hasNext())
        {
          com.keniu.security.d.e locale1 = (com.keniu.security.d.e)localIterator2.next();
          locale1.b(1024 * locall.a(locale1.b()) / 8);
        }
      }
      i4++;
    }
  }

  private void c()
  {
    this.a = false;
    this.x = 0;
    this.y = 0;
    this.A = 0L;
  }

  private void d()
  {
    this.z = e();
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    this.n.getMemoryInfo(localMemoryInfo);
    String str1 = ax.c(localMemoryInfo.availMem);
    String str2 = str1.substring(0, str1.lastIndexOf("."));
    TextView localTextView = this.g;
    String str3 = getString(2131428663);
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.x + this.y);
    arrayOfObject1[1] = (str2 + "/" + this.z);
    localTextView.setText(String.format(str3, arrayOfObject1));
    RadioButton localRadioButton1 = (RadioButton)findViewById(2131231207);
    String str4 = getString(2131428677);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(this.x);
    localRadioButton1.setText(String.format(str4, arrayOfObject2));
    RadioButton localRadioButton2 = (RadioButton)findViewById(2131231208);
    String str5 = getString(2131428678);
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = Integer.valueOf(this.y);
    localRadioButton2.setText(String.format(str5, arrayOfObject3));
  }

  private static String e()
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      String str2 = localBufferedReader.readLine();
      int i1 = Integer.valueOf(str2.substring(1 + str2.indexOf(":"), str2.indexOf("kB")).trim()).intValue() / 1024;
      localBufferedReader.close();
      String str3 = i1 + "";
      str1 = str3;
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = "0";
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == com.keniu.security.monitor.a.o)
    {
      for (int i1 = this.x - 1; i1 >= 0; i1--)
        if (this.q.b(i1).a())
        {
          this.q.a(i1);
          this.x -= 1;
        }
      for (int i2 = this.y - 1; i2 >= 0; i2--)
        if (this.r.b(i2).a())
        {
          this.r.a(i2);
          this.y -= 1;
        }
      d();
    }
    return 0;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903153, 2131428315);
    com.jxphone.mosecurity.a.a.i(this, "pm");
    this.F = com.keniu.security.a.a(this);
    this.E = getSharedPreferences("com.ijinshan.mguard_preferences", 0);
    this.D = new com.jxphone.mosecurity.d.m();
    this.g = ((TextView)findViewById(2131231205));
    this.f = ((ListView)findViewById(2131231211));
    this.h = ((LinearLayout)findViewById(2131231212));
    this.i = ((Button)findViewById(2131231203));
    this.i.setOnClickListener(new c(this));
    ((Button)findViewById(2131231200)).setOnClickListener(new d(this));
    this.j = ((RadioGroup)findViewById(2131231206));
    this.j.setOnCheckedChangeListener(new e(this));
    this.k = ((RelativeLayout)findViewById(2131231209));
    this.f.setOnItemClickListener(this.b);
    this.f.setOnItemLongClickListener(this.c);
    this.f.setSelector(2130837790);
    this.l = ((Button)findViewById(2131231202));
    this.l.setOnClickListener(this.G);
    this.o = com.keniu.security.b.e.a(getApplicationContext());
    this.n = ((ActivityManager)getSystemService("activity"));
    this.d.sendEmptyMessage(4);
    this.e.start();
    this.L = new Handler(this.e.getLooper());
    if (this.F.J())
    {
      this.F.K();
      StringBuilder localStringBuilder = new StringBuilder("");
      if (!this.D.e("com.ijinshan.duba"))
        localStringBuilder.append("#com.ijinshan.duba");
      if (!this.D.e("com.ijinshan.kbatterydoctor"))
        localStringBuilder.append("#com.ijinshan.kbatterydoctor");
      if (localStringBuilder.length() > 0)
      {
        localStringBuilder.append(this.F.G().toString());
        this.F.a(localStringBuilder.toString());
      }
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if ((this.q == null) || (this.r == null));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      getMenuInflater().inflate(2131492872, paramMenu);
      int i1 = 0;
      if (i1 < paramMenu.size())
      {
        MenuItem localMenuItem = paramMenu.getItem(i1);
        switch (localMenuItem.getItemId())
        {
        default:
        case 2131231781:
        case 2131231782:
        }
        while (true)
        {
          i1++;
          break;
          localMenuItem.setIcon(2130837932);
          continue;
          localMenuItem.setIcon(2130837934);
        }
      }
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    j localj = new j(this);
    this.L.postDelayed(localj, 2000L);
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.o, this);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      Message localMessage = Message.obtain(this.d, 6);
      this.d.sendMessageAtFrontOfQueue(localMessage);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool;
    switch (paramMenuItem.getItemId())
    {
    default:
      bool = false;
      return bool;
    case 2131231781:
      if ((this.w != 1) && (this.w != -1))
        this.w = 1;
      a(2);
      if (this.w == 1)
      {
        this.w = -1;
        paramMenuItem.setIcon(2130837933);
      }
      break;
    case 2131231782:
    }
    while (true)
    {
      this.q.notifyDataSetChanged();
      this.r.notifyDataSetChanged();
      bool = true;
      break;
      this.w = 1;
      paramMenuItem.setIcon(2130837932);
      continue;
      if ((this.w != 3) && (this.w != -3))
        this.w = -3;
      a(0);
      if (this.w == 3)
      {
        this.w = -3;
        paramMenuItem.setIcon(2130837935);
      }
      else
      {
        this.w = 3;
        paramMenuItem.setIcon(2130837934);
      }
    }
  }

  protected void onPause()
  {
    super.onPause();
    if (this.h != null)
      this.h.setVisibility(8);
  }

  protected void onResume()
  {
    super.onResume();
    if (this.q != null)
      this.q.notifyDataSetChanged();
    if (this.r != null)
      this.r.notifyDataSetChanged();
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.o, this);
    if (this.E.getBoolean("isSceenLockClear", false))
      com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.o, this, 1342177279);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.ProcessManagerActivity
 * JD-Core Version:    0.6.2
 */