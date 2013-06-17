package com.avg.tuneup.storage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avg.a.e;
import com.avg.a.g;
import com.avg.tuneup.h;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Scanner;

public class b extends h
{
  public int a = -1;
  public int b = -1;
  public boolean c;
  private com.avg.tuneup.a d;
  private com.avg.tuneup.b e;
  private ArrayList f = null;
  private HashMap g = new HashMap();
  private ListView h;
  private View i;

  private void G()
  {
    new Thread(new c(this)).start();
  }

  private void H()
  {
    Collections.sort(this.f, this.d);
  }

  private void I()
  {
    if (Build.VERSION.SDK_INT >= 8)
    {
      Iterator localIterator = this.f.iterator();
      while (localIterator.hasNext())
        a((com.avg.ui.general.c.b)localIterator.next());
    }
  }

  private ArrayList J()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      localScanner = new Scanner(new File("/proc/mounts"));
      if (localScanner != null)
      {
        localScanner.useDelimiter("\n");
        localScanner.next();
        while (localScanner.hasNext())
        {
          String str = localScanner.next();
          if (str.contains("vold"))
            localArrayList.add(str.split(" ")[1]);
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localFileNotFoundException);
        Scanner localScanner = null;
      }
    }
    return localArrayList;
  }

  private ArrayList K()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      Scanner localScanner1 = new Scanner(new File("/system/etc/vold.fstab"));
      localScanner2 = localScanner1;
      if (localScanner2 != null)
      {
        localScanner2.useDelimiter("\n");
        localScanner2.next();
        while (localScanner2.hasNext())
        {
          String str1 = localScanner2.next();
          if (str1.startsWith("dev_mount"))
          {
            String str2 = str1.split(" ")[2];
            if (str2.contains(":"))
              str2 = str2.substring(0, str2.indexOf(":"));
            localArrayList.add(str2);
          }
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localFileNotFoundException);
        Scanner localScanner2 = null;
      }
    }
    return localArrayList;
  }

  private static int a(PackageInfo paramPackageInfo)
  {
    int j = -2;
    if (Build.VERSION.SDK_INT >= 8);
    try
    {
      Field localField = PackageInfo.class.getDeclaredField("installLocation");
      localField.setAccessible(true);
      int k = localField.getInt(paramPackageInfo);
      j = k;
      return j;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localSecurityException);
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localNoSuchFieldException);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localIllegalAccessException);
    }
  }

  private ArrayList a(PackageManager paramPackageManager, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    ListIterator localListIterator = paramPackageManager.getInstalledApplications(0).listIterator();
    ApplicationInfo localApplicationInfo = (ApplicationInfo)localListIterator.next();
    while (localApplicationInfo != null)
    {
      if (((!localApplicationInfo.sourceDir.contains("/system")) && (this.g.get(localApplicationInfo.packageName) == null)) || (paramInt == 1))
      {
        com.avg.ui.general.c.b localb = new com.avg.ui.general.c.b();
        localb.c = localApplicationInfo.packageName;
        localb.b = localApplicationInfo.sourceDir;
        localb.g = new File(localb.b).length();
        localb.j = localApplicationInfo.flags;
        localb.l = localApplicationInfo.uid;
        localb.a = paramPackageManager.getApplicationLabel(localApplicationInfo).toString();
        localArrayList.add(localb);
      }
      if (localListIterator.hasNext())
        localApplicationInfo = (ApplicationInfo)localListIterator.next();
      else
        localApplicationInfo = null;
    }
    return localArrayList;
  }

  private ArrayList a(ArrayList paramArrayList)
  {
    if (paramArrayList == null)
      paramArrayList = null;
    while (true)
    {
      return paramArrayList;
      for (int j = 0; j < paramArrayList.size(); j++)
      {
        File localFile = new File((String)paramArrayList.get(j));
        if ((!localFile.exists()) || (!localFile.isDirectory()) || (!localFile.canWrite()))
        {
          int k = j - 1;
          paramArrayList.remove(j);
          j = k;
        }
      }
    }
  }

  private ArrayList a(ArrayList paramArrayList1, ArrayList paramArrayList2)
  {
    if ((paramArrayList1 == null) || (paramArrayList2 == null))
      paramArrayList1 = null;
    while (true)
    {
      return paramArrayList1;
      for (int j = 0; j < paramArrayList1.size(); j++)
        if (!paramArrayList2.contains(paramArrayList1.get(j)))
        {
          int k = j - 1;
          paramArrayList1.remove(j);
          j = k;
        }
    }
  }

  private void a(PackageManager paramPackageManager, ArrayList paramArrayList)
  {
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      com.avg.ui.general.c.b localb = (com.avg.ui.general.c.b)localIterator.next();
      try
      {
        localb.d = paramPackageManager.getApplicationIcon(localb.c);
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  private void a(com.avg.ui.general.c.b paramb)
  {
    if (this.ag == null)
      return;
    if (Build.VERSION.SDK_INT >= 8)
      if ((0x40000 & paramb.j) == 0);
    for (byte b1 = 2; ; b1 = 0)
      while (true)
      {
        paramb.k = b1;
        break;
        PackageManager localPackageManager = this.ag.getPackageManager();
        try
        {
          PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(paramb.c, 0);
          localPackageInfo1 = localPackageInfo2;
          if (((0x20000000 & paramb.j) == 0) && ((0x1 & paramb.j) == 0) && (localPackageInfo1 != null))
          {
            int j = a(localPackageInfo1);
            if ((j == 2) || (j == 0))
              b1 = 1;
          }
        }
        catch (Exception localException)
        {
          while (true)
          {
            com.avg.toolkit.f.a.a(localException);
            PackageInfo localPackageInfo1 = null;
          }
        }
      }
  }

  private void a(File paramFile, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4)
  {
    if ((paramBoolean) && (paramFile == null))
    {
      this.i.findViewById(e.tableRow2).setVisibility(8);
      this.i.findViewById(e.tableRow1).setPadding(0, 0, 0, 0);
      return;
    }
    String str1 = Environment.getExternalStorageState();
    int j;
    if (!"mounted".equals(str1))
    {
      boolean bool = "mounted_ro".equals(str1);
      j = 0;
      if (!bool);
    }
    else
    {
      j = 1;
    }
    long l5;
    long l1;
    long l2;
    if (((paramBoolean) && (j != 0)) || (!paramBoolean))
    {
      StatFs localStatFs = new StatFs(paramFile.getPath());
      long l4 = localStatFs.getBlockSize();
      l5 = localStatFs.getAvailableBlocks();
      l1 = localStatFs.getBlockCount();
      l2 = l4;
    }
    for (long l3 = l5; ; l3 = 0L)
    {
      String str2 = Formatter.formatFileSize(this.ag, l2 * (l1 - l3));
      String str3 = this.ag.getString(g.used) + str2;
      ProgressBar localProgressBar = (ProgressBar)this.i.findViewById(paramInt3);
      localProgressBar.setVisibility(0);
      if (l1 > 0L)
        localProgressBar.setProgress((int)(100L * (l1 - l3) / l1));
      while (true)
      {
        TextView localTextView1 = (TextView)this.i.findViewById(paramInt1);
        localTextView1.setText(str3);
        localTextView1.setVisibility(0);
        TextView localTextView2 = (TextView)this.i.findViewById(paramInt2);
        localTextView2.setText(this.ag.getString(g.free) + Formatter.formatFileSize(this.ag, l3 * l2));
        localTextView2.setVisibility(0);
        this.i.findViewById(paramInt4).setVisibility(0);
        break;
        localProgressBar.setProgress(0);
      }
      l1 = 0L;
      l2 = 0L;
    }
  }

  public ArrayList F()
  {
    return a(a(J(), K()));
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramViewGroup == null);
    for (View localView = null; ; localView = this.i)
    {
      return localView;
      this.i = paramLayoutInflater.inflate(com.avg.a.f.memory_use_list, paramViewGroup, false);
      this.h = ((ListView)this.i.findViewById(e.lv_apps));
      this.h.setCacheColorHint(0);
      this.c = false;
      this.i.findViewById(e.bottom_buttons_bar).setVisibility(0);
      this.i.findViewById(e.tv_title).setVisibility(8);
      if (this.ag.o())
      {
        a(this.ag.getString(g.performance_storage), this.i);
        d(true);
      }
      a(Environment.getDataDirectory(), e.tv_memory_internal, e.tv_free_memory_internal, e.pb_internal, false, e.textView1);
      a(a(), e.tv_memory_external, e.tv_free_memory_external, e.pb_external, true, e.textView2);
      G();
    }
  }

  public File a()
  {
    if (Build.VERSION.SDK_INT >= 11);
    for (boolean bool = Environment.isExternalStorageEmulated(); ; bool = false)
    {
      File localFile;
      if (bool)
      {
        ArrayList localArrayList = F();
        if ((localArrayList != null) && (localArrayList.size() > 0))
          localArrayList.remove(Environment.getExternalStorageDirectory().getPath());
        if ((localArrayList != null) && (localArrayList.size() > 0))
          localFile = new File((String)localArrayList.get(0));
      }
      while (true)
      {
        return localFile;
        localFile = null;
        continue;
        localFile = Environment.getExternalStorageDirectory();
      }
    }
  }

  public ArrayList a(Object paramObject)
  {
    if ((paramObject instanceof Menu))
    {
      ((Menu)paramObject).add(0, 9, 0, this.ag.getString(g.by_size));
      ((Menu)paramObject).add(0, 10, 0, this.ag.getString(g.by_name));
      if ((Build.VERSION.SDK_INT >= 8) && ((Build.VERSION.SDK_INT < 11) || (!Environment.isExternalStorageEmulated())))
        ((Menu)paramObject).add(0, 11, 0, this.ag.getString(g.by_location));
    }
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "storage_usage", "menu_opened", null, 0);
      return null;
      if ((paramObject instanceof com.avg.ui.general.c.f))
      {
        ((com.avg.ui.general.c.f)paramObject).a(0, 9, 0, this.ag.getString(g.by_size));
        ((com.avg.ui.general.c.f)paramObject).a(0, 10, 0, this.ag.getString(g.by_name));
        if ((Build.VERSION.SDK_INT >= 8) && ((Build.VERSION.SDK_INT < 11) || (!Environment.isExternalStorageEmulated())))
          ((com.avg.ui.general.c.f)paramObject).a(0, 11, 0, this.ag.getString(g.by_location));
      }
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.g.put("com.android.launcher", Boolean.valueOf(true));
    this.g.put("com.android.launcher2", Boolean.valueOf(true));
    this.g.put("com.htc.launcher", Boolean.valueOf(true));
    this.g.put("com.htc.android.mail", Boolean.valueOf(true));
    this.g.put(this.ag.getPackageName(), Boolean.valueOf(true));
    this.d = new com.avg.tuneup.a(-1);
  }

  public void a(Menu paramMenu)
  {
    paramMenu.clear();
    a(paramMenu);
    super.a(paramMenu);
  }

  public boolean a_(MenuItem paramMenuItem)
  {
    return e(paramMenuItem);
  }

  public boolean b(int paramInt)
  {
    boolean bool = true;
    if ((this.f == null) || (!this.c));
    while (true)
    {
      return bool;
      switch (paramInt)
      {
      default:
        com.avg.toolkit.f.a.a();
        bool = false;
        break;
      case 9:
        this.d.a();
        Collections.sort(this.f, this.d);
        this.e.notifyDataSetChanged();
        com.avg.toolkit.c.a.a(this.ag, "storage_usage", "sort_by_size", null, 0);
        break;
      case 10:
        this.d.b();
        Collections.sort(this.f, this.d);
        this.e.notifyDataSetChanged();
        com.avg.toolkit.c.a.a(this.ag, "storage_usage", "sort_by_name", null, 0);
        break;
      case 11:
        this.d.c();
        Collections.sort(this.f, this.d);
        this.e.notifyDataSetChanged();
        com.avg.toolkit.c.a.a(this.ag, "storage_usage", "sort_by_location", null, 0);
      }
    }
  }

  public boolean b(MenuItem paramMenuItem)
  {
    return e(paramMenuItem);
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
  }

  public boolean e(MenuItem paramMenuItem)
  {
    this.ag.closeOptionsMenu();
    return b(paramMenuItem.getItemId());
  }

  public void r()
  {
    super.r();
    ListIterator localListIterator;
    ApplicationInfo localApplicationInfo2;
    if (this.a != -1)
    {
      localListIterator = this.ag.getPackageManager().getInstalledApplications(0).listIterator();
      localApplicationInfo2 = (ApplicationInfo)localListIterator.next();
      com.avg.ui.general.c.b localb2 = (com.avg.ui.general.c.b)this.f.get(this.a);
      if (localApplicationInfo2 == null)
        break label310;
      if (!localb2.c.equals(localApplicationInfo2.packageName))
        break label271;
    }
    label271: label310: for (int j = 1; ; j = 0)
      while (true)
      {
        if (j == 0)
        {
          this.f.remove(this.a);
          this.e.notifyDataSetChanged();
          a(Environment.getDataDirectory(), e.tv_memory_internal, e.tv_free_memory_internal, e.pb_internal, false, e.textView1);
          a(a(), e.tv_memory_external, e.tv_free_memory_external, e.pb_external, true, e.textView2);
        }
        this.a = -1;
        com.avg.ui.general.c.b localb1;
        PackageManager localPackageManager;
        if (this.b != -1)
        {
          localb1 = (com.avg.ui.general.c.b)this.f.get(this.b);
          localPackageManager = this.ag.getPackageManager();
        }
        try
        {
          ApplicationInfo localApplicationInfo1 = localPackageManager.getApplicationInfo(localb1.c, 0);
          localb1.b = localApplicationInfo1.sourceDir;
          localb1.j = localApplicationInfo1.flags;
          a(localb1);
          this.e.notifyDataSetChanged();
          this.b = -1;
          a(Environment.getDataDirectory(), e.tv_memory_internal, e.tv_free_memory_internal, e.pb_internal, false, e.textView1);
          a(a(), e.tv_memory_external, e.tv_free_memory_external, e.pb_external, true, e.textView2);
          return;
          if (localListIterator.hasNext())
          {
            localApplicationInfo2 = (ApplicationInfo)localListIterator.next();
            break;
          }
          localApplicationInfo2 = null;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            com.avg.toolkit.f.a.a(localNameNotFoundException);
        }
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.storage.b
 * JD-Core Version:    0.6.2
 */