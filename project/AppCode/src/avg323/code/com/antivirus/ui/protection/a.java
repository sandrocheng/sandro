package com.antivirus.ui.protection;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Messenger;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.TextView;
import com.antivirus.AVService;
import com.antivirus.core.scanners.ScannerFilesConfig;
import com.antivirus.core.scanners.ScannerFilesResult;
import com.antivirus.ui.tablet.DualPaneActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class a extends com.avg.ui.general.fragments.d
{
  private static Handler af;
  public static String i = "service";
  ProgressDialog Y;
  com.antivirus.a Z;
  private final String[] aa = { "SDCard", "Root", "Pictures", "Music", "Video" };
  private final String ab = "/Music";
  private final String ac = "/Video";
  private View ae = null;
  private n ag;
  private LinkedList ah;
  private boolean ai;
  private ScannerFilesResult aj;
  private int ak;

  private void G()
  {
    if (this.ad.o())
      a(com.antivirus.m.a(this.ad, 2131296524), this.ae);
    this.ah = new LinkedList();
    this.ag = new n(this, this.ad);
    a(this.ag);
    J();
    Button localButton = (Button)this.ae.findViewById(2131230923);
    if (this.ad.o());
    while (true)
    {
      return;
      localButton.setText(com.antivirus.m.a(this.ad, 2131296481));
      localButton.setOnClickListener(new g(this));
      O();
    }
  }

  private void H()
  {
    L();
    com.avg.toolkit.c.a.a(this.ad, "file_scanner", "scan", null, 0);
  }

  private String I()
  {
    String str1 = Environment.getExternalStorageDirectory().toString();
    String str2;
    if (!TextUtils.isEmpty(str1))
    {
      str2 = str1 + "/DCIM";
      if (!new File(str2).exists());
    }
    while (true)
    {
      return str2;
      str2 = str1;
    }
  }

  private void J()
  {
    Spinner localSpinner = (Spinner)this.ae.findViewById(2131230921);
    ArrayAdapter localArrayAdapter = new ArrayAdapter(this.ad, 17367048, this.aa);
    localArrayAdapter.setDropDownViewResource(17367049);
    localSpinner.setAdapter(localArrayAdapter);
    localSpinner.setOnItemSelectedListener(new h(this));
  }

  private void K()
  {
    if (this.ad.o())
      if (this.ah.size() > 0)
        a(true);
    while (true)
    {
      return;
      a(false);
      continue;
      RelativeLayout localRelativeLayout = (RelativeLayout)this.ae.findViewById(2131230922);
      if (this.ah.size() > 0)
      {
        if (localRelativeLayout.getVisibility() != 0)
        {
          localRelativeLayout.setVisibility(0);
          this.ae.findViewById(2131230805).setPadding(0, 0, 0, this.ak);
        }
      }
      else if (localRelativeLayout.getVisibility() == 0)
        localRelativeLayout.setVisibility(8);
    }
  }

  private void L()
  {
    try
    {
      this.ai = false;
      this.Y = ProgressDialog.show(this.ad, "", com.antivirus.m.a(this.ad, 2131296322), true, true, new k(this));
      this.Y.setCanceledOnTouchOutside(false);
      this.Y.setIcon(17301659);
      this.Y.setOnDismissListener(new l(this));
      this.Y.setCanceledOnTouchOutside(false);
      ScannerFilesConfig localScannerFilesConfig = new ScannerFilesConfig();
      localScannerFilesConfig.e = ((List)this.ah.clone());
      localScannerFilesConfig.c = Boolean.valueOf(false);
      Bundle localBundle = new Bundle();
      localBundle.putSerializable("__SAD", com.antivirus.core.scanners.c.b);
      localBundle.putParcelable("__SAH", new Messenger(af));
      localBundle.putParcelable("ScannerConfig", localScannerFilesConfig);
      AVService.a(this.ad, 2000, 1, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  private void M()
  {
    try
    {
      this.ah.clear();
      K();
      this.ag.notifyDataSetChanged();
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ad);
      localBuilder.setTitle(com.antivirus.m.a(this.ad, 2131296521));
      this.aj = this.Z.a(com.antivirus.core.scanners.c.b).f;
      if (this.aj != null)
      {
        k = this.aj.b;
        j = this.aj.c.size();
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(k + " " + com.antivirus.m.a(this.ad, 2131296522));
        localStringBuilder.append("\n");
        localStringBuilder.append(j + " " + com.antivirus.m.a(this.ad, 2131296523));
        localBuilder.setMessage(localStringBuilder.toString());
        if (j > 0)
        {
          localBuilder.setPositiveButton(com.antivirus.m.a(this.ad, 2131296527), new m(this, j));
          localBuilder.setNegativeButton(com.antivirus.m.a(this.ad, 2131296504), new c(this));
        }
        while (true)
        {
          localBuilder.setIcon(2130837733);
          AlertDialog localAlertDialog = localBuilder.create();
          localAlertDialog.setCanceledOnTouchOutside(false);
          localAlertDialog.show();
          break;
          localBuilder.setPositiveButton(com.antivirus.m.a(this.ad, 2131296269), new d(this));
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        break;
        int j = 0;
        int k = 0;
      }
    }
  }

  private void N()
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("__SAD", 4);
    localBundle.putParcelable("ScannerResult", this.aj);
    AVService.a(this.ad, 2000, 4, localBundle);
  }

  private void O()
  {
    this.ak = (50 * com.avg.ui.general.c.i.a(((WindowManager)this.ad.getSystemService("window")).getDefaultDisplay()) / 160);
  }

  private void a(String paramString)
  {
    this.ag.b(paramString);
    TextView localTextView = (TextView)this.ae.findViewById(2131230920);
    if (paramString.length() > 40)
      paramString = "..." + paramString.substring(-40 + paramString.length());
    localTextView.setText(paramString);
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
      if (((DualPaneActivity)this.ad).k() == null)
      {
        com.antivirus.ui.tablet.a locala = new com.antivirus.ui.tablet.a(((DualPaneActivity)this.ad).a(true, 2130903040));
        locala.a(com.antivirus.m.a(this.ad.getApplicationContext(), 2131296481), 2130837537, new i(this));
        locala.b(com.antivirus.m.a(this.ad.getApplicationContext(), 2131296270), 2130837535, new j(this));
        locala.a(com.antivirus.m.a(this.ad.getApplicationContext(), 2131296827) + " " + this.ah.size());
      }
    while (true)
    {
      return;
      new com.antivirus.ui.tablet.a(((DualPaneActivity)this.ad).k()).a(com.antivirus.m.a(this.ad.getApplicationContext(), 2131296827) + " " + this.ah.size());
      continue;
      ((DualPaneActivity)this.ad).a(false, -1);
    }
  }

  private void b(int paramInt)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ad);
    localBuilder.setTitle(com.antivirus.m.a(this.ad, 2131296731));
    localBuilder.setMessage(com.antivirus.m.a(this.ad, 2131296732));
    localBuilder.setIcon(2130837732);
    localBuilder.setPositiveButton(com.antivirus.m.a(this.ad, 2131296269), new e(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public void F()
  {
    if (!this.ai);
    try
    {
      this.Y.dismiss();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.ae = paramLayoutInflater.inflate(2130903077, paramViewGroup, false);
    G();
    return this.ae;
  }

  public void a(Bundle paramBundle)
  {
    if (this.ad.o());
    for (this.Z = ((DualPaneActivity)this.ad).o; ; this.Z = ((FileScannerActivity)this.ad).n)
    {
      af = new b(this);
      super.a(paramBundle);
      return;
    }
  }

  public void d(Bundle paramBundle)
  {
    a().setOnItemClickListener(new f(this));
    super.d(paramBundle);
  }

  public void e()
  {
    if (this.ad.o())
      a(false);
    super.e();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.a
 * JD-Core Version:    0.6.2
 */