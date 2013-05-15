package com.avast.android.generic.ui.widget;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import android.view.View.OnClickListener;

class j
  implements View.OnClickListener
{
  j(NextRow paramNextRow)
  {
  }

  public void onClick(View paramView)
  {
    if ((NextRow.a(this.a) != null) && (NextRow.b(this.a) != null));
    try
    {
      FragmentTransaction localFragmentTransaction = NextRow.a(this.a).beginTransaction();
      Fragment localFragment = (Fragment)Class.forName(NextRow.b(this.a)).newInstance();
      if (NextRow.c(this.a) != 0)
      {
        Bundle localBundle = new Bundle();
        localBundle.putInt("layoutId", NextRow.c(this.a));
        localFragment.setArguments(localBundle);
      }
      localFragmentTransaction.replace(com.avast.android.generic.t.aK, localFragment);
      localFragmentTransaction.addToBackStack(null);
      localFragmentTransaction.commit();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avast.android.generic.util.t.a("AvastGeneric", "cannot open fragment " + NextRow.b(this.a), localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.j
 * JD-Core Version:    0.6.2
 */