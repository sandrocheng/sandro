package com.avast.android.mobilesecurity.app.filter;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.mobilesecurity.i;
import com.avast.android.mobilesecurity.k;

class f
  implements View.OnClickListener
{
  f(FilterContactsFragment paramFilterContactsFragment)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(k.b(i.a(FilterContactsFragment.b(this.a))));
    ((BaseActivity)this.a.getActivity()).a(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.f
 * JD-Core Version:    0.6.2
 */