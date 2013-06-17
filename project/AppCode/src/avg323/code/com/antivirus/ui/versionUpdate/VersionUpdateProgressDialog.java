package com.antivirus.ui.versionUpdate;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.os.Messenger;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.antivirus.AVService;
import com.antivirus.e.h;
import com.antivirus.m;

public class VersionUpdateProgressDialog extends Activity
{
  private AlertDialog a;
  private ProgressBar b;
  private TextView c;
  private int d;
  private int e;
  private boolean f = true;
  private boolean g = true;
  private h h;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(m.a(this, 2131296681));
    localBuilder.setCancelable(true);
    localBuilder.setIcon(17301659);
    View localView = View.inflate(this, 2130903087, null);
    localBuilder.setView(localView);
    this.b = ((ProgressBar)localView.findViewById(2131230970));
    this.c = ((TextView)localView.findViewById(2131230971));
    ((TextView)localView.findViewById(2131230969)).setText(m.a(this, 2131296682));
    localBuilder.setOnCancelListener(new d(this));
    localBuilder.setNegativeButton(m.a(this, 2131296270), new e(this));
    this.a = localBuilder.create();
    Intent localIntent = getIntent();
    int i = localIntent.getIntExtra("progress", -1);
    int j;
    if (i >= 0)
    {
      this.d = i;
      j = localIntent.getIntExtra("progress_max", -1);
      if ((j < 0) || (j < this.d))
        break label343;
    }
    label343: for (this.e = j; ; this.e = 0)
    {
      this.b.setMax(this.e);
      this.b.setProgress(this.d);
      int k = (int)(100.0D * (this.d / this.e));
      this.c.setText("" + k + "%");
      this.a.setCanceledOnTouchOutside(false);
      this.a.show();
      this.h = new f(this);
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("__SAH", new Messenger(this.h));
      AVService.a(this, 6000, 2, localBundle);
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
 * Qualified Name:     com.antivirus.ui.versionUpdate.VersionUpdateProgressDialog
 * JD-Core Version:    0.6.2
 */