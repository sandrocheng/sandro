package com.keniu.security.process;

import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.keniu.security.d.e;
import java.util.Collections;
import java.util.List;

final class z extends BaseAdapter
{
  public z(ProcessWhiteSettingActivity paramProcessWhiteSettingActivity)
  {
  }

  public final void a()
  {
    if (!this.a.a.isEmpty())
      Collections.sort(this.a.a, new aa(this));
  }

  public final int getCount()
  {
    return this.a.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.a.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView2;
    y localy2;
    if ((paramView == null) || ((y)paramView.getTag() == null))
    {
      View localView1 = LayoutInflater.from(this.a).inflate(2130903258, null, false);
      y localy1 = new y(this.a);
      localy1.a = ((ImageView)localView1.findViewById(2131231519));
      localy1.b = ((TextView)localView1.findViewById(2131231521));
      localy1.c = ((CheckBox)localView1.findViewById(2131231520));
      localView1.setTag(localy1);
      localView2 = localView1;
      localy2 = localy1;
    }
    while (true)
    {
      e locale = (e)this.a.a.get(paramInt);
      try
      {
        Drawable localDrawable2 = this.a.e.getApplicationIcon(locale.b());
        localDrawable1 = localDrawable2;
        localy2.a.setImageDrawable(localDrawable1);
        localy2.b.setText(locale.c());
        localy2.c.setChecked(locale.a());
        localy2.c.setOnClickListener(new ab(this, locale));
        return localView2;
        localy2 = (y)paramView.getTag();
        localView2 = paramView;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        while (true)
          Drawable localDrawable1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.z
 * JD-Core Version:    0.6.2
 */