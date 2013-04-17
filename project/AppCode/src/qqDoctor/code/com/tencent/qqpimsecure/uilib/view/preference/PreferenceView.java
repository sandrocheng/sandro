package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public abstract class PreferenceView extends BasePreferenceView
{
  protected LinearLayout actionBody;
  protected LinearLayout areaAll;
  protected LinearLayout areaInfoBody;
  protected Context context;
  protected ImageView iconView;
  private boolean isEnable = true;
  private LinearLayout lineView;
  protected View mainLayout;
  private CharSequence summary = "";
  protected TextView summaryView;
  private CharSequence title = "";
  protected TextView titleView;

  public PreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
    this.context = paramContext;
  }

  public abstract View createActionBody();

  protected View createMainView()
  {
    return this.mLayoutInflater.inflate(2130903195, null, false);
  }

  public void doClickEvent(int paramInt1, int paramInt2)
  {
    if (isEnabled())
    {
      setTitle(paramInt1);
      setSummary(paramInt2);
    }
  }

  public void doClickEvent(String paramString1, String paramString2)
  {
    if (isEnabled())
    {
      setTitle(paramString1);
      setSummary(paramString2);
    }
  }

  public LinearLayout getLineView()
  {
    return this.lineView;
  }

  public TextView getSummaryView()
  {
    return this.summaryView;
  }

  public TextView getTitltView()
  {
    return this.titleView;
  }

  public boolean isEnabled()
  {
    return this.isEnable;
  }

  protected void onBindView(View paramView)
  {
    this.areaAll = ((LinearLayout)paramView.findViewById(2131231047));
    this.areaInfoBody = ((LinearLayout)paramView.findViewById(2131231049));
    this.actionBody = ((LinearLayout)paramView.findViewById(2131231197));
    this.titleView = ((TextView)paramView.findViewById(2131230754));
    this.iconView = ((ImageView)paramView.findViewById(2131230990));
    new StringBuilder("onBindView titleView ").append(this.titleView).toString();
    this.summaryView = ((TextView)paramView.findViewById(2131231050));
    new StringBuilder("onBindView summaryView ").append(this.summaryView).toString();
    this.lineView = ((LinearLayout)paramView.findViewById(2131231053));
    View localView = createActionBody();
    if (localView != null)
    {
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      this.actionBody.addView(localView, localLayoutParams);
    }
    this.areaAll.setBackgroundDrawable(this.mDrawable_default);
  }

  public void setEnabled(boolean paramBoolean)
  {
    this.isEnable = paramBoolean;
    if (this.areaAll != null)
    {
      if (!paramBoolean)
        break label44;
      this.areaAll.setAnimation(AnimationUtils.loadAnimation(this.context, 2130968581));
      this.areaAll.setBackgroundDrawable(this.mDrawable_default);
    }
    while (true)
    {
      return;
      label44: this.areaAll.setAnimation(AnimationUtils.loadAnimation(this.context, 2130968576));
      this.areaAll.setBackgroundDrawable(this.mDrawable_disable);
    }
  }

  public void setIcon(Drawable paramDrawable)
  {
    if ((this.iconView != null) && (paramDrawable != null))
    {
      this.iconView.setVisibility(0);
      this.iconView.setImageDrawable(paramDrawable);
    }
    while (true)
    {
      return;
      if ((paramDrawable == null) && (this.iconView != null))
        this.iconView.setVisibility(8);
    }
  }

  public void setSummary(int paramInt)
  {
    if (paramInt <= 0);
    while (true)
    {
      return;
      if (this.summaryView != null)
      {
        this.summaryView.setText(paramInt);
        this.summary = this.context.getString(paramInt);
      }
    }
  }

  public void setSummary(CharSequence paramCharSequence)
  {
    if ((this.summaryView != null) && (paramCharSequence != null))
    {
      this.summaryView.setText(paramCharSequence);
      this.summary = paramCharSequence;
    }
  }

  public void setTitle(int paramInt)
  {
    if (paramInt <= 0);
    while (true)
    {
      return;
      if (this.titleView != null)
      {
        this.title = this.context.getString(paramInt);
        this.titleView.setText(this.title);
      }
    }
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    if ((this.titleView != null) && (paramCharSequence != null))
    {
      this.title = paramCharSequence;
      this.titleView.setText(paramCharSequence);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.PreferenceView
 * JD-Core Version:    0.6.2
 */