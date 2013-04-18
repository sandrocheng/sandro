package com.keniu.security.process;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioGroup;
import com.keniu.security.d.e;

final class f
  implements View.OnClickListener
{
  f(ProcessManagerActivity paramProcessManagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if ((ProcessManagerActivity.b(this.a).getAdapter() == null) || (ProcessManagerActivity.b(this.a).getAdapter().getCount() == 0));
    do
    {
      return;
      if (ProcessManagerActivity.j(this.a).getCheckedRadioButtonId() == 2131231207)
      {
        if (ProcessManagerActivity.e(this.a))
        {
          ProcessManagerActivity.a(this.a, false);
          ProcessManagerActivity.f(this.a).setText(2131428715);
          for (int m = 0; m < ProcessManagerActivity.b(this.a).getAdapter().getCount(); m++)
            ((e)ProcessManagerActivity.b(this.a).getAdapter().getItem(m)).a(false);
          ((o)ProcessManagerActivity.b(this.a).getAdapter()).notifyDataSetChanged();
        }
        while (true)
        {
          ProcessManagerActivity.k(this.a).post(new k(this.a, ProcessManagerActivity.c(this.a).a()));
          break;
          ProcessManagerActivity.a(this.a, true);
          ProcessManagerActivity.f(this.a).setText(2131428716);
          for (int k = 0; k < ProcessManagerActivity.b(this.a).getAdapter().getCount(); k++)
            ((e)ProcessManagerActivity.b(this.a).getAdapter().getItem(k)).a(true);
          ((o)ProcessManagerActivity.b(this.a).getAdapter()).notifyDataSetChanged();
        }
      }
    }
    while (ProcessManagerActivity.j(this.a).getCheckedRadioButtonId() != 2131231208);
    if (ProcessManagerActivity.h(this.a))
    {
      ProcessManagerActivity.b(this.a, false);
      ProcessManagerActivity.f(this.a).setText(2131428715);
      for (int j = 0; j < ProcessManagerActivity.b(this.a).getAdapter().getCount(); j++)
        ((e)ProcessManagerActivity.b(this.a).getAdapter().getItem(j)).a(false);
      ((o)ProcessManagerActivity.b(this.a).getAdapter()).notifyDataSetChanged();
    }
    while (true)
    {
      ProcessManagerActivity.k(this.a).post(new k(this.a, ProcessManagerActivity.g(this.a).a()));
      break;
      ProcessManagerActivity.b(this.a, true);
      ProcessManagerActivity.f(this.a).setText(2131428716);
      for (int i = 0; i < ProcessManagerActivity.b(this.a).getAdapter().getCount(); i++)
        ((e)ProcessManagerActivity.b(this.a).getAdapter().getItem(i)).a(true);
      ((o)ProcessManagerActivity.b(this.a).getAdapter()).notifyDataSetChanged();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.f
 * JD-Core Version:    0.6.2
 */