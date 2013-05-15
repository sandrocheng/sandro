package com.avast.android.mobilesecurity.app.scanner;

import android.content.Intent;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.avast.android.generic.filebrowser.AbstractFileBrowserActivity;
import com.avast.android.mobilesecurity.filebrowser.SystemFileBrowserActivity;

class u
  implements View.OnLongClickListener
{
  u(ScannerFragment paramScannerFragment)
  {
  }

  public boolean onLongClick(View paramView)
  {
    Intent localIntent = new Intent(this.a.getActivity(), SystemFileBrowserActivity.class);
    localIntent.setAction("android.intent.action.GET_CONTENT");
    localIntent.setType("file/*");
    localIntent.putExtra("pick", AbstractFileBrowserActivity.b);
    localIntent.putExtra("pick_multiple", true);
    localIntent.putExtra("pick_virtual_root", true);
    this.a.startActivityForResult(localIntent, 123);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.u
 * JD-Core Version:    0.6.2
 */