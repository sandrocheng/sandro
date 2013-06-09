package org.antivirus.ui.help;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Toast;
import org.antivirus.AVService;
import org.antivirus.Strings;
import org.antivirus.core.a.n;

final class c
  implements AdapterView.OnItemClickListener
{
  c(Help paramHelp)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool = n.a(this.a);
    switch ((int)paramLong)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      if (!bool)
      {
        Toast.makeText(this.a, Strings.getString(2131296468), 1).show();
      }
      else
      {
        Intent localIntent3 = new Intent(this.a, AVService.class);
        localIntent3.putExtra("__SAC", 122);
        localIntent3.putExtra("__SAD", "/help.html");
        this.a.startService(localIntent3);
        org.antivirus.ganalytics.a.a(this.a, "help", "online_help", null);
        continue;
        if (!bool)
        {
          Toast.makeText(this.a, Strings.getString(2131296468), 1).show();
        }
        else
        {
          Intent localIntent2 = new Intent(this.a, AVService.class);
          localIntent2.putExtra("__SAC", 120);
          if (Help.e(this.a).a());
          for (String str = "/tospro.html"; ; str = "/tos.html")
          {
            localIntent2.putExtra("__SAD", str);
            this.a.startService(localIntent2);
            org.antivirus.ganalytics.a.a(this.a, "help", "terms_of_service", null);
            break;
          }
          if (!bool)
          {
            Toast.makeText(this.a, Strings.getString(2131296468), 1).show();
          }
          else
          {
            Intent localIntent1 = new Intent("android.intent.action.VIEW");
            localIntent1.setData(Uri.parse("http://www.avg.com"));
            this.a.startActivity(localIntent1);
            org.antivirus.ganalytics.a.a(this.a, "help", "avg", null);
            continue;
            if (!bool)
            {
              Toast.makeText(this.a, Strings.getString(2131296468), 1).show();
            }
            else
            {
              Help.f(this.a);
              org.antivirus.ganalytics.a.a(this.a, "help", "contact_us", null);
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.help.c
 * JD-Core Version:    0.6.2
 */