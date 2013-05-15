package com.avast.android.generic.app.about;

import android.view.View;
import android.view.View.OnClickListener;

class k
  implements View.OnClickListener
{
  k(FeedbackFragment paramFeedbackFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-Feedback", "cancel", null, 0L);
    FeedbackFragment.s(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.k
 * JD-Core Version:    0.6.2
 */