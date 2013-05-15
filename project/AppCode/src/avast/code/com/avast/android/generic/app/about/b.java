package com.avast.android.generic.app.about;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;

class b
  implements View.OnClickListener
{
  b(AboutFragment paramAboutFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-About", "Send Feedback", "", 0L);
    Bundle localBundle = new Bundle();
    if (this.a.getArguments().containsKey("community_iq"))
      localBundle.putBundle("community_iq", this.a.getArguments().getBundle("community_iq"));
    localBundle.putBoolean("not_ams", AboutFragment.a(this.a));
    localBundle.putBoolean("backup", AboutFragment.b(this.a));
    localBundle.putBoolean("anti_theft", AboutFragment.c(this.a));
    FeedbackActivity.call(this.a.getActivity(), localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.b
 * JD-Core Version:    0.6.2
 */