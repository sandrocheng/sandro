package android.support.v4.app;

import android.view.View;
import android.view.View.OnClickListener;

class FragmentBreadCrumbs$1
  implements View.OnClickListener
{
  FragmentBreadCrumbs$1(FragmentBreadCrumbs paramFragmentBreadCrumbs)
  {
  }

  public void onClick(View paramView)
  {
    FragmentManager.BackStackEntry localBackStackEntry1;
    if ((paramView.getTag() instanceof FragmentManager.BackStackEntry))
    {
      localBackStackEntry1 = (FragmentManager.BackStackEntry)paramView.getTag();
      if (localBackStackEntry1 != this.this$0.mParentEntry)
        break label53;
      if (FragmentBreadCrumbs.access$000(this.this$0) != null)
        FragmentBreadCrumbs.access$000(this.this$0).onClick(paramView);
    }
    label161: label165: label167: 
    while (true)
    {
      return;
      label53: if ((localBackStackEntry1 == this.this$0.mLastEntry) && (this.this$0.mLastEntryListener != null))
      {
        this.this$0.mLastEntryListener.onClick(paramView);
      }
      else
      {
        FragmentBreadCrumbs.OnBreadCrumbClickListener localOnBreadCrumbClickListener;
        if (FragmentBreadCrumbs.access$100(this.this$0) != null)
        {
          localOnBreadCrumbClickListener = FragmentBreadCrumbs.access$100(this.this$0);
          if (localBackStackEntry1 != this.this$0.mTopEntry)
            break label161;
        }
        for (FragmentManager.BackStackEntry localBackStackEntry2 = null; ; localBackStackEntry2 = localBackStackEntry1)
        {
          if (localOnBreadCrumbClickListener.onBreadCrumbClick(localBackStackEntry2, 0))
            break label165;
          if (localBackStackEntry1 != this.this$0.mTopEntry)
            break label167;
          this.this$0.mActivity.getSupportFragmentManager().popBackStack();
          break;
        }
        continue;
        this.this$0.mActivity.getSupportFragmentManager().popBackStack(localBackStackEntry1.getId(), 0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentBreadCrumbs.1
 * JD-Core Version:    0.6.2
 */