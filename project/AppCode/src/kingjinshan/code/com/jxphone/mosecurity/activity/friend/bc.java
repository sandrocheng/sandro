package com.jxphone.mosecurity.activity.friend;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;

final class bc extends BaseAdapter
{
  private final int[] b = { 2130837636, 2130837712, 17301622, 17301623, 17301624, 17301631, 17301625, 17301626, 17301627, 17301628, 17301630, 17301632, 17301633, 17301635, 17301636, 17301637, 17301639, 17301640 };

  private bc(NotificationPreferenceActivity paramNotificationPreferenceActivity, byte paramByte)
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
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bc
 * JD-Core Version:    0.6.2
 */