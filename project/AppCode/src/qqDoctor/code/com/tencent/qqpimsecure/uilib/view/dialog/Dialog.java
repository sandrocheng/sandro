package com.tencent.qqpimsecure.uilib.view.dialog;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.text.method.LinkMovementMethod;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView;

public class Dialog extends android.app.Dialog
{
  protected LinearLayout bodyLayout;
  private int buttonNum = 0;
  protected LinearLayout buttonViewGroup;
  protected View contentView;
  protected AutoLoadingView insideLoading;
  private boolean isNegativeButtonON = false;
  private boolean isNeutralButtonON = false;
  private boolean isSositiveButtonON = false;
  protected Context mContext;
  private Handler mHandler = new Dialog.1(this);
  protected TextView messageView;
  protected boolean mscreenBackKey = false;
  protected ButtonView negativeButton;
  protected ButtonView neutralButton;
  protected AutoLoadingView outsideLoading;
  protected ButtonView positiveButton;
  protected ImageView space_bar;
  protected ImageView titleIcon;
  protected LinearLayout titleLayout;
  protected TextView titleText;

  public Dialog(Context paramContext)
  {
    super(paramContext, 2131492890);
    this.mContext = paramContext;
    this.buttonNum = 0;
    this.isSositiveButtonON = false;
    this.isNegativeButtonON = false;
    this.isNeutralButtonON = false;
    this.contentView = LayoutInflater.from(this.mContext).inflate(2130903139, null);
    this.titleIcon = new ImageView(this.mContext);
    this.titleText = new TextView(this.mContext);
    this.messageView = new TextView(this.mContext);
    this.titleLayout = ((LinearLayout)this.contentView.findViewById(2131230985));
    this.bodyLayout = ((LinearLayout)this.contentView.findViewById(2131230988));
    this.buttonViewGroup = ((LinearLayout)this.contentView.findViewById(2131230989));
    this.space_bar = ((ImageView)this.contentView.findViewById(2131230753));
    this.insideLoading = ((AutoLoadingView)this.contentView.findViewById(2131230972));
    this.outsideLoading = ((AutoLoadingView)this.contentView.findViewById(2131230971));
    setIcon(2130838143);
  }

  public void addProgressDialog()
  {
    this.insideLoading.setVisibility(0);
    this.outsideLoading.setVisibility(0);
    this.titleLayout.setVisibility(8);
    this.buttonViewGroup.setVisibility(8);
  }

  public void dismiss()
  {
    this.buttonNum = 0;
    this.isSositiveButtonON = false;
    this.isNegativeButtonON = false;
    this.isNeutralButtonON = false;
    this.mHandler.sendEmptyMessage(0);
    super.dismiss();
  }

  public View getBodyParentLayout()
  {
    return this.contentView.findViewById(2131230987);
  }

