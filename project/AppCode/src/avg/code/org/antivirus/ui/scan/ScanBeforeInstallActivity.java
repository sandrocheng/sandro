package org.antivirus.ui.scan;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import java.io.File;
import java.util.LinkedList;
import org.antivirus.AVService;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.scanners.ScannerFilesConfig;
import org.antivirus.core.scanners.c;
import org.antivirus.ui.main.ActivationActivity;

public class ScanBeforeInstallActivity extends Activity
{
  ProgressDialog a;
  AVService.LocalBinder b;
  private Handler c;
  private Intent d = null;
  private ServiceConnection e = new e(this);

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903079);
    this.d = getIntent();
    if (AVSettings.shouldShowActivationScreen())
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
      bindService(new Intent(this, AVService.class), this.e, 1);
      this.c = new f(this);
      if (this.d != null)
      {
        this.a = ProgressDialog.show(this, "", Strings.getString(2131296287), true, true, new g(this));
        this.a.setIcon(17301659);
        this.a.setCanceledOnTouchOutside(false);
        ScannerFilesConfig localScannerFilesConfig = new ScannerFilesConfig();
        LinkedList localLinkedList = new LinkedList();
        localLinkedList.add(new File(this.d.getData().getPath()));
        localScannerFilesConfig.e = localLinkedList;
        Intent localIntent3 = new Intent(this, AVService.class);
        localIntent3.putExtra("__SAC", 22);
        localIntent3.putExtra("__SAD", c.d);
        localIntent3.putExtra("__SAH", new Messenger(this.c));
        localIntent3.putExtra("ScannerConfig", localScannerFilesConfig);
        startService(localIntent3);
      }
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    if ((this.e != null) && (this.b != null))
    {
      unbindService(this.e);
      this.e = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.ScanBeforeInstallActivity
 * JD-Core Version:    0.6.2
 */