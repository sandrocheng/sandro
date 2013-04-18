package com.jxphone.mosecurity.activity.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.io.File;

public final class h extends BaseAdapter
{
  private Context a;
  private File[] b;
  private Bitmap[] c;

  private File a(int paramInt)
  {
    return this.b[paramInt];
  }

  public final int getCount()
  {
    return this.b.length;
  }

  public final Object getItem(int paramInt)
  {
    return this.c[paramInt];
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    ImageView localImageView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(this.a).inflate(2130903255, null);
      localImageView = (ImageView)localView.findViewById(2131231514);
      localView.setTag(localImageView);
    }
    while (true)
    {
      localImageView.setImageBitmap(this.c[paramInt]);
      return localView;
      localImageView = (ImageView)paramView.getTag();
      localView = paramView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.a.h
 * JD-Core Version:    0.6.2
 */