package com.avast.android.generic.app.wizard;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

class b
  implements View.OnClickListener
{
  b(EulaFragment paramEulaFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (this.a.getActivity() != null)
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse("http://www.avast.com/privacy-policy"));
      this.a.getActivity().startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.wizard.b
 * JD-Core Version:    0.6.2
 */