package com.avg.tuneup;

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
import com.avg.a.g;
import java.io.File;
import java.util.ArrayList;

public class b extends BaseAdapter
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

  private void a(int paramInt, f paramf)
  {
    com.avg.ui.general.c.b localb = (com.avg.ui.general.c.b)this.b.get(paramInt);
    String str1 = Environment.getDataDirectory().getPath();
    paramf.b.setText(localb.a);
    if (localb.d != null)
    {
      paramf.a.setImageDrawable(localb.d);
      if (this.c == 0)
        paramf.a.setOnClickListener(new c(this, localb));
    }
    switch (this.c)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      TextView localTextView = paramf.c;
      StringBuilder localStringBuilder = new StringBuilder().append(Formatter.formatFileSize(this.a, localb.g)).append(" ");
      String str2;
      if (localb.b.startsWith(str1))
      {
        str2 = "";
        label151: localTextView.setText(str2);
        paramf.e.setVisibility(0);
        paramf.e.setOnClickListener(new d(this, localb, paramInt));
        if (Build.VERSION.SDK_INT >= 8)
        {
          paramf.f.setVisibility(0);
          if ((Build.VERSION.SDK_INT >= 11) && (Environment.isExternalStorageEmulated()))
            paramf.f.setVisibility(8);
          paramf.f.setBackgroundResource(com.avg.a.d.move_to_sd);
          paramf.f.setEnabled(false);
          if (localb.k == 2)
          {
            paramf.f.setBackgroundResource(com.avg.a.d.move_to_phone);
            paramf.f.setEnabled(true);
          }
        }
      }
      else
      {
        while (true)
        {
          paramf.f.setOnClickListener(new e(this, localb, paramInt));
          break;
          str2 = this.a.getString(g.sd);
          break label151;
          if (localb.k == 1)
          {
            paramf.f.setBackgroundResource(com.avg.a.d.move_to_sd);
            paramf.f.setEnabled(true);
          }
        }
        paramf.d.setText(Html.fromHtml("<b>" + Formatter.formatFileSize(this.a, localb.i + localb.h) + "</b>"));
      }
    }
  }

  private void b(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + paramString));
    localIntent.setFlags(268435456);
    this.a.startActivity(localIntent);
  }

  public void a(String paramString)
  {
    Intent localIntent = new Intent();
    if (Build.VERSION.SDK_INT >= 9)
    {
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", paramString, null));
      this.a.startActivity(localIntent);
      return;
    }
    if (Build.VERSION.SDK_INT == 8);
    for (String str = "pkg"; ; str = "com.android.settings.ApplicationPkgName")
    {
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      localIntent.putExtra(str, paramString);
      break;
    }
  }

  public void a(ArrayList paramArrayList)
  {
    this.b = paramArrayList;
  }

  public int getCount()
  {
    if (this.b != null);
    for (int i = this.b.size(); ; i = 0)
      return i;
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    f localf2;
    f localf1;
    if (paramView == null)
    {
      paramView = this.d.inflate(com.avg.a.f.tuneup_apps_list_item, null);
      localf2 = new f(this);
      localf2.a = ((ImageView)paramView.findViewById(com.avg.a.e.image));
      localf2.b = ((TextView)paramView.findViewById(com.avg.a.e.name));
      localf2.c = ((TextView)paramView.findViewById(com.avg.a.e.desc));
      localf2.d = ((TextView)paramView.findViewById(com.avg.a.e.tv_value));
      localf2.e = ((Button)paramView.findViewById(com.avg.a.e.btn_uninstall));
      localf2.f = ((Button)paramView.findViewById(com.avg.a.e.btn_move_app));
      localf2.e.setVisibility(8);
      localf2.f.setVisibility(8);
      paramView.setTag(localf2);
      if (this.c != 1)
        break label194;
      localf2.c.setVisibility(8);
      localf2.d.setVisibility(0);
      localf1 = localf2;
    }
    while (true)
    {
      a(paramInt, localf1);
      return paramView;
      localf1 = (f)paramView.getTag();
      continue;
      label194: localf1 = localf2;
    }
  }

  public boolean isEnabled(int paramInt)
  {
    boolean bool;
    if (paramInt < this.b.size())
    {
      com.avg.ui.general.c.b localb = (com.avg.ui.general.c.b)this.b.get(paramInt);
      if (localb != null)
        if (localb.l != 1013)
          bool = true;
    }
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.b
 * JD-Core Version:    0.6.2
 */