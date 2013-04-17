package com.tencent.qqpimsecure.ui.activity;

import a;
import aau;
import aea;
import aeb;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.view.KeyEvent;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.tmsecure.utils.SDKUtil;
import di;
import dx;
import fd;
import hg;
import ho;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import np;
import si;
import zo;

public class SplashActivity extends Activity
{
  private static String a = "extra_optimize_ignore_pkg";
  private Handler b = new aeb(this);

  private void a()
  {
    File localFile1 = new File(dx.e);
    if (!localFile1.exists())
      localFile1.mkdir();
    File localFile2 = new File(dx.b);
    if (!localFile2.exists())
      localFile2.mkdir();
    File localFile3 = new File(dx.c);
    if (!localFile3.exists())
      localFile3.mkdir();
    File localFile4 = new File(dx.f);
    if (!localFile4.exists())
      localFile4.mkdir();
    File localFile5 = new File(dx.g);
    if (!localFile5.exists())
      localFile5.mkdirs();
    File localFile6 = new File(dx.h);
    if (!localFile6.exists())
      localFile6.mkdirs();
    si.a(this).a();
    File localFile7 = new File(getDir("plugins", 0).getAbsolutePath());
    if (!localFile7.exists())
      localFile7.mkdir();
    String[] arrayOfString = localFile7.list();
    if ((arrayOfString == null) || (!Arrays.asList(arrayOfString).contains("qqwebdisk8.tsp")))
    {
      File[] arrayOfFile7;
      int i9;
      int i10;
      if ((arrayOfString != null) && (Arrays.asList(arrayOfString).contains("qqwebdisk7.tsp")))
      {
        new File(localFile7.getPath() + "/qqwebdisk7.tsp").delete();
        arrayOfFile7 = getDir("plugins_dex", 0).listFiles();
        i9 = arrayOfFile7.length;
        i10 = 0;
      }
      while (i10 < i9)
      {
        arrayOfFile7[i10].delete();
        i10++;
        continue;
        File[] arrayOfFile6;
        int i7;
        int i8;
        if ((arrayOfString != null) && (Arrays.asList(arrayOfString).contains("qqwebdisk6.tsp")))
        {
          new File(localFile7.getPath() + "/qqwebdisk6.tsp").delete();
          arrayOfFile6 = getDir("plugins_dex", 0).listFiles();
          i7 = arrayOfFile6.length;
          i8 = 0;
        }
        while (i8 < i7)
        {
          arrayOfFile6[i8].delete();
          i8++;
          continue;
          File[] arrayOfFile5;
          int i5;
          int i6;
          if ((arrayOfString != null) && (Arrays.asList(arrayOfString).contains("qqwebdisk5.tsp")))
          {
            new File(localFile7.getPath() + "/qqwebdisk5.tsp").delete();
            arrayOfFile5 = getDir("plugins_dex", 0).listFiles();
            i5 = arrayOfFile5.length;
            i6 = 0;
          }
          while (i6 < i5)
          {
            arrayOfFile5[i6].delete();
            i6++;
            continue;
            File[] arrayOfFile4;
            int i3;
            int i4;
            if ((arrayOfString != null) && (Arrays.asList(arrayOfString).contains("qqwebdisk4.tsp")))
            {
              new File(localFile7.getPath() + "/qqwebdisk4.tsp").delete();
              arrayOfFile4 = getDir("plugins_dex", 0).listFiles();
              i3 = arrayOfFile4.length;
              i4 = 0;
            }
            while (i4 < i3)
            {
              arrayOfFile4[i4].delete();
              i4++;
              continue;
              File[] arrayOfFile3;
              int i1;
              int i2;
              if ((arrayOfString != null) && (Arrays.asList(arrayOfString).contains("qqwebdisk3.tsp")))
              {
                new File(localFile7.getPath() + "/qqwebdisk3.tsp").delete();
                arrayOfFile3 = getDir("plugins_dex", 0).listFiles();
                i1 = arrayOfFile3.length;
                i2 = 0;
              }
              while (i2 < i1)
              {
                arrayOfFile3[i2].delete();
                i2++;
                continue;
                File[] arrayOfFile2;
                int m;
                int n;
                if ((arrayOfString != null) && (Arrays.asList(arrayOfString).contains("qqwebdisk2.tsp")))
                {
                  new File(localFile7.getPath() + "/qqwebdisk2.tsp").delete();
                  arrayOfFile2 = getDir("plugins_dex", 0).listFiles();
                  m = arrayOfFile2.length;
                  n = 0;
                }
                while (n < m)
                {
                  arrayOfFile2[n].delete();
                  n++;
                  continue;
                  if ((arrayOfString != null) && (Arrays.asList(arrayOfString).contains("qqwebdisk.tsp")))
                  {
                    new File(localFile7.getPath() + "/qqwebdisk.tsp").delete();
                    File[] arrayOfFile1 = getDir("plugins_dex", 0).listFiles();
                    int j = arrayOfFile1.length;
                    for (int k = 0; k < j; k++)
                      arrayOfFile1[k].delete();
                  }
                }
              }
            }
          }
        }
      }
    }
    if ((arrayOfString != null) && (!Arrays.asList(arrayOfString).contains("qqwebdisk8.tsp")))
      a.a(this, "qqwebdisk8.tsp", localFile7.getAbsolutePath());
    if (Environment.getExternalStorageState().equals("mounted"));
    try
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      String str1;
      StringBuilder localStringBuilder4;
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        str1 = Environment.getExternalStorageDirectory().getPath();
        if (new File(str1 + "/QQWebSiteFile/").exists())
        {
          StringBuilder localStringBuilder2 = new StringBuilder();
          if (!Environment.getExternalStorageState().equals("mounted"))
            break label1377;
          str2 = Environment.getExternalStorageDirectory().getPath();
          File localFile8 = new File(str2 + "/QQWebSiteFile/");
          StringBuilder localStringBuilder3 = new StringBuilder();
          if (!Environment.getExternalStorageState().equals("mounted"))
            break label1384;
          str3 = Environment.getExternalStorageDirectory().getPath();
          localFile8.renameTo(new File(str3 + "/QQdisk/"));
          a.d("/data/data/com.tencent.qqpimsecure/databases/qqwebsite.db");
          localStringBuilder4 = new StringBuilder();
          if (!Environment.getExternalStorageState().equals("mounted"))
            break label1258;
        }
      }
      label1258: for (String str4 = Environment.getExternalStorageDirectory().getPath(); ; str4 = "/sdcard")
      {
        a.d(str4 + "/QQWebSiteFile/");
        boolean bool = new hg().a();
        if ((ho.a().W()) && (!bool))
          break label1371;
        if (!bool)
          break label1327;
        ho.a().W(false);
        if (QQWebdiskHelpActivity.a.length > 1)
          break label1275;
        di.b().a(this);
        startActivity(new Intent(this, MainActivity.class));
        finish();
        i = 1;
        if (i == 0)
        {
          di.b().a(this);
          startActivity(new Intent(this, MainActivity.class));
          finish();
        }
        return;
        str1 = "/sdcard";
        break;
      }
    }
    catch (Exception localException)
    {
      label1327: label1371: label1377: label1384: 
      while (true)
      {
        String str2;
        String str3;
        int i;
        localException.printStackTrace();
        continue;
        label1275: if (QQWebdiskHelpActivity.a.length > 1)
        {
          di.b().a(this);
          Intent localIntent2 = new Intent(this, QQWebdiskHelpActivity.class);
          localIntent2.putExtra("from", 1);
          startActivity(localIntent2);
          finish();
          i = 1;
          continue;
          di.b().a(this);
          Intent localIntent1 = new Intent(this, QQWebdiskHelpActivity.class);
          localIntent1.putExtra("from", 0);
          startActivity(localIntent1);
          finish();
          i = 1;
        }
        else
        {
          i = 0;
          continue;
          str2 = "/sdcard";
          continue;
          str3 = "/sdcard";
        }
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (SDKUtil.getSDKVersion() < 5)
    {
      startActivity(new Intent(this, LowSDKwarningActivity.class));
      finish();
    }
    while (true)
    {
      return;
      requestWindowFeature(1);
      setContentView(2130903254);
      if (fd.a != null)
        fd.a.interrupt();
      startService(new Intent(getApplicationContext(), SecureService.class));
      new StringBuilder("SplashActivity SecureService.isServiceOn ").append(SecureService.a).toString();
      if ((!ho.a().aV()) && (SecureService.a))
        a();
      zo.a().a(getIntent().getStringExtra(a));
      new aea().start();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    stopService(new Intent(this, aau.class));
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return true;
  }

  public void onResume()
  {
    super.onResume();
    if (!SecureService.a)
      this.b.sendEmptyMessageDelayed(0, 3000L);
    while (true)
    {
      return;
      this.b.sendEmptyMessageDelayed(0, 500L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.SplashActivity
 * JD-Core Version:    0.6.2
 */