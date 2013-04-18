package com.keniu.security.traffic;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import java.util.ArrayList;

final class en extends BaseAdapter
{
  public en(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity, Context paramContext)
  {
    TrafficZiFeiSettingActivity.a(paramTrafficZiFeiSettingActivity, LayoutInflater.from(paramContext));
  }

  public final int getCount()
  {
    return TrafficZiFeiSettingActivity.z(this.a).size();
  }

  public final Object getItem(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ep localep;
    View localView;
    if (paramView == null)
    {
      localep = new ep(this.a);
      localView = TrafficZiFeiSettingActivity.G(this.a).inflate(2130903320, null);
      localep.a = ((RadioButton)localView.findViewById(2131231731));
      localView.setTag(localep);
      localep.a.setText(((String)TrafficZiFeiSettingActivity.z(this.a).get(paramInt)).toString());
      localep.a.setId(paramInt);
      localep.a.setOnCheckedChangeListener(new eo(this));
      String str = localep.a.getText().toString();
      if (((TextUtils.isEmpty(TrafficZiFeiSettingActivity.r(this.a))) || (!str.equals(TrafficZiFeiSettingActivity.r(this.a).split(",")[1]))) && ((TextUtils.isEmpty(TrafficZiFeiSettingActivity.s(this.a))) || (!str.equals(TrafficZiFeiSettingActivity.s(this.a).split(",")[1]))))
        break label214;
      localep.a.setChecked(true);
    }
    while (true)
    {
      return localView;
      localep = (ep)paramView.getTag();
      localView = paramView;
      break;
      label214: localep.a.setChecked(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.en
 * JD-Core Version:    0.6.2
 */