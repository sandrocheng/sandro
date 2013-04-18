package com.keniu.security.software;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.keniu.security.d.a;

final class c
  implements View.OnClickListener
{
  c(APKManagerActivity paramAPKManagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (APKManagerActivity.a(this.a).getAdapter() == null)
      return;
    if (((a)APKManagerActivity.a(this.a).getAdapter().getItem(0)).e == 1)
      if (APKManagerActivity.c(this.a))
      {
        for (int m = 1; m < APKManagerActivity.a(this.a).getAdapter().getCount(); m++)
          ((a)APKManagerActivity.a(this.a).getAdapter().getItem(m)).b(false);
        APKManagerActivity.d(this.a).setText(2131427871);
        APKManagerActivity.a(this.a, false);
      }
    while (true)
    {
      APKManagerActivity.f(this.a).notifyDataSetChanged();
      APKManagerActivity.g(this.a);
      break;
      for (int k = 1; k < APKManagerActivity.a(this.a).getAdapter().getCount(); k++)
        ((a)APKManagerActivity.a(this.a).getAdapter().getItem(k)).b(true);
      APKManagerActivity.d(this.a).setText(2131427872);
      APKManagerActivity.a(this.a, true);
      continue;
      if (((a)APKManagerActivity.a(this.a).getAdapter().getItem(0)).e == 3)
        if (APKManagerActivity.e(this.a))
        {
          for (int j = 1; j < APKManagerActivity.a(this.a).getAdapter().getCount(); j++)
            ((a)APKManagerActivity.a(this.a).getAdapter().getItem(j)).b(false);
          APKManagerActivity.d(this.a).setText(2131427871);
          APKManagerActivity.b(this.a, false);
        }
        else
        {
          for (int i = 1; i < APKManagerActivity.a(this.a).getAdapter().getCount(); i++)
            ((a)APKManagerActivity.a(this.a).getAdapter().getItem(i)).b(true);
          APKManagerActivity.d(this.a).setText(2131427872);
          APKManagerActivity.b(this.a, true);
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.c
 * JD-Core Version:    0.6.2
 */