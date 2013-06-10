package org.antivirus.tuneup;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.Html;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;
import org.antivirus.Strings;
import org.antivirus.core.compatibility.HoneycombTools;
import org.antivirus.ui.InstalledApp;

public final class b extends BaseAdapter
{
  private Context a;
  private ArrayList b = null;
  private int c;
  private LayoutInflater d;

  public b(Context paramContext, int paramInt, ArrayList paramArrayList)
  {
    this.a = paramContext;
    this.d = LayoutInflater.from(paramContext);
    this.b = paramArrayList;
    this.c = paramInt;
  }

  public final void a(String paramString)
  {
    Intent localIntent = new Intent();
    if (Integer.parseInt(Build.VERSION.SDK) >= 9)
    {
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", paramString, null));
      this.a.startActivity(localIntent);
      return;
    }
    if (Integer.parseInt(Build.VERSION.SDK) == 8);
    for (String str = "pkg"; ; str = "com.android.settings.ApplicationPkgName")
    {
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      localIntent.putExtra(str, paramString);
      break;
    }
  }

  public final void a(ArrayList paramArrayList)
  {
    this.b = paramArrayList;
  }

  public final int getCount()
  {
    if (this.b != null);
    for (int i = this.b.size(); ; i = 0)
      return i;
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    f localf;
    InstalledApp localInstalledApp;
    String str1;
    if (paramView == null)
    {
      paramView = this.d.inflate(2130903092, null);
      localf = new f(this);
      localf.a = ((ImageView)paramView.findViewById(2131230802));
      localf.b = ((TextView)paramView.findViewById(2131230803));
      localf.c = ((TextView)paramView.findViewById(2131230969));
      localf.d = ((TextView)paramView.findViewById(2131230832));
      localf.e = ((Button)paramView.findViewById(2131230970));
      localf.f = ((Button)paramView.findViewById(2131230971));
      localf.e.setVisibility(8);
      localf.f.setVisibility(8);
      paramView.setTag(localf);
      if (this.c == 1)
      {
        localf.c.setVisibility(8);
        localf.d.setVisibility(0);
      }
      localInstalledApp = (InstalledApp)this.b.get(paramInt);
      str1 = Environment.getDataDirectory().getPath();
      localf.b.setText(localInstalledApp.mAppName);
      if (localInstalledApp.mIcon != null)
      {
        localf.a.setImageDrawable(localInstalledApp.mIcon);
        localf.a.setOnClickListener(new c(this, localInstalledApp));
      }
      switch (this.c)
      {
      default:
      case 0:
      case 1:
      }
    }
    while (true)
    {
      return paramView;
      localf = (f)paramView.getTag();
      break;
      localf.c.setTextAppearance(this.a, 2131099661);
      TextView localTextView = localf.c;
      StringBuilder localStringBuilder = new StringBuilder().append(Formatter.formatFileSize(this.a, localInstalledApp.apkSize)).append(" ");
      String str2;
      if (localInstalledApp.mPackageLocation.startsWith(str1))
      {
        str2 = "";
        label343: localTextView.setText(str2);
        localf.e.setVisibility(0);
        localf.e.setOnClickListener(new d(this, localInstalledApp, paramInt));
        if (Integer.parseInt(Build.VERSION.SDK) >= 8)
        {
          localf.f.setVisibility(0);
          if ((Integer.parseInt(Build.VERSION.SDK) >= 11) && (HoneycombTools.isExternalStorageEmulated()))
            localf.f.setVisibility(8);
          localf.f.setBackgroundResource(2130837742);
          localf.f.setEnabled(false);
          if (localInstalledApp.movable == 2)
          {
            localf.f.setBackgroundResource(2130837741);
            localf.f.setEnabled(true);
          }
        }
      }
      else
      {
        while (true)
        {
          localf.f.setOnClickListener(new e(this, localInstalledApp, paramInt));
          break;
          str2 = Strings.getString(2131296548);
          break label343;
          if (localInstalledApp.movable == 1)
          {
            localf.f.setBackgroundResource(2130837742);
            localf.f.setEnabled(true);
          }
        }
        localf.d.setText(Html.fromHtml("<b>" + Formatter.formatFileSize(this.a, localInstalledApp.outTraffic + localInstalledApp.inTraffic) + "</b>"));
      }
    }
  }

  public final boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.b
 * JD-Core Version:    0.6.2
 */