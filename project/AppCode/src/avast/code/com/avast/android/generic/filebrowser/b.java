package com.avast.android.generic.filebrowser;

import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;
import android.widget.Button;
import android.widget.ListView;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.t;
import com.avast.android.generic.w;
import com.avast.android.generic.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class b
  implements ActionMode.Callback
{
  b(AbstractFileBrowserFragment paramAbstractFileBrowserFragment)
  {
  }

  private void a()
  {
    List localList = this.a.c();
    Intent localIntent = new Intent();
    if (localList.size() > 1)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        int i = ((Integer)localIterator.next()).intValue();
        localArrayList.add(AbstractFileBrowserFragment.d(this.a) + this.a.a.a(i).b());
      }
      localIntent.putStringArrayListExtra("result", localArrayList);
    }
    while (true)
    {
      this.a.getActivity().setResult(-1, localIntent);
      this.a.getActivity().finish();
      return;
      localIntent.setData(Uri.parse(AbstractFileBrowserFragment.d(this.a) + this.a.a.a(((Integer)localList.get(0)).intValue()).b()));
    }
  }

  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    boolean bool;
    if (this.a.c.equals("android.intent.action.GET_CONTENT"))
    {
      int i = paramMenuItem.getItemId();
      int j = t.ao;
      bool = false;
      if (i == j)
      {
        a();
        bool = true;
      }
    }
    while (true)
    {
      return bool;
      ActionMode.Callback localCallback = AbstractFileBrowserFragment.a(this.a);
      bool = false;
      if (localCallback != null)
        bool = AbstractFileBrowserFragment.a(this.a).onActionItemClicked(paramActionMode, paramMenuItem);
    }
  }

  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    if (!this.a.c.equals("android.intent.action.GET_CONTENT"))
      if (AbstractFileBrowserFragment.a(this.a) == null)
        break label77;
    label77: for (boolean bool = AbstractFileBrowserFragment.a(this.a).onCreateActionMode(paramActionMode, paramMenu); ; bool = true)
    {
      return bool;
      this.a.getSherlockActivity().getSupportMenuInflater().inflate(w.a, paramMenu);
      paramActionMode.setTitle(z.cy);
      AbstractFileBrowserFragment.b(this.a).setVisibility(4);
    }
  }

  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    AbstractFileBrowserFragment.a(this.a, null);
    if (this.a.c.equals("android.intent.action.GET_CONTENT"))
    {
      AbstractFileBrowserFragment.c(this.a).clearChoices();
      AbstractFileBrowserFragment.c(this.a).requestLayout();
      AbstractFileBrowserFragment.b(this.a).setVisibility(0);
    }
    while (true)
    {
      return;
      if (AbstractFileBrowserFragment.a(this.a) != null)
        AbstractFileBrowserFragment.a(this.a).onDestroyActionMode(paramActionMode);
    }
  }

  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    if ((!this.a.c.equals("android.intent.action.GET_CONTENT")) && (AbstractFileBrowserFragment.a(this.a) != null));
    for (boolean bool = AbstractFileBrowserFragment.a(this.a).onPrepareActionMode(paramActionMode, paramMenu); ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.filebrowser.b
 * JD-Core Version:    0.6.2
 */