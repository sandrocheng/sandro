package com.avg.tuneup.taskkiller;

import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.avg.a.e;
import com.avg.a.f;
import java.util.ArrayList;
import java.util.Collections;

class h
  implements Runnable
{
  h(d paramd, boolean paramBoolean, LinearLayout paramLinearLayout, View paramView, LayoutInflater paramLayoutInflater)
  {
  }

  public void run()
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    if (this.a)
      d.a(this.e, d.e(this.e).a(d.d(this.e), this.e.c, false));
    Collections.sort(d.f(this.e));
    while (true)
    {
      b localb;
      View localView;
      synchronized (d.g(this.e))
      {
        if (!d.h(this.e))
          d.k(this.e).runOnUiThread(new i(this));
        if (i >= d.f(this.e).size())
          break;
        localb = (b)d.f(this.e).get(i);
        localView = this.d.inflate(f.uninstall_apps_list_item, null);
        localView.setTag(localb);
        ((TextView)localView.findViewById(e.desc)).setVisibility(this.e.F());
        ((TextView)localView.findViewById(e.name)).setText(localb.d);
        ((TextView)localView.findViewById(e.desc)).setText(this.e.a(localb));
        ImageView localImageView = (ImageView)localView.findViewById(e.closeImage);
        localArrayList.add((ImageView)localView.findViewById(e.image));
        localImageView.setOnClickListener(new j(this, localView));
      }
      synchronized (d.g(this.e))
      {
        boolean bool = d.h(this.e);
        if (!bool);
        try
        {
          localb.f = d.p(this.e).getPackageManager().getApplicationIcon(localb.e);
          d.q(this.e).runOnUiThread(new l(this, localView, localArrayList, i, localb));
          i++;
          continue;
          localObject2 = finally;
          throw localObject2;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          while (true)
            com.avg.toolkit.f.a.a();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.h
 * JD-Core Version:    0.6.2
 */