package com.keniu.security.process;

import android.widget.Button;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.RelativeLayout;

final class e
  implements RadioGroup.OnCheckedChangeListener
{
  e(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if (paramInt == 2131231207)
    {
      ProcessManagerActivity.b(this.a).setAdapter(ProcessManagerActivity.c(this.a));
      ProcessManagerActivity.d(this.a).setVisibility(8);
      if (ProcessManagerActivity.e(this.a))
        ProcessManagerActivity.f(this.a).setText(2131428716);
    }
    while (true)
    {
      return;
      ProcessManagerActivity.f(this.a).setText(2131428715);
      continue;
      if (paramInt == 2131231208)
      {
        ProcessManagerActivity.b(this.a).setAdapter(ProcessManagerActivity.g(this.a));
        ProcessManagerActivity.d(this.a).setVisibility(0);
        if (ProcessManagerActivity.h(this.a))
          ProcessManagerActivity.f(this.a).setText(2131428716);
        else
          ProcessManagerActivity.f(this.a).setText(2131428715);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.e
 * JD-Core Version:    0.6.2
 */