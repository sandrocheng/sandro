package com.actionbarsherlock.internal.app;

import android.graphics.drawable.Drawable;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.view.View;

public class ActionBarWrapper$TabWrapper extends com.actionbarsherlock.app.ActionBar.Tab
  implements android.app.ActionBar.TabListener
{
  private com.actionbarsherlock.app.ActionBar.TabListener mListener;
  final android.app.ActionBar.Tab mNativeTab;
  private Object mTag;

  public ActionBarWrapper$TabWrapper(ActionBarWrapper paramActionBarWrapper, android.app.ActionBar.Tab paramTab)
  {
    this.mNativeTab = paramTab;
    this.mNativeTab.setTag(this);
  }

  public CharSequence getContentDescription()
  {
    return this.mNativeTab.getContentDescription();
  }

  public View getCustomView()
  {
    return this.mNativeTab.getCustomView();
  }

  public Drawable getIcon()
  {
    return this.mNativeTab.getIcon();
  }

  public int getPosition()
  {
    return this.mNativeTab.getPosition();
  }

  public Object getTag()
  {
    return this.mTag;
  }

  public CharSequence getText()
  {
    return this.mNativeTab.getText();
  }

  public void onTabReselected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
  {
    if (this.mListener != null)
    {
      boolean bool = ActionBarWrapper.access$000(this.this$0) instanceof FragmentActivity;
      android.support.v4.app.FragmentTransaction localFragmentTransaction = null;
      if (bool)
        localFragmentTransaction = ((FragmentActivity)ActionBarWrapper.access$000(this.this$0)).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
      this.mListener.onTabReselected(this, localFragmentTransaction);
      if ((localFragmentTransaction != null) && (!localFragmentTransaction.isEmpty()))
        localFragmentTransaction.commit();
    }
  }

  public void onTabSelected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
  {
    if (this.mListener != null)
    {
      if ((ActionBarWrapper.access$100(this.this$0) == null) && ((ActionBarWrapper.access$000(this.this$0) instanceof FragmentActivity)))
        ActionBarWrapper.access$102(this.this$0, ((FragmentActivity)ActionBarWrapper.access$000(this.this$0)).getSupportFragmentManager().beginTransaction().disallowAddToBackStack());
      this.mListener.onTabSelected(this, ActionBarWrapper.access$100(this.this$0));
      if (ActionBarWrapper.access$100(this.this$0) != null)
      {
        if (!ActionBarWrapper.access$100(this.this$0).isEmpty())
          ActionBarWrapper.access$100(this.this$0).commit();
        ActionBarWrapper.access$102(this.this$0, null);
      }
    }
  }

  public void onTabUnselected(android.app.ActionBar.Tab paramTab, android.app.FragmentTransaction paramFragmentTransaction)
  {
    if (this.mListener != null)
    {
      boolean bool = ActionBarWrapper.access$000(this.this$0) instanceof FragmentActivity;
      android.support.v4.app.FragmentTransaction localFragmentTransaction = null;
      if (bool)
      {
        localFragmentTransaction = ((FragmentActivity)ActionBarWrapper.access$000(this.this$0)).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
        ActionBarWrapper.access$102(this.this$0, localFragmentTransaction);
      }
      this.mListener.onTabUnselected(this, localFragmentTransaction);
    }
  }

  public void select()
  {
    this.mNativeTab.select();
  }

  public com.actionbarsherlock.app.ActionBar.Tab setContentDescription(int paramInt)
  {
    this.mNativeTab.setContentDescription(paramInt);
    return this;
  }

  public com.actionbarsherlock.app.ActionBar.Tab setContentDescription(CharSequence paramCharSequence)
  {
    this.mNativeTab.setContentDescription(paramCharSequence);
    return this;
  }

  public com.actionbarsherlock.app.ActionBar.Tab setCustomView(int paramInt)
  {
    this.mNativeTab.setCustomView(paramInt);
    return this;
  }

  public com.actionbarsherlock.app.ActionBar.Tab setCustomView(View paramView)
  {
    this.mNativeTab.setCustomView(paramView);
    return this;
  }

  public com.actionbarsherlock.app.ActionBar.Tab setIcon(int paramInt)
  {
    this.mNativeTab.setIcon(paramInt);
    return this;
  }

  public com.actionbarsherlock.app.ActionBar.Tab setIcon(Drawable paramDrawable)
  {
    this.mNativeTab.setIcon(paramDrawable);
    return this;
  }

  public com.actionbarsherlock.app.ActionBar.Tab setTabListener(com.actionbarsherlock.app.ActionBar.TabListener paramTabListener)
  {
    android.app.ActionBar.Tab localTab = this.mNativeTab;
    if (paramTabListener != null);
    for (TabWrapper localTabWrapper = this; ; localTabWrapper = null)
    {
      localTab.setTabListener(localTabWrapper);
      this.mListener = paramTabListener;
      return this;
    }
  }

  public com.actionbarsherlock.app.ActionBar.Tab setTag(Object paramObject)
  {
    this.mTag = paramObject;
    return this;
  }

  public com.actionbarsherlock.app.ActionBar.Tab setText(int paramInt)
  {
    this.mNativeTab.setText(paramInt);
    return this;
  }

  public com.actionbarsherlock.app.ActionBar.Tab setText(CharSequence paramCharSequence)
  {
    this.mNativeTab.setText(paramCharSequence);
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarWrapper.TabWrapper
 * JD-Core Version:    0.6.2
 */