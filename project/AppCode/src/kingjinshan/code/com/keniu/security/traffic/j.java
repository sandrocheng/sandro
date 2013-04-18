package com.keniu.security.traffic;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.Vector;

public final class j extends BaseAdapter
{
  private Vector a;
  private LayoutInflater b;
  private PackageManager c;

  public j(Vector paramVector, Context paramContext)
  {
    this.a = paramVector;
    this.b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.c = paramContext.getPackageManager();
  }

  public final int getCount()
  {
    if (this.a != null);
    for (int i = this.a.size(); ; i = 0)
      return i;
  }

  public final Object getItem(int paramInt)
  {
    if (this.a != null);
    for (Object localObject = this.a.get(paramInt); ; localObject = null)
      return localObject;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    PackageInfo localPackageInfo = (PackageInfo)this.a.get(paramInt);
    if (paramView == null);
    for (View localView = this.b.inflate(2130903319, null); ; localView = paramView)
    {
      ImageView localImageView = (ImageView)localView.findViewById(2131231025);
      try
      {
        Drawable localDrawable2 = this.c.getApplicationIcon(localPackageInfo.packageName);
        localDrawable1 = localDrawable2;
        localImageView.setImageDrawable(localDrawable1);
        return localView;
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
 * Qualified Name:     com.keniu.security.traffic.j
 * JD-Core Version:    0.6.2
 */