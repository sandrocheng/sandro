package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class TitlePreferenceView extends BasePreferenceView
{
  protected Context context;
  private Drawable drawAble = null;
  protected boolean hasIcon = false;
  protected ImageView imageView;
  protected View mainLayout;
  private CharSequence title = "";
  protected TextView titleView;

  public TitlePreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
    this.context = paramContext;
  }

  protected View createMainView()
  {
    return LayoutInflater.from(getContext()).inflate(2130903196, null, false);
  }

  public void doClickEvent(int paramInt1, int paramInt2)
  {
  }

  public void doClickEvent(String paramString1, String paramString2)
  {
  }

  public Drawable getIcon()
  {
    return this.drawAble;
  }

  public ImageView getImageView()
  {
    return this.imageView;
  }

  public CharSequence getTitle()
  {
    return this.title;
  }

  public TextView getTitltView()
  {
    return this.titleView;
  }

  public void initData(CharSequence paramCharSequence, Drawable paramDrawable)
  {
    setTitle(paramCharSequence);
    setIcon(paramDrawable);
  }

  public void onBindView(View paramView)
  {
    this.titleView = ((TextView)paramView.findViewById(2131230754));
    this.imageView = ((ImageView)paramView.findViewById(2131230990));
  }

  public void setIcon(int paramInt)
  {
    if (this.imageView != null)
    {
      this.drawAble = this.context.getResources().getDrawable(paramInt);
      this.imageView.setImageDrawable(this.drawAble);
    }
  }

  public void setIcon(Drawable paramDrawable)
  {
    if (this.imageView != null)
    {
      this.drawAble = paramDrawable;
      this.imageView.setImageDrawable(paramDrawable);
    }
  }

  public void setIcon(Drawable paramDrawable, ImageView paramImageView)
  {
    if (paramImageView != null)
    {
      this.drawAble = paramDrawable;
      paramImageView.setImageDrawable(paramDrawable);
    }
  }

  public void setTitle(int paramInt)
  {
    if (this.titleView != null)
    {
      this.title = this.context.getString(paramInt);
      this.titleView.setText(this.title);
    }
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    if (this.titleView != null)
    {
      this.title = paramCharSequence;
      this.titleView.setText(paramCharSequence);
    }
  }

  public void setTitle(CharSequence paramCharSequence, TextView paramTextView)
  {
    if (paramTextView != null)
    {
      this.title = paramCharSequence;
      paramTextView.setText(paramCharSequence);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.TitlePreferenceView
 * JD-Core Version:    0.6.2
 */