package org.antivirus.ui.versionUpdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import org.antivirus.AVService;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.Strings;

public class VersionUpdateProgressDialog extends Activity
{
  private AlertDialog a;
  private ProgressBar b;
  private TextView c;
  private int d;
  private int e;
  private boolean f = true;
  private boolean g = true;
  private Handler h;
  private AVService.LocalBinder i;
  private ServiceConnection j = new d(this);
  private org.antivirus.a.i k = new f(this);

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(Strings.getString(2131296581));
    localBuilder.setCancelable(true);
    localBuilder.setIcon(17301659);
    View localView = View.inflate(this, 2130903075, null);
    localBuilder.setView(localView);
    this.b = ((ProgressBar)localView.findViewById(2131230911));
    this.c = ((TextView)localView.findViewById(2131230912));
    ((TextView)localView.findViewById(2131230910)).setText(Strings.getString(2131296582));
    localBuilder.setOnCancelListener(new h(this));
    localBuilder.setNegativeButton(Strings.getString(2131296260), new i(this));
    this.a = localBuilder.create();
    Intent localIntent = getIntent();
    int m = localIntent.getIntExtra("progress", -1);
    int n;
    if (m >= 0)
    {
      this.d = m;
      n = localIntent.getIntExtra("progress_max", -1);
      if ((n < 0) || (n < this.d))
        break label317;
    }
    label317: for (this.e = n; ; this.e = 0)
    {
      this.b.setMax(this.e);
      this.b.setProgress(this.d);
      int i1 = (int)(100.0D * (this.d / this.e));
      this.c.setText(i1 + "%");
      this.a.setCanceledOnTouchOutside(false);
      this.a.show();
      this.h = new Handler();
      bindService(new Intent(this, AVService.class), this.j, 0);
      return;
      this.d = 0;
      break;
    }
  }

  protected void onDestroy()
  {
    if (this.a != null)
      this.a.dismiss();
    this.f = false;
    unbindService(this.j);
    super.onDestroy();
  }

  protected void onStart()
  {
    this.g = true;
    super.onStart();
  }

  protected void onStop()
  {
    this.g = false;
    if (this.a != null)
      this.a.cancel();
    super.onStop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.VersionUpdateProgressDialog
 * JD-Core Version:    0.6.2
 */