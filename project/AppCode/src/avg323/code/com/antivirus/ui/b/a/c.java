package com.antivirus.ui.b.a;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.i;
import android.view.LayoutInflater;
import android.widget.Toast;
import com.antivirus.m;
import com.antivirus.ui.help.Help;
import com.antivirus.ui.help.HelpTabletActivity;
import com.antivirus.ui.settings.a.b;
import com.avg.toolkit.b.f;

public class c extends a
{
  public void a(Context paramContext, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      new com.avg.ui.license.a().a(((i)paramContext).f(), "dialog");
      com.avg.toolkit.c.a.a(paramContext, "category_app_landing", "action_license", null, 0);
    }
    while (true)
    {
      return;
      paramContext.startActivity(new Intent(paramContext, Help.class));
      com.avg.toolkit.c.a.a(paramContext, "category_app_landing", "action_help", null, 0);
    }
  }

  public void d(Context paramContext)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(m.a(paramContext, 2131296503));
    localBuilder.setView(b.a(LayoutInflater.from(paramContext).inflate(2130903083, null), paramContext, true));
    localBuilder.setNegativeButton(m.a(paramContext, 2131296270), new d(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public void e(Context paramContext)
  {
    if (!f.a(paramContext))
      Toast.makeText(paramContext, m.a(paramContext, 2131296262), 1).show();
    while (true)
    {
      return;
      paramContext.startActivity(new Intent(paramContext, HelpTabletActivity.class));
      com.avg.toolkit.c.a.a(paramContext, "category_app_landing", "action_help", null, 0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.b.a.c
 * JD-Core Version:    0.6.2
 */