package com.avg.ui.general.c;

import android.content.Context;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.LinearLayout;
import android.widget.Switch;

public class h
{
  public static void a(Context paramContext, LinearLayout paramLinearLayout, String paramString1, String paramString2, boolean paramBoolean, CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    Switch localSwitch = new Switch(paramContext);
    localSwitch.setTextOff(paramString1);
    localSwitch.setTextOn(paramString2);
    localSwitch.setChecked(paramBoolean);
    localSwitch.setOnCheckedChangeListener(paramOnCheckedChangeListener);
    paramLinearLayout.addView(localSwitch);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.c.h
 * JD-Core Version:    0.6.2
 */