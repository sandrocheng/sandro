package com.actionbarsherlock.widget;

import android.content.Context;
import android.content.Intent;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.MenuItem.OnMenuItemClickListener;

class ShareActionProvider$ShareMenuItemOnMenuItemClickListener
  implements MenuItem.OnMenuItemClickListener
{
  private ShareActionProvider$ShareMenuItemOnMenuItemClickListener(ShareActionProvider paramShareActionProvider)
  {
  }

  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = ActivityChooserModel.get(ShareActionProvider.access$100(this.this$0), ShareActionProvider.access$200(this.this$0)).chooseActivity(paramMenuItem.getItemId());
    if (localIntent != null)
      ShareActionProvider.access$100(this.this$0).startActivity(localIntent);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.ShareActionProvider.ShareMenuItemOnMenuItemClickListener
 * JD-Core Version:    0.6.2
 */