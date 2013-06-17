package com.antivirus.ui.scan;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import com.antivirus.AVService;
import com.antivirus.core.scanners.ScannerFilesConfig;
import com.antivirus.core.scanners.ScannerFilesResult;
import com.antivirus.core.scanners.h;
import com.antivirus.m;
import com.antivirus.ui.main.ActivationActivity;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;

public class ScanBeforeInstallActivity extends Activity
{
  ProgressDialog a;
  com.antivirus.a b;
  private Handler c;
  private Intent d = null;
  private ServiceConnection e = new e(this);

  private void b()
  {
    ScannerFilesResult localScannerFilesResult = this.b.a(com.antivirus.core.scanners.c.d).f;
    boolean bool = localScannerFilesResult.a;
    String str1 = m.a(this, 2131296353);
    String str2 = m.a(this, 2131296353);
    String str3;
    String str5;
    String str4;
    if ((!bool) && (localScannerFilesResult.e.size() == 1))
    {
      String str7 = (String)localScannerFilesResult.e.keySet().iterator().next();
      String str8 = (String)localScannerFilesResult.d.get(((com.antivirus.core.scanners.f)localScannerFilesResult.e.get(str7)).e);
      String str9 = ((com.antivirus.core.scanners.f)localScannerFilesResult.e.get(str7)).g;
      str3 = str8;
      str5 = str9;
      str4 = str7;
    }
    while (true)
    {
      try
      {
        String str6 = this.d.getData().getPath();
        localObject2 = str6;
      }
      catch (Exception localException1)
      {
        try
        {
          Intent localIntent3 = new Intent("android.intent.action.VIEW");
          localIntent3.addCategory("android.intent.category.DEFAULT");
          localIntent3.setDataAndType(this.d.getData(), "application/vnd.android.package-archive");
          Iterator localIterator = getPackageManager().queryIntentActivities(localIntent3, 65536).iterator();
          if (localIterator.hasNext())
          {
            ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
            if (!localResolveInfo.activityInfo.packageName.contains("packageinstaller"))
              continue;
            localIntent3.setClassName(localResolveInfo.activityInfo.packageName, localResolveInfo.activityInfo.name);
            i = 1;
            Intent localIntent1 = localIntent3;
            if (bool)
            {
              if ((i != 0) && (localIntent1 != null))
              {
                localIntent1.addFlags(8);
                startActivity(localIntent1);
              }
              if (this.a != null)
                this.a.dismiss();
              finish();
              return;
              localException1 = localException1;
              localObject1 = null;
              com.avg.toolkit.f.a.a(localException1);
              localObject2 = localObject1;
              i = 0;
              localIntent1 = null;
              continue;
            }
            if ((localObject2 == null) || (((String)localObject2).length() <= 0))
              continue;
            Intent localIntent2 = new Intent(this, FileRemover.class);
            localIntent2.putExtra("file_path", (String)localObject2);
            localIntent2.putExtra("suspicious", new File((String)localObject2).getName());
            localIntent2.putExtra("continue", localIntent1);
            localIntent2.putExtra("categtory", str3);
            localIntent2.putExtra("suspicious_package", str5);
            int j = str4.lastIndexOf('/');
            if (-1 != j)
              str4 = str4.substring(j + 1);
            localIntent2.putExtra("appName", str4);
            startActivity(localIntent2);
            continue;
          }
        }
        catch (Exception localException2)
        {
          Object localObject2;
          Object localObject1 = localObject2;
          continue;
          int i = 0;
          continue;
        }
      }
      str3 = str1;
      str4 = str2;
      str5 = "";
    }
  }

  void a()
  {
    if ((this.e != null) && (this.b != null))
    {
      unbindService(this.e);
      this.e = null;
    }
  }

  void a(Context paramContext)
  {
    bindService(new Intent(this, AVService.class), this.e, 1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903093);
    this.d = getIntent();
    if (com.antivirus.c.e())
    {
      Intent localIntent1 = new Intent(this, ActivationActivity.class);
      Intent localIntent2 = new Intent(this, ScanBeforeInstallActivity.class);
      localIntent2.setData(this.d.getData());
      localIntent1.putExtra("ext_a_intent", localIntent2);
      startActivity(localIntent1);
    }
    while (true)
    {
      return;
      a(this);
      this.c = new f(this);
      if (this.d != null)
      {
        this.a = ProgressDialog.show(this, "", m.a(this, 2131296322), true, true, new g(this));
        this.a.setIcon(17301659);
        this.a.setCanceledOnTouchOutside(false);
        ScannerFilesConfig localScannerFilesConfig = new ScannerFilesConfig();
        LinkedList localLinkedList = new LinkedList();
        localLinkedList.add(new File(this.d.getData().getPath()));
        localScannerFilesConfig.e = localLinkedList;
        Bundle localBundle = new Bundle();
        localBundle.putSerializable("__SAD", com.antivirus.core.scanners.c.d);
        localBundle.putParcelable("__SAH", new Messenger(this.c));
        localBundle.putParcelable("ScannerConfig", localScannerFilesConfig);
        AVService.a(this, 2000, 1, localBundle);
      }
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.ScanBeforeInstallActivity
 * JD-Core Version:    0.6.2
 */