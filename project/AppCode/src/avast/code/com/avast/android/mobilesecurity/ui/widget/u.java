package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.view.View;
import android.view.View.OnClickListener;

class u
  implements View.OnClickListener
{
  u(SocialCornerView paramSocialCornerView)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = SocialCornerView.a(this.a, SocialCornerView.d());
    if ((!SocialCornerView.a(this.a, localIntent)) || (!this.a.getContext().getPackageManager().resolveActivity(localIntent, 0).activityInfo.name.equals("com.twitter.android.ProfileActivity")))
      localIntent.setData(SocialCornerView.e());
    while (true)
    {
      this.a.getContext().startActivity(localIntent);
      return;
      localIntent.setAction("com.twitter.android.action.USER_SHOW");
      localIntent.setClassName("com.twitter.android", "com.twitter.android.ProfileActivity");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.u
 * JD-Core Version:    0.6.2
 */