package com.actionbarsherlock.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.view.ActionProvider;

class ActivityChooserView$Callbacks
  implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  private ActivityChooserView$Callbacks(ActivityChooserView paramActivityChooserView)
  {
  }

  private void notifyOnDismissListener()
  {
    if (ActivityChooserView.access$1100(this.this$0) != null)
      ActivityChooserView.access$1100(this.this$0).onDismiss();
  }

  public void onClick(View paramView)
  {
    if (paramView == ActivityChooserView.access$800(this.this$0))
    {
      this.this$0.dismissPopup();
      ResolveInfo localResolveInfo = ActivityChooserView.access$000(this.this$0).getDefaultActivity();
      int i = ActivityChooserView.access$000(this.this$0).getDataModel().getActivityIndex(localResolveInfo);
      Intent localIntent = ActivityChooserView.access$000(this.this$0).getDataModel().chooseActivity(i);
      if (localIntent != null)
        ActivityChooserView.access$700(this.this$0).startActivity(localIntent);
    }
    while (true)
    {
      return;
      if (paramView != ActivityChooserView.access$900(this.this$0))
        break;
      ActivityChooserView.access$602(this.this$0, false);
      ActivityChooserView.access$500(this.this$0, ActivityChooserView.access$1000(this.this$0));
    }
    throw new IllegalArgumentException();
  }

  public void onDismiss()
  {
    notifyOnDismissListener();
    if (this.this$0.mProvider != null)
      this.this$0.mProvider.subUiVisibilityChanged(false);
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((ActivityChooserView.ActivityChooserViewAdapter)paramAdapterView.getAdapter()).getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      ActivityChooserView.access$500(this.this$0, 2147483647);
    case 0:
    }
    while (true)
    {
      return;
      this.this$0.dismissPopup();
      if (!ActivityChooserView.access$600(this.this$0))
        break;
      if (paramInt > 0)
        ActivityChooserView.access$000(this.this$0).getDataModel().setDefaultActivity(paramInt);
    }
    if (ActivityChooserView.access$000(this.this$0).getShowDefaultActivity());
    while (true)
    {
      Intent localIntent = ActivityChooserView.access$000(this.this$0).getDataModel().chooseActivity(paramInt);
      if (localIntent == null)
        break;
      ActivityChooserView.access$700(this.this$0).startActivity(localIntent);
      break;
      paramInt++;
    }
  }

  public boolean onLongClick(View paramView)
  {
    if (paramView == ActivityChooserView.access$800(this.this$0))
    {
      if (ActivityChooserView.access$000(this.this$0).getCount() > 0)
      {
        ActivityChooserView.access$602(this.this$0, true);
        ActivityChooserView.access$500(this.this$0, ActivityChooserView.access$1000(this.this$0));
      }
      return true;
    }
    throw new IllegalArgumentException();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserView.Callbacks
 * JD-Core Version:    0.6.2
 */