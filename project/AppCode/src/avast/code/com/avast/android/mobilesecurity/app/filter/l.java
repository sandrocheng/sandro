package com.avast.android.mobilesecurity.app.filter;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.mobilesecurity.i;

class l
  implements View.OnClickListener
{
  l(FilterGroupDetailFragment paramFilterGroupDetailFragment)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(i.a(Long.parseLong(FilterGroupDetailFragment.b(this.a).getLastPathSegment())));
    ((BaseActivity)this.a.getActivity()).a(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.l
 * JD-Core Version:    0.6.2
 */