  public ButtonView getButton(int paramInt)
  {
    ButtonView localButtonView;
    switch (paramInt)
    {
    default:
      localButtonView = null;
    case -1:
    case -2:
    case -3:
    }
    while (true)
    {
      return localButtonView;
      localButtonView = this.positiveButton;
      continue;
      localButtonView = this.negativeButton;
      continue;
      localButtonView = this.neutralButton;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.setContentView(this.contentView);
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.height = -2;
    localLayoutParams.width = -1;
    getWindow().setAttributes(localLayoutParams);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.mscreenBackKey) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0));
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  public void removeProgressDialog()
  {
    this.insideLoading.stopRotationAnimation();
    this.outsideLoading.stopRotationAnimation();
  }

  public void resetDialog()
  {
    this.buttonNum = 0;
    this.isSositiveButtonON = false;
    this.isNegativeButtonON = false;
    this.isNeutralButtonON = false;
    if (this.titleLayout != null)
      this.titleLayout.removeAllViews();
    if (this.bodyLayout != null)
      this.bodyLayout.removeAllViews();
    if (this.buttonViewGroup != null)
      this.buttonViewGroup.removeAllViews();
  }

  public void setButtonEnable(int paramInt, boolean paramBoolean)
  {
    if ((paramInt == 0) && (this.positiveButton != null))
      this.positiveButton.setButtonEnabled(paramBoolean);
    while (true)
    {
      return;
      if ((paramInt == 1) && (this.neutralButton != null))
        this.neutralButton.setButtonEnabled(paramBoolean);
      else if ((paramInt == 2) && (this.negativeButton != null))
        this.negativeButton.setButtonEnabled(paramBoolean);
    }
  }

  public void setCancelable(boolean paramBoolean)
  {
    super.setCancelable(paramBoolean);
  }

  public void setContentView(View paramView)
  {
    this.bodyLayout.removeAllViews();
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.gravity = 17;
    new DisplayMetrics();
    paramView.setMinimumWidth(95 * this.mContext.getApplicationContext().getResources().getDisplayMetrics().widthPixels / 100);
    this.bodyLayout.addView(paramView, localLayoutParams);
  }

  public void setContextViewPaddingNeed(boolean paramBoolean)
  {
    View localView = this.contentView.findViewById(2131230987);
    if (paramBoolean)
      localView.setBackgroundResource(2130838137);
    while (true)
    {
      return;
      localView.setBackgroundResource(2130838138);
    }
  }

  public void setIcon(int paramInt)
  {
    this.titleLayout.removeView(this.titleIcon);
    this.titleLayout.setVisibility(0);
    this.titleIcon.setImageResource(paramInt);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    this.titleLayout.removeView(this.titleIcon);
    this.titleLayout.addView(this.titleIcon, localLayoutParams);
  }

  public void setIconVisibility(int paramInt)
  {
    this.titleIcon.setVisibility(paramInt);
  }

  public void setMessage(int paramInt)
  {
    setMessage(this.mContext.getResources().getString(paramInt));
  }

  public void setMessage(CharSequence paramCharSequence)
  {
    this.messageView.setText(paramCharSequence);
    this.messageView.setTextColor(this.mContext.getResources().getColor(2131296285));
    this.messageView.setTextSize(15.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    if (this.insideLoading.isShown())
    {
      localLayoutParams.gravity = 17;
      this.messageView.setGravity(17);
    }
    while (true)
    {
      this.bodyLayout.removeView(this.messageView);
      this.bodyLayout.addView(this.messageView, localLayoutParams);
      return;
      localLayoutParams.gravity = 19;
      this.messageView.setGravity(3);
    }
  }

  public void setMessageWithLink(CharSequence paramCharSequence)
  {
    this.messageView.setText(paramCharSequence);
    this.messageView.setMovementMethod(LinkMovementMethod.getInstance());
    this.messageView.setTextColor(this.mContext.getResources().getColor(2131296285));
    this.messageView.setTextSize(15.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    if (this.insideLoading.isShown())
    {
      localLayoutParams.gravity = 17;
      this.messageView.setGravity(17);
    }
    while (true)
    {
      this.bodyLayout.removeView(this.messageView);
      this.bodyLayout.addView(this.messageView, localLayoutParams);
      return;
      localLayoutParams.gravity = 19;
      this.messageView.setGravity(3);
    }
  }

  public void setMinHeight(int paramInt)
  {
    LinearLayout localLinearLayout = this.bodyLayout;
    Context localContext = this.mContext;
    localLinearLayout.setMinimumHeight((int)(0.5F + paramInt * localContext.getResources().getDisplayMetrics().density));
  }

  public void setNegativeButton(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    setNegativeButton(this.mContext.getResources().getString(paramInt1), paramOnClickListener, paramInt2);
  }

  public void setNegativeButton(String paramString, View.OnClickListener paramOnClickListener, int paramInt)
  {
    this.buttonNum = (1 + this.buttonNum);
    this.isNegativeButtonON = true;
    this.negativeButton = new ButtonView(this.mContext, paramInt);
    this.space_bar.setVisibility(0);
    this.buttonViewGroup.setVisibility(0);
    this.negativeButton.setText(paramString);
    this.negativeButton.setOnClickListener(paramOnClickListener);
    this.negativeButton.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(6, 0, 6, 0);
    localLayoutParams.weight = 1.0F;
    localLayoutParams.gravity = 16;
    this.buttonViewGroup.removeView(this.negativeButton);
    this.buttonViewGroup.addView(this.negativeButton, localLayoutParams);
  }

  public void setNeutralButton(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    setNeutralButton(this.mContext.getResources().getString(paramInt1), paramOnClickListener, paramInt2);
  }

  public void setNeutralButton(String paramString, View.OnClickListener paramOnClickListener, int paramInt)
  {
    this.buttonNum = (1 + this.buttonNum);
    this.isNeutralButtonON = true;
    this.neutralButton = new ButtonView(this.mContext, paramInt);
    this.space_bar.setVisibility(0);
    this.buttonViewGroup.setVisibility(0);
    this.neutralButton.setText(paramString);
    this.neutralButton.setOnClickListener(paramOnClickListener);
    this.neutralButton.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(6, 0, 6, 0);
    localLayoutParams.weight = 1.0F;
    localLayoutParams.gravity = 16;
    this.buttonViewGroup.removeView(this.neutralButton);
    this.buttonViewGroup.addView(this.neutralButton, localLayoutParams);
  }

  public void setPositiveButton(int paramInt1, View.OnClickListener paramOnClickListener, int paramInt2)
  {
    setPositiveButton(this.mContext.getResources().getString(paramInt1), paramOnClickListener, paramInt2);
  }

  public void setPositiveButton(String paramString, View.OnClickListener paramOnClickListener, int paramInt)
  {
    this.buttonNum = (1 + this.buttonNum);
    this.isSositiveButtonON = true;
    this.positiveButton = new ButtonView(this.mContext, paramInt);
    this.space_bar.setVisibility(0);
    this.buttonViewGroup.setVisibility(0);
    this.positiveButton.setText(paramString);
    this.positiveButton.setOnClickListener(paramOnClickListener);
    this.positiveButton.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    localLayoutParams.setMargins(6, 0, 6, 0);
    localLayoutParams.weight = 1.0F;
    this.buttonViewGroup.removeView(this.positiveButton);
    this.buttonViewGroup.addView(this.positiveButton, localLayoutParams);
  }

  public void setScreenBackKey(boolean paramBoolean)
  {
    this.mscreenBackKey = paramBoolean;
  }

  public void setTitle(int paramInt)
  {
    setTitle(this.mContext.getResources().getString(paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    this.titleLayout.setVisibility(0);
    this.titleText.setText(paramCharSequence);
    this.titleText.setTextColor(this.mContext.getResources().getColor(2131296282));
    this.titleText.setTextSize(15.0F);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.leftMargin = 10;
    localLayoutParams.gravity = 16;
    this.titleLayout.removeView(this.titleText);
    this.titleLayout.addView(this.titleText, localLayoutParams);
  }

  public void setTitlevisible(int paramInt)
  {
    this.titleLayout.setVisibility(paramInt);
  }

  public void setView(View paramView)
  {
    setContentView(paramView);
  }

  public void show()
  {
    LinearLayout.LayoutParams localLayoutParams;
    if (this.buttonNum == 1)
    {
      localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.gravity = 17;
      localLayoutParams.setMargins(6, 0, 6, 0);
      if (!this.isSositiveButtonON)
        break label86;
      if (this.positiveButton != null)
        this.positiveButton.setLayoutParams(localLayoutParams);
    }
    while (true)
    {
      super.show();
      this.insideLoading.startRotationAnimation();
      this.outsideLoading.startRotationAnimation();
      getWindow().setSoftInputMode(16);
      return;
      label86: if (this.isNegativeButtonON)
      {
        if (this.negativeButton != null)
          this.negativeButton.setLayoutParams(localLayoutParams);
      }
      else if ((this.isNeutralButtonON) && (this.neutralButton != null))
        this.neutralButton.setLayoutParams(localLayoutParams);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.dialog.Dialog
 * JD-Core Version:    0.6.2
 */