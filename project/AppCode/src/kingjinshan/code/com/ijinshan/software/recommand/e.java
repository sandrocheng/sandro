package com.ijinshan.software.recommand;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.keniu.security.util.ax;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

final class e extends ArrayAdapter
{
  private Map b = new HashMap();

  public e(HotTopActivity paramHotTopActivity, Context paramContext, List paramList)
  {
    super(paramContext, 0, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = (View)this.b.get(Integer.valueOf(paramInt));
    q localq;
    f localf;
    if (localObject == null)
    {
      localq = (q)HotTopActivity.d(this.a).get(paramInt);
      LayoutInflater localLayoutInflater = ((Activity)getContext()).getLayoutInflater();
      localf = new f(this);
      View localView = localLayoutInflater.inflate(2130903168, null);
      localf.b = ((TextView)localView.findViewById(2131231273));
      localf.c = ((TextView)localView.findViewById(2131231274));
      localf.a = ((ImageView)localView.findViewById(2131231272));
      localView.setTag(localf);
      localf.b.setText(localq.b);
      if ((localq.c == null) || (localq.d == null))
      {
        localf.c.setText(localq.g);
        if (!localf.a.isDrawingCacheEnabled())
        {
          localf.a.setTag(localq.a);
          n localn = new n();
          ImageView[] arrayOfImageView = new ImageView[1];
          arrayOfImageView[0] = localf.a;
          localn.execute(arrayOfImageView);
          localf.a.setDrawingCacheEnabled(true);
        }
        this.b.put(Integer.valueOf(paramInt), localView);
        localObject = localView;
      }
    }
    while (true)
    {
      return localObject;
      if (localq.e == null);
      for (String str1 = this.a.getString(2131429131); ; str1 = ax.f(Integer.parseInt(localq.e)))
      {
        TextView localTextView = localf.c;
        String str2 = this.a.getString(2131429130);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localq.c;
        arrayOfObject[1] = str1;
        localTextView.setText(String.format(str2, arrayOfObject));
        break;
      }
      ((View)localObject).getTag();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.e
 * JD-Core Version:    0.6.2
 */