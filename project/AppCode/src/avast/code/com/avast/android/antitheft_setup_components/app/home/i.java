package com.avast.android.antitheft_setup_components.app.home;

import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.widget.Button;
import android.widget.TextView;
import com.avast.android.antitheft_setup_components.b;
import com.avast.android.antitheft_setup_components.c;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.Application;
import com.avast.android.generic.util.a;

class i
  implements Runnable
{
  i(f paramf)
  {
  }

  public void run()
  {
    if (!this.a.a.isAdded());
    while (true)
    {
      return;
      if (!f.a(this.a))
      {
        this.a.a.a("ms-atSetup", "choose name", "continue", 0L);
        DownloadFragment.a(this.a.a).setText("");
        DownloadFragment.b(this.a.a).setText(g.ab);
        DownloadFragment.b(this.a.a).setTextColor(this.a.a.getResources().getColor(b.a));
        if (Application.c())
        {
          DownloadFragment.d(this.a.a).setText(g.i);
          this.a.a.startActivity(new Intent(this.a.a.getActivity(), RootMethodWizardActivity.class));
          a.a(this.a.a);
        }
        else
        {
          DownloadFragment.d(this.a.a).setText(g.F);
          Intent localIntent = new Intent();
          localIntent.setAction("android.intent.action.VIEW");
          localIntent.setDataAndType(Uri.parse("file://" + this.a.a.getActivity().getFilesDir() + "/" + "AvastAntiTheftInstaller.temp.apk"), "application/vnd.android.package-archive");
          localIntent.setComponent(new ComponentName("com.android.packageinstaller", "com.android.packageinstaller.PackageInstallerActivity"));
          this.a.a.startActivity(localIntent);
          DownloadFragment.f(this.a.a);
        }
      }
      else
      {
        DownloadFragment.a(this.a.a).setText("");
        DownloadFragment.b(this.a.a).setText(f.b(this.a));
        DownloadFragment.b(this.a.a).setTextColor(this.a.a.getResources().getColor(b.b));
        DownloadFragment.d(this.a.a).setText(g.k);
        DownloadFragment.d(this.a.a).setEnabled(true);
        DownloadFragment.d(this.a.a).setBackgroundResource(c.c);
        DownloadFragment.e(this.a.a).setEnabled(true);
        DownloadFragment.d(this.a.a).setOnClickListener(new j(this));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.i
 * JD-Core Version:    0.6.2
 */