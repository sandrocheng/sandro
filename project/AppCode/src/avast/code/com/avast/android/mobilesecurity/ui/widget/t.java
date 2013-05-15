package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

class t
  implements View.OnClickListener
{
  t(SocialCornerView paramSocialCornerView)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = SocialCornerView.a(this.a, SocialCornerView.c());
    localIntent.setPackage("com.google.android.apps.plus");
    if (!SocialCornerView.a(this.a, localIntent))
      localIntent.setPackage(null);
    this.a.getContext().startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.t
 * JD-Core Version:    0.6.2
 */