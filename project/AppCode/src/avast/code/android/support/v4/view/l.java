package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

final class l extends View.AccessibilityDelegate
{
  l(m paramm)
  {
  }

  public boolean dispatchPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return this.a.a(paramView, paramAccessibilityEvent);
  }

  public AccessibilityNodeProvider getAccessibilityNodeProvider(View paramView)
  {
    return (AccessibilityNodeProvider)this.a.a(paramView);
  }

  public void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    this.a.b(paramView, paramAccessibilityEvent);
  }

  public void onInitializeAccessibilityNodeInfo(View paramView, AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    this.a.a(paramView, paramAccessibilityNodeInfo);
  }

  public void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    this.a.c(paramView, paramAccessibilityEvent);
  }

  public boolean onRequestSendAccessibilityEvent(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return this.a.a(paramViewGroup, paramView, paramAccessibilityEvent);
  }

  public boolean performAccessibilityAction(View paramView, int paramInt, Bundle paramBundle)
  {
    return this.a.a(paramView, paramInt, paramBundle);
  }

  public void sendAccessibilityEvent(View paramView, int paramInt)
  {
    this.a.a(paramView, paramInt);
  }

  public void sendAccessibilityEventUnchecked(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    this.a.d(paramView, paramAccessibilityEvent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.l
 * JD-Core Version:    0.6.2
 */