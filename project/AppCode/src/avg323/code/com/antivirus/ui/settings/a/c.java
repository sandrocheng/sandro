package com.antivirus.ui.settings.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.antivirus.AVService;
import com.antivirus.m;
import com.antivirus.ui.main.AntivirusMainScreen;

final class c
  implements AdapterView.OnItemClickListener
{
  c(a parama, Context paramContext)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    com.avg.ui.general.b.c localc = (com.avg.ui.general.b.c)this.a.getItem((int)paramLong);
    if ((localc != null) && (localc.a != null));
    for (String str = localc.a; ; str = "English")
    {
      m.a(this.b, str, null);
      m.b(this.b);
      AVService.a(this.b, 25000, 9, null);
      ((Activity)this.b).setResult(-1);
      Intent localIntent = new Intent((Activity)this.b, AntivirusMainScreen.a());
      localIntent.setFlags(67108864);
      ((Activity)this.b).startActivity(localIntent);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.settings.a.c
 * JD-Core Version:    0.6.2
 */