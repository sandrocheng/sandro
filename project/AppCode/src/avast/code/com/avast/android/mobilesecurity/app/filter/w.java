package com.avast.android.mobilesecurity.app.filter;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.util.s;

class w
  implements View.OnClickListener
{
  w(SmsBlockOfferActivity paramSmsBlockOfferActivity)
  {
  }

  public void onClick(View paramView)
  {
    SmsBlockOfferActivity.a(this.a).a(2131165231, this.a);
    SmsBlockOfferActivity.GroupSelectDialog.a(this.a.getSupportFragmentManager());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.w
 * JD-Core Version:    0.6.2
 */