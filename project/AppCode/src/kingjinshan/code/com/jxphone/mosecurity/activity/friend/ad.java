package com.jxphone.mosecurity.activity.friend;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;

final class ad extends BaseAdapter
{
  private final int[] b = { 2130837830, 2130837815, 2130837816 };

  private ad(FriendNameAndIconActivity paramFriendNameAndIconActivity, byte paramByte)
  {
  }

  public final Integer a(int paramInt)
  {
    return Integer.valueOf(this.b[paramInt]);
  }

  public final int getCount()
  {
    return this.b.length;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (ImageView localImageView = (ImageView)this.a.getLayoutInflater().inflate(2130903109, null); ; localImageView = (ImageView)paramView)
    {
      localImageView.setImageResource(this.b[paramInt]);
      return localImageView;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ad
 * JD-Core Version:    0.6.2
 */