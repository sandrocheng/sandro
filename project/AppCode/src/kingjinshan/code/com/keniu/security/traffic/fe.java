package com.keniu.security.traffic;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import java.util.ArrayList;

final class fe extends BaseAdapter
{
  public fe(TrafficZiFeiSubProviceSettingActivity paramTrafficZiFeiSubProviceSettingActivity, Context paramContext)
  {
    TrafficZiFeiSubProviceSettingActivity.a(paramTrafficZiFeiSubProviceSettingActivity, LayoutInflater.from(paramContext));
  }

  public final int getCount()
  {
    return TrafficZiFeiSubProviceSettingActivity.j(this.a).size();
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
    fg localfg;
    View localView;
    if (paramView == null)
    {
      localfg = new fg(this.a);
      localView = TrafficZiFeiSubProviceSettingActivity.n(this.a).inflate(2130903320, null);
      localfg.a = ((RadioButton)localView.findViewById(2131231731));
      localView.setTag(localfg);
      localfg.a.setText(((String)TrafficZiFeiSubProviceSettingActivity.j(this.a).get(paramInt)).toString());
      localfg.a.setOnCheckedChangeListener(new ff(this));
      String str = localfg.a.getText().toString();
      if (((TextUtils.isEmpty(TrafficZiFeiSubProviceSettingActivity.g(this.a))) || (!str.equals(TrafficZiFeiSubProviceSettingActivity.g(this.a).split(",")[1]))) && ((TextUtils.isEmpty(TrafficZiFeiSubProviceSettingActivity.h(this.a))) || (!str.equals(TrafficZiFeiSubProviceSettingActivity.h(this.a).split(",")[1]))))
        break label205;
      localfg.a.setChecked(true);
    }
    while (true)
    {
      return localView;
      localfg = (fg)paramView.getTag();
      localView = paramView;
      break;
      label205: localfg.a.setChecked(false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fe
 * JD-Core Version:    0.6.2
 */