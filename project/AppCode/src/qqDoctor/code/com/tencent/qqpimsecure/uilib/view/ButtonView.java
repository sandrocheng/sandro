package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.imageview.ButtonLoadingInsideView;
import com.tencent.qqpimsecure.uilib.view.imageview.ButtonLoadingOutsideView;
import dp;

public class ButtonView extends LinearLayout
  implements View.OnTouchListener
{
  public static final int TYPE_BUTTON_BLUE = 3;
  public static final int TYPE_BUTTON_DESK_OPTIMIZE = 7;
  public static final int TYPE_BUTTON_GREEN = 1;
  public static final int TYPE_BUTTON_WHITE = 2;
  public static final int TYPE_BUTTON_WHITE_FILL_PARENT = 4;
  public static final int TYPE_BUTTON_WHITE_FILL_PARENT_WITH_ARROW = 5;
  public static final int TYPE_BUTTON_WITH_CHECKBOX = 6;
  private TextView mAboveText;
  private ImageView mArrowImage;
  private TextView mBelowText;
  private ImageView mButtonContentImg;
  private ImageView mButtonIcon;
  private ImageView mCheckbox_Image;
  private Context mContext;
  private FrameLayout mLoadingView;
  private ButtonLoadingInsideView mLoadingView_Inside;
  private ButtonLoadingOutsideView mLoadingView_Outside;
  private ImageView mPreImage;
  private ImageView mPrefixImage;
  private TextView mPrepositionAbove;
  private TextView mPrepositionBelow;
  private ImageView mRightImage;
  private int mType;
  private Drawable normalContentImg;
  private Drawable pressedContentImg;
  private FrameLayout textLayout;

  public ButtonView(Context paramContext, int paramInt)
  {
    super(paramContext);
    setOnTouchListener(this);
    this.mContext = paramContext;
    this.mType = paramInt;
    initView(paramInt);
  }

  public ButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOnTouchListener(this);
    this.mContext = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, dp.ButtonView);
    int i = localTypedArray.getInteger(0, 2);
    String str = localTypedArray.getString(1);
    int j = localTypedArray.getInteger(2, 0);
    this.mType = i;
    initView(i);
    if (str != null)
      setText(str);
    if (j != 0)
      setTextSize(j);
  }

  private void initView(int paramInt)
  {
    setMinimumWidth((int)(0.5F + 80.0F * this.mContext.getResources().getDisplayMetrics().density));
    this.textLayout = ((FrameLayout)LayoutInflater.from(this.mContext).inflate(2130903091, null));
    this.mAboveText = ((TextView)this.textLayout.findViewById(2131230918));
    this.mBelowText = ((TextView)this.textLayout.findViewById(2131230917));
    this.mButtonContentImg = ((ImageView)this.textLayout.findViewById(2131230919));
    this.mArrowImage = ((ImageView)this.textLayout.findViewById(2131230851));
    this.mRightImage = ((ImageView)this.textLayout.findViewById(2131230852));
    this.mPrepositionAbove = ((TextView)this.textLayout.findViewById(2131230912));
    this.mPrepositionBelow = ((TextView)this.textLayout.findViewById(2131230911));
    this.mPreImage = ((ImageView)this.textLayout.findViewById(2131230850));
    this.mCheckbox_Image = ((ImageView)this.textLayout.findViewById(2131230920));
    this.mLoadingView = ((FrameLayout)this.textLayout.findViewById(2131230913));
    this.mLoadingView_Inside = ((ButtonLoadingInsideView)this.textLayout.findViewById(2131230915));
    this.mLoadingView_Outside = ((ButtonLoadingOutsideView)this.textLayout.findViewById(2131230914));
    this.mPrefixImage = ((ImageView)this.textLayout.findViewById(2131230916));
    setButtonByType(paramInt);
    LinearLayout.LayoutParams localLayoutParams = getLayoutParams(paramInt);
    addView(this.textLayout, localLayoutParams);
  }

  public int getButtonType()
  {
    return this.mType;
  }

  public LinearLayout.LayoutParams getLayoutParams(int paramInt)
  {
    return new LinearLayout.LayoutParams(-1, -1);
  }

  public String getText()
  {
    Object localObject = this.mAboveText.getText().toString();
    String str = this.mBelowText.getText().toString();
    if (localObject != null);
    while (true)
    {
      return localObject;
      if (str != null)
        localObject = str;
      else
        localObject = "";
    }
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((!isEnabled()) || (!isClickable()));
    while (true)
    {
      return false;
      switch (paramMotionEvent.getAction())
      {
      case 2:
      default:
        break;
      case 0:
        if (this.mButtonContentImg.getVisibility() == 0)
        {
          this.mButtonContentImg.setImageDrawable(this.pressedContentImg);
        }
        else if (this.mType != 7)
        {
          this.mAboveText.setTextColor(getResources().getColor(2131296321));
          this.mBelowText.setTextColor(getResources().getColor(2131296322));
        }
        break;
      case 1:
      case 3:
      case 4:
        if (this.mButtonContentImg.getVisibility() == 0)
          this.mButtonContentImg.setImageDrawable(this.normalContentImg);
        else
          switch (this.mType)
          {
          default:
            break;
          case 1:
            this.mAboveText.setTextColor(getResources().getColor(2131296319));
            this.mBelowText.setTextColor(getResources().getColor(2131296320));
            break;
          case 2:
          case 6:
            this.mAboveText.setTextColor(getResources().getColor(2131296317));
            this.mBelowText.setTextColor(getResources().getColor(2131296318));
            break;
          case 3:
            this.mAboveText.setTextColor(getResources().getColor(2131296357));
            this.mBelowText.setTextColor(getResources().getColor(2131296318));
            break;
          case 4:
            this.mAboveText.setTextColor(getResources().getColor(2131296317));
            this.mBelowText.setTextColor(getResources().getColor(2131296318));
            break;
          case 5:
            this.mAboveText.setTextColor(getResources().getColor(2131296317));
            this.mBelowText.setTextColor(getResources().getColor(2131296318));
            break;
          case 7:
            this.mAboveText.setTextColor(-1);
            this.mBelowText.setTextColor(-10066330);
          }
        break;
      }
    }
  }

  public void setButtonByType(int paramInt)
  {
    this.mType = paramInt;
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      return;
      setBackgroundResource(2130837572);
      this.mAboveText.setTextColor(getResources().getColor(2131296319));
      this.mBelowText.setTextColor(getResources().getColor(2131296320));
      continue;
      setBackgroundResource(2130837574);
      this.mAboveText.setTextColor(getResources().getColor(2131296317));
      this.mBelowText.setTextColor(getResources().getColor(2131296318));
      continue;
      setBackgroundResource(2130837574);
      this.mAboveText.setTextColor(getResources().getColor(2131296357));
      this.mBelowText.setTextColor(getResources().getColor(2131296318));
      continue;
      setBackgroundResource(2130837573);
      this.mAboveText.setTextColor(getResources().getColor(2131296317));
      this.mBelowText.setTextColor(getResources().getColor(2131296318));
      continue;
      setBackgroundResource(2130837573);
      this.mAboveText.setTextColor(getResources().getColor(2131296317));
      this.mBelowText.setTextColor(getResources().getColor(2131296318));
      this.mArrowImage.setVisibility(0);
      continue;
      setBackgroundResource(2130837574);
      this.mAboveText.setTextColor(getResources().getColor(2131296317));
      this.mBelowText.setTextColor(getResources().getColor(2131296318));
      this.mCheckbox_Image.setVisibility(0);
      continue;
      setBackgroundResource(2130837576);
      this.mAboveText.setTextColor(-1);
      this.mBelowText.setTextColor(-10066330);
    }
  }

  public void setButtonContentImgID(int paramInt1, int paramInt2)
  {
    this.normalContentImg = this.mContext.getResources().getDrawable(paramInt1);
    this.pressedContentImg = this.mContext.getResources().getDrawable(paramInt2);
    this.mButtonContentImg.setVisibility(0);
    this.mButtonContentImg.setImageDrawable(this.normalContentImg);
    this.mAboveText.setVisibility(8);
    this.mBelowText.setVisibility(8);
  }

  public void setButtonEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (paramBoolean)
      setButtonByType(this.mType);
    while (true)
    {
      return;
      if (this.mType == 7)
      {
        setBackgroundResource(2130837615);
        this.mAboveText.setTextColor(-7303024);
        this.mBelowText.setTextColor(-1);
      }
      else
      {
        setBackgroundResource(2130837567);
        this.mAboveText.setTextColor(getResources().getColor(2131296323));
        this.mBelowText.setTextColor(getResources().getColor(2131296324));
      }
    }
  }

  public void setButtonIcon(Drawable paramDrawable)
  {
    if (this.mButtonIcon == null)
      this.mButtonIcon = new ImageView(this.mContext);
    if (paramDrawable == null)
    {
      this.mButtonIcon.setVisibility(8);
      removeAllViews();
      LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(-1, -1);
      addView(this.textLayout, localLayoutParams3);
    }
    while (true)
    {
      return;
      removeAllViews();
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(30, 30);
      localLayoutParams1.gravity = 19;
      localLayoutParams1.leftMargin = 10;
      localLayoutParams1.topMargin = 5;
      localLayoutParams1.bottomMargin = 5;
      addView(this.mButtonIcon, localLayoutParams1);
      this.mButtonIcon.setVisibility(0);
      this.mButtonIcon.setImageDrawable(paramDrawable);
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams2.leftMargin = 10;
      localLayoutParams2.gravity = 16;
      addView(this.textLayout, localLayoutParams2);
    }
  }

  public void setButtonRightImage(int paramInt)
  {
    if ((paramInt == 0) || (this.mRightImage == null));
    while (true)
    {
      return;
      this.mRightImage.setImageResource(paramInt);
    }
  }

  public void setCheckBoxState(boolean paramBoolean)
  {
    if (paramBoolean)
      this.mCheckbox_Image.setImageResource(2130837588);
    while (true)
    {
      return;
      this.mCheckbox_Image.setImageResource(2130837586);
    }
  }

  public void setPreImageVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      this.mPreImage.setVisibility(0);
    while (true)
    {
      return;
      this.mPreImage.setVisibility(8);
    }
  }

  public void setPreposition(String paramString)
  {
    if (paramString == null)
    {
      this.mPrepositionAbove.setVisibility(8);
      this.mPrepositionBelow.setVisibility(8);
    }
    while (true)
    {
      return;
      this.mPrepositionAbove.setVisibility(0);
      this.mPrepositionBelow.setVisibility(0);
      this.mPrepositionAbove.setText(paramString);
      this.mPrepositionBelow.setText(paramString);
    }
  }

  public void setPrifixImageIcon(int paramInt)
  {
    if ((paramInt == 0) || (this.mRightImage == null));
    while (true)
    {
      return;
      this.mPrefixImage.setVisibility(0);
      this.mPrefixImage.setImageResource(paramInt);
    }
  }

  public void setRightImageVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      this.mRightImage.setVisibility(0);
    while (true)
    {
      return;
      this.mRightImage.setVisibility(8);
    }
  }

  public void setText(String paramString)
  {
    if (paramString == null);
    while (true)
    {
      return;
      this.mAboveText.setText(paramString);
      this.mBelowText.setText(paramString);
    }
  }

  public void setTextSize(float paramFloat)
  {
    this.mAboveText.setTextSize(paramFloat);
    this.mBelowText.setTextSize(paramFloat);
  }

  public void startRunning()
  {
    this.mLoadingView.setVisibility(0);
    this.mLoadingView_Inside.startRotationAnimation();
    this.mLoadingView_Outside.startRotationAnimation();
  }

  public void stopRunning()
  {
    this.mLoadingView.setVisibility(8);
    this.mLoadingView_Inside.stopRotationAnimation();
    this.mLoadingView_Outside.stopRotationAnimation();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.ButtonView
 * JD-Core Version:    0.6.2
 */