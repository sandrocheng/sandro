package com.keniu.security.software;

import android.content.SharedPreferences;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Toast;
import com.ijinshan.kpref.t;

final class a
  implements View.OnClickListener
{
  a(APKManagerActivity paramAPKManagerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if ((APKManagerActivity.a(this.a).getAdapter().getCount() <= 1) || (APKManagerActivity.a(this.a).getAdapter() == null))
    {
      Toast.makeText(this.a, 2131428730, 0).show();
      return;
    }
    int i = 0;
    int j = 0;
    label50: if (i < APKManagerActivity.a(this.a).getAdapter().getCount())
      if (!((com.keniu.security.d.a)APKManagerActivity.a(this.a).getAdapter().getItem(i)).h())
        break label174;
    label174: for (int k = j + 1; ; k = j)
    {
      i++;
      j = k;
      break label50;
      if (j <= 0)
      {
        Toast.makeText(this.a, 2131428730, 0).show();
        break;
      }
      if (t.b(this.a).getBoolean(this.a.getString(2131428708), false))
      {
        APKManagerActivity.b(this.a);
        break;
      }
      this.a.showDialog(0);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.a
 * JD-Core Version:    0.6.2
 */