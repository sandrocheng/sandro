package com.avast.android.generic.app.about;

import android.view.View;
import android.view.View.OnClickListener;

class j
  implements View.OnClickListener
{
  j(FeedbackFragment paramFeedbackFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-Feedback", "send", null, 0L);
    if (!FeedbackFragment.q(this.a));
    while (true)
    {
      return;
      FeedbackFragment.b(this.a, new n(this.a, null));
      FeedbackFragment.r(this.a).execute(new Void[0]);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.j
 * JD-Core Version:    0.6.2
 */