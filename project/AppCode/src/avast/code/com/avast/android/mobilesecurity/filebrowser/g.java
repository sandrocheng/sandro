package com.avast.android.mobilesecurity.filebrowser;

import android.widget.ListView;
import android.widget.Toast;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import java.util.Arrays;
import java.util.List;

class g
  implements ActionMode.Callback
{
  g(SystemFileBrowserFragment paramSystemFileBrowserFragment)
  {
  }

  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getItemId();
    boolean bool = false;
    switch (i)
    {
    default:
    case 2131165754:
    }
    while (true)
    {
      return bool;
      List localList = SystemFileBrowserFragment.a(this.a);
      Toast.makeText(this.a.getActivity(), "Not really deleting: " + Arrays.toString(localList.toArray()), 0).show();
      paramActionMode.finish();
      bool = true;
    }
  }

  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    this.a.getSherlockActivity().getSupportMenuInflater().inflate(2131755009, paramMenu);
    paramActionMode.setTitle(2131493198);
    return true;
  }

  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    this.a.getListView().clearChoices();
    this.a.getListView().requestLayout();
  }

  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.g
 * JD-Core Version:    0.6.2
 */