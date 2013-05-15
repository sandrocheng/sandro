package com.avast.android.mobilesecurity.filebrowser;

import android.content.Context;
import android.os.Bundle;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.avast.android.generic.filebrowser.AbstractFileBrowserFragment;
import com.avast.android.generic.filebrowser.d;
import com.avast.android.generic.filebrowser.e;
import com.avast.android.generic.filebrowser.f;
import java.util.List;

public class SystemFileBrowserFragment extends AbstractFileBrowserFragment
{
  private boolean d;
  private ActionMode.Callback e = new g(this);

  protected ActionMode.Callback a()
  {
    return this.e;
  }

  protected com.avast.android.generic.filebrowser.a a(Context paramContext, List paramList, String paramString, d paramd)
  {
    return new a(paramContext, paramList, paramString, paramd);
  }

  protected e a(int paramInt, Bundle paramBundle)
  {
    return new k(getActivity(), paramBundle);
  }

  protected Bundle b(f paramf)
  {
    Bundle localBundle = new Bundle();
    if (paramf == null)
      localBundle.putString("path", "ROOT_PATH");
    while (true)
    {
      return localBundle;
      localBundle.putString("path", paramf.b());
    }
  }

  protected void c(f paramf)
  {
    if ((paramf.h()) || (this.d));
    for (boolean bool = true; ; bool = false)
    {
      a(bool);
      return;
    }
  }

  protected String g()
  {
    return "file";
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.d = getArguments().getBoolean("pick_virtual_root", false);
  }

  public void onDestroy()
  {
    super.onDestroy();
    h.i();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.SystemFileBrowserFragment
 * JD-Core Version:    0.6.2
 */