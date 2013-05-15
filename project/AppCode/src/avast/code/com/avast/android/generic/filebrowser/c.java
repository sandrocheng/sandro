package com.avast.android.generic.filebrowser;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;

class c
  implements View.OnClickListener
{
  c(AbstractFileBrowserFragment paramAbstractFileBrowserFragment)
  {
  }

  public void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setData(Uri.parse(AbstractFileBrowserFragment.d(this.a) + AbstractFileBrowserFragment.e(this.a).b()));
    this.a.getActivity().setResult(-1, localIntent);
    this.a.getActivity().finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.filebrowser.c
 * JD-Core Version:    0.6.2
 */