package org.antivirus.ui.protection;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.WindowManager;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import java.util.LinkedList;
import org.antivirus.AVService;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.compatibility.DonutTools;
import org.antivirus.core.scanners.ScannerFilesResult;
import org.antivirus.ui.BaseToolListActivity;

public class FileScannerActivity extends BaseToolListActivity
{
  ProgressDialog a;
  AVService.LocalBinder b;
  private final String[] c = { "SDCard", "Root", "Pictures", "Music", "Video" };
  private final String f = "/Music";
  private final String g = "/Video";
  private Handler h;
  private l i;
  private LinkedList j;
  private boolean k;
  private ScannerFilesResult l;
  private int m;
  private ServiceConnection n = new f(this);

  private void f()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131230872);
    if (this.j.size() > 0)
      if (localRelativeLayout.getVisibility() != 0)
      {
        localRelativeLayout.setVisibility(0);
        findViewById(2131230813).setPadding(0, 0, 0, this.m);
      }
    while (true)
    {
      return;
      if (localRelativeLayout.getVisibility() == 0)
        localRelativeLayout.setVisibility(8);
    }
  }

  public final void d()
  {
    if (!this.k);
    try
    {
      this.a.dismiss();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    bindService(new Intent(this, AVService.class), this.n, 1);
    this.h = new a(this);
    setContentView(2130903064);
    a(2130837516, 2130837517, Strings.getString(2131296315), false);
    this.j = new LinkedList();
    this.i = new l(this, this);
    setListAdapter(this.i);
    Spinner localSpinner = (Spinner)findViewById(2131230871);
    ArrayAdapter localArrayAdapter = new ArrayAdapter(this, 17367048, this.c);
    localArrayAdapter.setDropDownViewResource(17367049);
    localSpinner.setAdapter(localArrayAdapter);
    localSpinner.setOnItemSelectedListener(new g(this));
    getListView().setOnItemClickListener(new d(this));
    Button localButton = (Button)findViewById(2131230873);
    localButton.setText(Strings.getString(2131296272));
    localButton.setOnClickListener(new e(this));
    this.m = (50 * DonutTools.getDisplayDensity(((WindowManager)getSystemService("window")).getDefaultDisplay()) / 160);
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.n != null)
    {
      unbindService(this.n);
      this.n = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.FileScannerActivity
 * JD-Core Version:    0.6.2
 */