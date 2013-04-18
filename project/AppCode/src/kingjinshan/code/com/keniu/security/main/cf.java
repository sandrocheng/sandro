package com.keniu.security.main;

import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

final class cf extends BaseAdapter
{
  private List b;

  public cf(cd paramcd, List paramList)
  {
    this.b = paramList;
  }

  public final int getCount()
  {
    return 2 + this.b.size();
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
    if (paramView == null);
    for (View localView = cd.c(this.a).inflate(2130903228, null, false); ; localView = paramView)
    {
      ImageView localImageView = (ImageView)localView.findViewById(2131231442);
      TextView localTextView = (TextView)localView.findViewById(2131231443);
      if (paramInt == this.b.size());
      try
      {
        localImageView.setImageResource(2130837907);
        localTextView.setText(2131427909);
        while (true)
        {
          label71: return localView;
          if (paramInt == 1 + this.b.size())
            try
            {
              localImageView.setImageResource(2130837908);
              localTextView.setText(2131427910);
            }
            catch (Exception localException2)
            {
            }
          else
            try
            {
              ResolveInfo localResolveInfo = (ResolveInfo)this.b.get(paramInt);
              localImageView.setImageDrawable(cd.a(this.a).getApplicationIcon(localResolveInfo.activityInfo.packageName));
              localTextView.setText(((ResolveInfo)this.b.get(paramInt)).activityInfo.loadLabel(cd.a(this.a)));
            }
            catch (Exception localException1)
            {
            }
        }
      }
      catch (Exception localException3)
      {
        break label71;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.cf
 * JD-Core Version:    0.6.2
 */