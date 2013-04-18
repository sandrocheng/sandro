package com.ijinshan.cleaner;

import android.app.ListActivity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.hoi.widget.o;
import com.ijinshan.cleaner.a.c;
import com.ijinshan.cleaner.adapter.f;
import com.keniu.security.a;
import java.io.File;
import java.io.PrintStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SDcardCleanerActivity extends ListActivity
{
  private static final String q = "softdetail";
  private static final int r = 3;
  private static final int s = 4;
  private static final int t = 6;
  private static final int u = 7;
  private static final int x = 10000;
  private at A;
  private boolean B = false;
  private boolean C = false;
  private a D;
  private o E;
  RelativeLayout a;
  RelativeLayout b;
  List c = new ArrayList();
  aq d = aq.a;
  Handler e = new al(this);
  long f = 0L;
  private Button g;
  private TextView h;
  private TextView i;
  private TextView j;
  private ProgressBar k;
  private ListView l;
  private List m = null;
  private List n = null;
  private List o = null;
  private List p = null;
  private SQLiteDatabase v;
  private PackageManager w;
  private int y;
  private f z;

  public static String a(long paramLong)
  {
    String str;
    float f1;
    StringBuilder localStringBuilder;
    if (paramLong >= 1024L)
    {
      str = "KB";
      f1 = (float)(paramLong / 1024.0D);
      if (f1 >= 1024.0F)
      {
        str = "MB";
        f1 /= 1024.0F;
      }
      if (f1 >= 1024.0F)
      {
        str = "GB";
        f1 /= 1024.0F;
      }
      localStringBuilder = new StringBuilder(new DecimalFormat("#0.00").format(f1));
      if (str == null)
        break label97;
      localStringBuilder.append(str);
    }
    while (true)
    {
      return localStringBuilder.toString();
      f1 = (float)paramLong;
      str = null;
      break;
      label97: localStringBuilder.append("B");
    }
  }

  private void a(int paramInt, Object paramObject)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramInt;
    localMessage.obj = paramObject;
    this.e.sendMessage(localMessage);
  }

  private void a(File paramFile)
  {
    if (paramFile.isFile())
      paramFile.delete();
    while (true)
    {
      return;
      File[] arrayOfFile = paramFile.listFiles();
      int i1 = arrayOfFile.length;
      for (int i2 = 0; i2 < i1; i2++)
        a(arrayOfFile[i2]);
      paramFile.delete();
    }
  }

  private static boolean a(String paramString)
  {
    if (new File(paramString).exists());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean a(String paramString1, String paramString2)
  {
    int i1 = paramString1.length();
    if (i1 < paramString2.length())
    {
      String str = paramString2.substring(0, i1 - 1);
      if ((!paramString1.equals(str)) || (!str.endsWith("/")));
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean a(String paramString, List paramList)
  {
    Iterator localIterator;
    if ((paramList != null) && (paramList.size() != 0))
      localIterator = paramList.iterator();
    label128: label132: 
    while (true)
    {
      boolean bool;
      if (localIterator.hasNext())
      {
        c localc = (c)localIterator.next();
        if (paramString.equals(localc.d()))
        {
          bool = true;
          return bool;
        }
        String str1 = localc.d();
        int i1 = str1.length();
        if (i1 >= paramString.length())
          break label128;
        String str2 = paramString.substring(0, i1 - 1);
        if ((!str1.equals(str2)) || (!str2.endsWith("/")))
          break label128;
      }
      for (int i2 = 1; ; i2 = 0)
      {
        if (i2 == 0)
          break label132;
        bool = true;
        break;
        bool = false;
        break;
      }
    }
  }

  private long b(File paramFile)
  {
    if ((paramFile != null) && (paramFile.isDirectory()) && (paramFile.exists()))
    {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null)
      {
        int i1 = arrayOfFile.length;
        for (int i2 = 0; i2 < i1; i2++)
          b(arrayOfFile[i2]);
      }
    }
    for (this.f += paramFile.length(); ; this.f += paramFile.length())
      do
        return this.f;
      while ((paramFile == null) || (!paramFile.isFile()));
  }

  private boolean b(String paramString)
  {
    if (this.c.contains(paramString));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void h()
  {
    this.a = ((RelativeLayout)findViewById(2131230962));
    this.b = ((RelativeLayout)findViewById(2131230981));
    this.j = ((TextView)findViewById(2131230960));
    this.j.setText(getString(2131427952));
    this.g = ((Button)findViewById(2131230976));
    this.g.setOnClickListener(new ar(this));
    this.h = ((TextView)findViewById(2131230963));
    this.k = ((ProgressBar)findViewById(2131230979));
    this.i = ((TextView)findViewById(2131230982));
  }

  private static File[] i()
  {
    File localFile = Environment.getExternalStorageDirectory();
    if ((localFile != null) && (localFile.isDirectory()) && (localFile.exists()));
    for (File[] arrayOfFile = localFile.listFiles(); ; arrayOfFile = null)
      return arrayOfFile;
  }

  private void j()
  {
    this.E = new o(this, (byte)0);
    this.E.setTitle(getString(2131427952));
    this.E.b();
    this.E.a(0);
    this.E.b(this.p.size());
    this.E.show();
  }

  private void k()
  {
    this.k.setProgress(0);
    this.a.setVisibility(8);
    this.b.setVisibility(0);
    this.g.setText(getString(2131427959));
    this.d = aq.c;
    this.i = ((TextView)findViewById(2131230982));
    int i1 = this.m.size();
    int i2 = 0;
    long l1 = 0L;
    while (i2 < i1)
    {
      if (((c)this.m.get(i2)).c())
        l1 += ((c)this.m.get(i2)).e();
      i2++;
    }
    if (l1 > 0L)
    {
      TextView localTextView2 = this.i;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = a(l1);
      localTextView2.setText(getString(2131427975, arrayOfObject2));
    }
    while (true)
    {
      this.m.clear();
      this.z.notifyDataSetChanged();
      return;
      TextView localTextView1 = this.i;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i1);
      localTextView1.setText(getString(2131427976, arrayOfObject1));
    }
  }

  public final void a()
  {
    this.o = new ArrayList();
    File localFile = Environment.getExternalStorageDirectory();
    if ((localFile != null) && (localFile.isDirectory()) && (localFile.exists()));
    for (File[] arrayOfFile = localFile.listFiles(); ; arrayOfFile = null)
    {
      String str1 = Environment.getExternalStorageDirectory().toString();
      int i1 = str1.length();
      Cursor localCursor;
      int i3;
      if (arrayOfFile != null)
      {
        int i2 = arrayOfFile.length;
        this.y = (10000 / i2);
        this.k.setProgress(0);
        localCursor = null;
        i3 = 0;
        if ((i3 < i2) && (!this.B));
      }
      try
      {
        if (this.A != null)
          this.A.wait();
        if (this.C)
          return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
        String str2 = arrayOfFile[i3].toString();
        String str3 = str2.substring(i1, str2.length());
        a(3, str3);
        if (localCursor != null)
          localCursor.close();
        localCursor = this.v.query("softdetail", null, "filepath like '" + str3 + "%'", null, null, null, null);
        if (str3.contains("Tencent"))
          System.out.println("..." + localCursor.getCount());
        if (!localCursor.moveToFirst())
          break label525;
      }
      label267: String str4 = localCursor.getString(3);
      String str5 = localCursor.getString(1);
      String str6 = localCursor.getString(4);
      int i4;
      if (new File(str1 + str6).exists())
      {
        i4 = 1;
        label332: if (i4 != 0)
          if (!this.c.contains(str4))
            break label544;
      }
      label525: label544: for (int i5 = 1; ; i5 = 0)
      {
        if ((i5 == 0) && (!a(str1 + str6, this.o)))
        {
          c localc = new c();
          localc.c(str1 + str6);
          this.f = 0L;
          long l1 = b(new File(str1 + str6));
          localc.a(str5);
          localc.a(l1);
          localc.a(true);
          if (localc.e() > 10485760L)
            localc.a(false);
          localc.b(str4);
          this.o.add(localc);
        }
        if (localCursor.moveToNext())
          break label267;
        localCursor.close();
        i3++;
        break;
        i4 = 0;
        break label332;
      }
    }
  }

  public final void b()
  {
    if (this.m != null)
    {
      this.m.clear();
      this.z.notifyDataSetChanged();
      this.n.clear();
      this.a.setVisibility(0);
      this.b.setVisibility(8);
      this.B = false;
      this.C = false;
      this.g.setText(getString(2131427960));
      this.d = aq.a;
      this.k.setProgress(0);
      this.k.setVisibility(0);
    }
  }

  public final void c()
  {
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    localaq.a(2131427519);
    localaq.b(getString(2131427969));
    localaq.b(2131427542, new am(this));
    localaq.a(2131427541, new an(this));
    localaq.c().show();
  }

  public final void d()
  {
    int i1 = 0;
    List localList = getPackageManager().getInstalledPackages(0);
    int i2 = localList.size();
    while (i1 < i2)
    {
      this.c.add(((PackageInfo)localList.get(i1)).packageName);
      i1++;
    }
  }

  public final void e()
  {
    int i1 = this.p.size();
    int i2 = 0;
    while (true)
      if (i2 < i1)
      {
        String str = (String)this.p.get(i2);
        File localFile = new File(str);
        try
        {
          Thread.sleep(100L);
          label47: a(6, str);
          a(localFile);
          i2++;
        }
        catch (Exception localException)
        {
          break label47;
        }
      }
  }

  public final void f()
  {
    com.keniu.security.util.aq localaq = new com.keniu.security.util.aq(this, (byte)0);
    localaq.a(2131427519);
    if (this.p.size() == 0)
    {
      localaq.b(getString(2131427977));
      localaq.b(2131427541, null);
    }
    while (true)
    {
      localaq.c().show();
      return;
      View localView = LayoutInflater.from(this).inflate(2130903097, null);
      CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
      localCheckBox.setChecked(false);
      ((TextView)localView.findViewById(2131231003)).setText(2131427974);
      localaq.a(localView);
      localaq.b(2131427542, new ao(this, localCheckBox));
      localaq.a(2131427541, new ap(this, localCheckBox));
    }
  }

  public final long g()
  {
    int i1 = this.m.size();
    long l1 = 0L;
    for (int i2 = 0; i2 < i1; i2++)
      l1 += ((c)this.m.get(i2)).e();
    return l1;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903084);
    String str = Environment.getExternalStorageState();
    this.a = ((RelativeLayout)findViewById(2131230962));
    this.b = ((RelativeLayout)findViewById(2131230981));
    this.j = ((TextView)findViewById(2131230960));
    this.j.setText(getString(2131427952));
    this.g = ((Button)findViewById(2131230976));
    this.g.setOnClickListener(new ar(this));
    this.h = ((TextView)findViewById(2131230963));
    this.k = ((ProgressBar)findViewById(2131230979));
    this.i = ((TextView)findViewById(2131230982));
    this.D = a.a(this);
    if (!"mounted".equals(str))
    {
      this.b.setVisibility(0);
      this.a.setVisibility(8);
      this.b.setVisibility(0);
      this.i.setText(getString(2131427958));
      this.g.setVisibility(4);
    }
    while (true)
    {
      return;
      this.m = new ArrayList();
      this.n = new ArrayList();
      this.l = getListView();
      this.l.setOnItemClickListener(new au(this));
      this.z = new f(this, this.m);
      this.l.setAdapter(this.z);
      this.w = getPackageManager();
      this.A = new at(this);
      this.A.start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.SDcardCleanerActivity
 * JD-Core Version:    0.6.2
 */