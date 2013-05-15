package com.avast.android.generic.ui;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.ui.b.d;

class l
  implements Runnable
{
  l(CheckerFragment paramCheckerFragment, d paramd)
  {
  }

  public void run()
  {
    if (!this.b.isAdded());
    while (true)
    {
      return;
      FragmentActivity localFragmentActivity = this.b.getActivity();
      if (localFragmentActivity != null)
      {
        this.a.b(localFragmentActivity, this.b);
        if (this.b.isAdded())
          localFragmentActivity.runOnUiThread(new m(this));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.l
 * JD-Core Version:    0.6.2
 */