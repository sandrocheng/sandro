package com.antivirus.ui.versionUpdate;

import android.app.AlertDialog;
import android.content.Intent;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.antivirus.e.h;
import com.avg.toolkit.f.a;
import java.lang.ref.WeakReference;

class f extends h
{
  WeakReference a;

  protected f(VersionUpdateProgressDialog paramVersionUpdateProgressDialog)
  {
    this.a = new WeakReference(paramVersionUpdateProgressDialog);
  }

  public void a()
  {
    VersionUpdateProgressDialog localVersionUpdateProgressDialog = (VersionUpdateProgressDialog)this.a.get();
    if (localVersionUpdateProgressDialog == null);
    while (true)
    {
      return;
      if (VersionUpdateProgressDialog.b(localVersionUpdateProgressDialog) != null)
        VersionUpdateProgressDialog.b(localVersionUpdateProgressDialog).cancel();
    }
  }

  public void a(int paramInt1, int paramInt2)
  {
    VersionUpdateProgressDialog localVersionUpdateProgressDialog = (VersionUpdateProgressDialog)this.a.get();
    if (localVersionUpdateProgressDialog == null);
    while (true)
    {
      return;
      if (VersionUpdateProgressDialog.b(localVersionUpdateProgressDialog) != null)
      {
        VersionUpdateProgressDialog.c(localVersionUpdateProgressDialog).setMax(paramInt2);
        VersionUpdateProgressDialog.c(localVersionUpdateProgressDialog).setProgress(paramInt1);
        int i = (int)(100.0D * (paramInt1 / paramInt2));
        VersionUpdateProgressDialog.d(localVersionUpdateProgressDialog).setText("" + i + "%");
      }
    }
  }

  public void a(Intent paramIntent)
  {
    VersionUpdateProgressDialog localVersionUpdateProgressDialog = (VersionUpdateProgressDialog)this.a.get();
    if (localVersionUpdateProgressDialog == null);
    while (true)
    {
      return;
      if ((VersionUpdateProgressDialog.a(localVersionUpdateProgressDialog)) && (paramIntent != null));
      try
      {
        localVersionUpdateProgressDialog.startActivity(paramIntent);
        a();
      }
      catch (Exception localException)
      {
        while (true)
          a.a(localException);
      }
    }
  }

  protected void b()
  {
    VersionUpdateProgressDialog localVersionUpdateProgressDialog = (VersionUpdateProgressDialog)this.a.get();
    if (localVersionUpdateProgressDialog == null);
    while (true)
    {
      return;
      postDelayed(new g(this, localVersionUpdateProgressDialog), 2000L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.versionUpdate.f
 * JD-Core Version:    0.6.2
 */