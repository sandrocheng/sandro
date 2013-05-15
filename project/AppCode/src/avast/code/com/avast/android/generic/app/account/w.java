package com.avast.android.generic.app.account;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.app.about.FeedbackActivity;
import com.avast.android.generic.util.a;

class w
  implements View.OnClickListener
{
  w(ConnectionCheckFragment paramConnectionCheckFragment)
  {
  }

  public void onClick(View paramView)
  {
    try
    {
      Bundle localBundle2 = this.a.getActivity().getIntent().getExtras();
      localBundle1 = localBundle2;
      FeedbackActivity.call(this.a.getActivity(), localBundle1);
      a.a(this.a);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Bundle localBundle1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.w
 * JD-Core Version:    0.6.2
 */