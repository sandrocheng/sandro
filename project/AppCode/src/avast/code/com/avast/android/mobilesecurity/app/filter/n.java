package com.avast.android.mobilesecurity.app.filter;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.mobilesecurity.k;

class n
  implements View.OnClickListener
{
  n(FilterGroupsFragment paramFilterGroupsFragment)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(k.a());
    ((BaseActivity)this.a.getActivity()).a(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.n
 * JD-Core Version:    0.6.2
 */