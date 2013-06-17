package com.antivirus.ui.b.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.antivirus.ui.help.Help;
import com.antivirus.ui.settings.LanguageSelector;

public class b extends a
{
  public void a(Context paramContext, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      c(paramContext);
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
    com.avg.toolkit.c.a.a(paramContext, "category_app_landing", "action_language", null, 0);
    ((Activity)paramContext).startActivityForResult(new Intent(paramContext, LanguageSelector.class), 2);
  }

  public void e(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, Help.class));
    com.avg.toolkit.c.a.a(paramContext, "category_app_landing", "action_help", null, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.b.a.b
 * JD-Core Version:    0.6.2
 */