package com.antivirus.ui.b.a;

import android.content.Context;
import android.content.Intent;
import android.text.Html;
import android.widget.Toast;
import com.antivirus.m;
import com.avg.toolkit.b.f;
import com.avg.toolkit.b.h;
import com.avg.toolkit.e.e;
import com.avg.ui.general.o;
import com.avg.ui.license.EnterLicenseActivity;

public abstract class a
  implements com.avg.ui.general.e.a
{
  public void a(Context paramContext)
  {
    if (!f.a(paramContext))
      Toast.makeText(paramContext, m.a(paramContext, 2131296262), 1).show();
    while (true)
    {
      return;
      com.antivirus.b.a.a(paramContext);
      com.avg.toolkit.c.a.a(paramContext, "category_app_landing", "action_upgrade", null, 0);
    }
  }

  public void b(Context paramContext)
  {
    com.avg.toolkit.UID.a locala = new com.avg.toolkit.UID.a(paramContext);
    String str1 = m.a(paramContext, 2131296273);
    String str2 = m.a(paramContext, 2131296274);
    if (o.c())
    {
      str1 = m.a(paramContext, 2131296275);
      str2 = m.a(paramContext, 2131296276);
    }
    String str3 = locala.a();
    if (str3 != null);
    while (true)
    {
      h localh = new h(paramContext);
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = localh.c();
      arrayOfObject[1] = str3;
      arrayOfObject[2] = Integer.valueOf(e.a().o);
      arrayOfObject[3] = Integer.valueOf(e.a().p);
      String str4 = str2.replace("[url]", String.format("%s/purchase/share?device_sn=%s&varCode=%s&fs=%s", arrayOfObject));
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.putExtra("android.intent.extra.EMAIL", new String[] { "" });
      localIntent.putExtra("android.intent.extra.SUBJECT", str1);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str4);
      localStringBuilder.append("\n");
      localIntent.putExtra("android.intent.extra.TEXT", Html.fromHtml(localStringBuilder.toString()));
      localIntent.setType("text/html");
      paramContext.startActivity(Intent.createChooser(localIntent, "Email:"));
      com.avg.toolkit.c.a.a(paramContext, "category_app_landing", "action_share", null, 0);
      return;
      str3 = "";
    }
  }

  protected void c(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, EnterLicenseActivity.class);
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.b.a.a
 * JD-Core Version:    0.6.2
 */