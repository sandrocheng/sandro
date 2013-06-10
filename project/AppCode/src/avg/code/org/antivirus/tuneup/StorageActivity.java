package org.antivirus.tuneup;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
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
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TableRow;
import android.widget.TextView;
import java.io.File;
import java.io.FileNotFoundException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Scanner;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.compatibility.HoneycombTools;
import org.antivirus.ui.BaseToolActivity;
import org.antivirus.ui.IhandleMenuItem;
import org.antivirus.ui.InstalledApp;
import org.antivirus.ui.PopupMenuHoneycomb;

public class StorageActivity extends BaseToolActivity
  implements IhandleMenuItem
{
  public int a = -1;
  public int b = -1;
  final ArrayList c = new ArrayList();
  a d;
  private b e;
  private ListView f;
  private ArrayList g = null;
  private HashMap h = new HashMap();
  private boolean i;

  private static int a(PackageInfo paramPackageInfo)
  {
    int j = -2;
    if (Integer.parseInt(Build.VERSION.SDK) >= 8);
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
        Logger.log(localSecurityException);
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      while (true)
        Logger.log(localNoSuchFieldException);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        Logger.log(localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        Logger.log(localIllegalAccessException);
    }
  }

  private void a(File paramFile, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4)
  {
    if ((paramBoolean) && (paramFile == null))
    {
      findViewById(2131230764).setVisibility(8);
      ((TableRow)findViewById(2131230762)).setPadding(0, 0, 0, 0);
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
      String str2 = Formatter.formatFileSize(this, l2 * (l1 - l3));
      String str3 = Strings.getString(2131296601) + str2;
      ProgressBar localProgressBar = (ProgressBar)findViewById(paramInt3);
      localProgressBar.setVisibility(0);
      if (l1 > 0L)
        localProgressBar.setProgress((int)(100L * (l1 - l3) / l1));
      while (true)
      {
        TextView localTextView1 = (TextView)findViewById(paramInt1);
        localTextView1.setText(str3);
        localTextView1.setVisibility(0);
        TextView localTextView2 = (TextView)findViewById(paramInt2);
        localTextView2.setText(Strings.getString(2131296551) + Formatter.formatFileSize(this, l3 * l2));
        localTextView2.setVisibility(0);
        findViewById(paramInt4).setVisibility(0);
        break;
        localProgressBar.setProgress(0);
      }
      l1 = 0L;
      l2 = 0L;
    }
  }

  private void a(InstalledApp paramInstalledApp)
  {
    if (Integer.parseInt(Build.VERSION.SDK) >= 8)
      if ((0x40000 & paramInstalledApp.flags) == 0);
    for (byte b1 = 2; ; b1 = 0)
      while (true)
      {
        paramInstalledApp.movable = b1;
        return;
        PackageManager localPackageManager = getPackageManager();
        try
        {
          PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(paramInstalledApp.mPackageName, 0);
          localPackageInfo1 = localPackageInfo2;
          if (((0x20000000 & paramInstalledApp.flags) == 0) && ((0x1 & paramInstalledApp.flags) == 0) && (localPackageInfo1 != null))
          {
            int j = a(localPackageInfo1);
            if ((j == 2) || (j == 0))
              b1 = 1;
          }
        }
        catch (Exception localException)
        {
          while (true)
            PackageInfo localPackageInfo1 = null;
        }
      }
  }

  private boolean b(int paramInt)
  {
    boolean bool = true;
    if (this.g == null);
    while (true)
    {
      return bool;
      switch (paramInt)
      {
      default:
        Logger.errorBadAgrument();
        bool = false;
        break;
      case 0:
        this.d.a();
        Collections.sort(this.g, this.d);
        this.e.notifyDataSetChanged();
        org.antivirus.ganalytics.a.a(this, "storage_usage", "sort_by_size", null);
        break;
      case 1:
        this.d.b();
        Collections.sort(this.g, this.d);
        this.e.notifyDataSetChanged();
        org.antivirus.ganalytics.a.a(this, "storage_usage", "sort_by_name", null);
        break;
      case 2:
        this.d.c();
        Collections.sort(this.g, this.d);
        this.e.notifyDataSetChanged();
        org.antivirus.ganalytics.a.a(this, "storage_usage", "sort_by_location", null);
      }
    }
  }

  private static File c()
  {
    if (Integer.parseInt(Build.VERSION.SDK) >= 11);
    for (boolean bool = HoneycombTools.isExternalStorageEmulated(); ; bool = false)
    {
      ArrayList localArrayList1;
      ArrayList localArrayList2;
      ArrayList localArrayList3;
      label44: File localFile1;
      if (bool)
      {
        localArrayList1 = d();
        localArrayList2 = e();
        if ((localArrayList1 == null) || (localArrayList2 == null))
        {
          localArrayList1 = null;
          if (localArrayList1 != null)
            break label149;
          localArrayList3 = null;
          if ((localArrayList3 != null) && (localArrayList3.size() > 0))
            localArrayList3.remove(Environment.getExternalStorageDirectory().getPath());
          if ((localArrayList3 == null) || (localArrayList3.size() <= 0))
            break label232;
          localFile1 = new File((String)localArrayList3.get(0));
        }
      }
      while (true)
      {
        return localFile1;
        for (int m = 0; m < localArrayList1.size(); m++)
          if (!localArrayList2.contains(localArrayList1.get(m)))
          {
            int n = m - 1;
            localArrayList1.remove(m);
            m = n;
          }
        break;
        label149: for (int j = 0; j < localArrayList1.size(); j++)
        {
          File localFile2 = new File((String)localArrayList1.get(j));
          if ((!localFile2.exists()) || (!localFile2.isDirectory()) || (!localFile2.canWrite()))
          {
            int k = j - 1;
            localArrayList1.remove(j);
            j = k;
          }
        }
        localArrayList3 = localArrayList1;
        break label44;
        label232: localFile1 = null;
        continue;
        localFile1 = Environment.getExternalStorageDirectory();
      }
    }
  }

  private static ArrayList d()
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
        localFileNotFoundException.printStackTrace();
        Scanner localScanner = null;
      }
    }
    return localArrayList;
  }

  private static ArrayList e()
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
        localFileNotFoundException.printStackTrace();
        Scanner localScanner2 = null;
      }
    }
    return localArrayList;
  }

  protected final void a(View paramView)
  {
    PopupMenuHoneycomb localPopupMenuHoneycomb = new PopupMenuHoneycomb(this, paramView);
    addMenu(localPopupMenuHoneycomb);
    localPopupMenuHoneycomb.show();
  }

  public final void a_()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = Strings.getString(2131296554);
    arrayOfString[1] = Strings.getString(2131296552);
    if ((Integer.parseInt(Build.VERSION.SDK) >= 8) && ((Integer.parseInt(Build.VERSION.SDK) < 11) || (!HoneycombTools.isExternalStorageEmulated())))
    {
      arrayOfString = new String[3];
      arrayOfString[0] = Strings.getString(2131296554);
      arrayOfString[1] = Strings.getString(2131296552);
      arrayOfString[2] = Strings.getString(2131296553);
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setSingleChoiceItems(new at(this, arrayOfString, (byte)0), 0, new av(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
    org.antivirus.ganalytics.a.a(this, "storage_usage", "menu_opened", null);
  }

  public ArrayList addMenu(Object paramObject)
  {
    if ((paramObject instanceof Menu))
    {
      ((Menu)paramObject).add(0, 0, 0, Strings.getString(2131296554));
      ((Menu)paramObject).add(0, 1, 0, Strings.getString(2131296552));
      if ((Integer.parseInt(Build.VERSION.SDK) >= 8) && ((Integer.parseInt(Build.VERSION.SDK) < 11) || (!HoneycombTools.isExternalStorageEmulated())))
        ((Menu)paramObject).add(0, 2, 0, Strings.getString(2131296553));
    }
    while (true)
    {
      org.antivirus.ganalytics.a.a(this, "storage_usage", "menu_opened", null);
      return null;
      if ((paramObject instanceof PopupMenuHoneycomb))
      {
        ((PopupMenuHoneycomb)paramObject).add(0, 0, 0, Strings.getString(2131296554));
        ((PopupMenuHoneycomb)paramObject).add(0, 1, 0, Strings.getString(2131296552));
        if ((Integer.parseInt(Build.VERSION.SDK) >= 8) && ((Integer.parseInt(Build.VERSION.SDK) < 11) || (!HoneycombTools.isExternalStorageEmulated())))
          ((PopupMenuHoneycomb)paramObject).add(0, 2, 0, Strings.getString(2131296553));
      }
    }
  }

  public boolean handleMenuItem(MenuItem paramMenuItem)
  {
    return b(paramMenuItem.getItemId());
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (!this.i);
    for (boolean bool = true; ; bool = handleMenuItem(paramMenuItem))
      return bool;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(5);
    setContentView(2130903071);
    a(true, 2130837534, 2130837535, Strings.getString(2131296680), true);
    this.i = false;
    findViewById(2131230887).setVisibility(0);
    findViewById(2131230828).setVisibility(8);
    this.h.put("com.android.launcher", Boolean.valueOf(true));
    this.h.put("com.android.launcher2", Boolean.valueOf(true));
    this.h.put("com.htc.launcher", Boolean.valueOf(true));
    this.h.put("com.htc.android.mail", Boolean.valueOf(true));
    this.h.put(getPackageName(), Boolean.valueOf(true));
    this.f = ((ListView)findViewById(2131230897));
    this.f.setCacheColorHint(0);
    ((ActivityManager)getSystemService("activity")).getMemoryInfo(new ActivityManager.MemoryInfo());
    a(Environment.getDataDirectory(), 2131230889, 2131230890, 2131230888, false, 2131230748);
    a(c(), 2131230893, 2131230894, 2131230892, true, 2131230749);
    this.d = new a(-1);
    LayoutInflater.from(this);
    new Thread(new aw(this)).start();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return handleMenuItem(paramMenuItem);
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    addMenu(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }

  protected void onResume()
  {
    super.onResume();
    ListIterator localListIterator;
    ApplicationInfo localApplicationInfo2;
    if (this.a != -1)
    {
      localListIterator = getPackageManager().getInstalledApplications(0).listIterator();
      localApplicationInfo2 = (ApplicationInfo)localListIterator.next();
      InstalledApp localInstalledApp2 = (InstalledApp)this.g.get(this.a);
      if (localApplicationInfo2 == null)
        break label298;
      if (!localInstalledApp2.mPackageName.equals(localApplicationInfo2.packageName))
        break label263;
    }
    label263: label298: for (int j = 1; ; j = 0)
      while (true)
      {
        if (j == 0)
        {
          this.g.remove(this.a);
          this.e.notifyDataSetChanged();
          a(Environment.getDataDirectory(), 2131230889, 2131230890, 2131230888, false, 2131230748);
          a(c(), 2131230893, 2131230894, 2131230892, true, 2131230749);
        }
        this.a = -1;
        InstalledApp localInstalledApp1;
        PackageManager localPackageManager;
        if (this.b != -1)
        {
          localInstalledApp1 = (InstalledApp)this.g.get(this.b);
          localPackageManager = getPackageManager();
        }
        try
        {
          ApplicationInfo localApplicationInfo1 = localPackageManager.getApplicationInfo(localInstalledApp1.mPackageName, 0);
          localInstalledApp1.mPackageLocation = localApplicationInfo1.sourceDir;
          localInstalledApp1.flags = localApplicationInfo1.flags;
          label205: a(localInstalledApp1);
          this.e.notifyDataSetChanged();
          this.b = -1;
          a(Environment.getDataDirectory(), 2131230889, 2131230890, 2131230888, false, 2131230748);
          a(c(), 2131230893, 2131230894, 2131230892, true, 2131230749);
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
          break label205;
        }
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.StorageActivity
 * JD-Core Version:    0.6.2
 */