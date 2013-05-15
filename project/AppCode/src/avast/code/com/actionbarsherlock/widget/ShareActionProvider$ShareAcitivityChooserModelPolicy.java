package com.actionbarsherlock.widget;

import android.content.Intent;

class ShareActionProvider$ShareAcitivityChooserModelPolicy
  implements ActivityChooserModel.OnChooseActivityListener
{
  private ShareActionProvider$ShareAcitivityChooserModelPolicy(ShareActionProvider paramShareActionProvider)
  {
  }

  public boolean onChooseActivity(ActivityChooserModel paramActivityChooserModel, Intent paramIntent)
  {
    if (ShareActionProvider.access$400(this.this$0) != null);
    for (boolean bool = ShareActionProvider.access$400(this.this$0).onShareTargetSelected(this.this$0, paramIntent); ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.ShareActionProvider.ShareAcitivityChooserModelPolicy
 * JD-Core Version:    0.6.2
 */