package com.actionbarsherlock.internal.app;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import com.actionbarsherlock.app.ActionBar.Tab;
import com.actionbarsherlock.app.ActionBar.TabListener;
import com.actionbarsherlock.internal.widget.ScrollingTabContainerView;

public class ActionBarImpl$TabImpl extends ActionBar.Tab
{
  private ActionBar.TabListener mCallback;
  private CharSequence mContentDesc;
  private View mCustomView;
  private Drawable mIcon;
  private int mPosition = -1;
  private Object mTag;
  private CharSequence mText;

  public ActionBarImpl$TabImpl(ActionBarImpl paramActionBarImpl)
  {
  }

  public ActionBar.TabListener getCallback()
  {
    return this.mCallback;
  }

  public CharSequence getContentDescription()
  {
    return this.mContentDesc;
  }

  public View getCustomView()
  {
    return this.mCustomView;
  }

  public Drawable getIcon()
  {
    return this.mIcon;
  }

  public int getPosition()
  {
    return this.mPosition;
  }

  public Object getTag()
  {
    return this.mTag;
  }

  public CharSequence getText()
  {
    return this.mText;
  }

  public void select()
  {
    this.this$0.selectTab(this);
  }

  public ActionBar.Tab setContentDescription(int paramInt)
  {
    return setContentDescription(ActionBarImpl.access$700(this.this$0).getResources().getText(paramInt));
  }

  public ActionBar.Tab setContentDescription(CharSequence paramCharSequence)
  {
    this.mContentDesc = paramCharSequence;
    if (this.mPosition >= 0)
      ActionBarImpl.access$800(this.this$0).updateTab(this.mPosition);
    return this;
  }

  public ActionBar.Tab setCustomView(int paramInt)
  {
    return setCustomView(LayoutInflater.from(this.this$0.getThemedContext()).inflate(paramInt, null));
  }

  public ActionBar.Tab setCustomView(View paramView)
  {
    this.mCustomView = paramView;
    if (this.mPosition >= 0)
      ActionBarImpl.access$800(this.this$0).updateTab(this.mPosition);
    return this;
  }

  public ActionBar.Tab setIcon(int paramInt)
  {
    return setIcon(ActionBarImpl.access$700(this.this$0).getResources().getDrawable(paramInt));
  }

  public ActionBar.Tab setIcon(Drawable paramDrawable)
  {
    this.mIcon = paramDrawable;
    if (this.mPosition >= 0)
      ActionBarImpl.access$800(this.this$0).updateTab(this.mPosition);
    return this;
  }

  public void setPosition(int paramInt)
  {
    this.mPosition = paramInt;
  }

  public ActionBar.Tab setTabListener(ActionBar.TabListener paramTabListener)
  {
    this.mCallback = paramTabListener;
    return this;
  }

  public ActionBar.Tab setTag(Object paramObject)
  {
    this.mTag = paramObject;
    return this;
  }

  public ActionBar.Tab setText(int paramInt)
  {
    return setText(ActionBarImpl.access$700(this.this$0).getResources().getText(paramInt));
  }

  public ActionBar.Tab setText(CharSequence paramCharSequence)
  {
    this.mText = paramCharSequence;
    if (this.mPosition >= 0)
      ActionBarImpl.access$800(this.this$0).updateTab(this.mPosition);
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.app.ActionBarImpl.TabImpl
 * JD-Core Version:    0.6.2
 */