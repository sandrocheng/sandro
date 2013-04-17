package com.tencent.qqpimsecure.uilib.view.button;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PaintFlagsDrawFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

public class RotationButton extends LinearLayout
  implements View.OnClickListener
{
  private TextView mAboveText;
  private TextView mBelowText;
  private Context mContext;
  private View.OnClickListener mOnClickListener;
  private FrameLayout mRotationButton;
  private RotationView mRotationView;

  public RotationButton(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }

  public RotationButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
  }

  private void initView(Context paramContext)
  {
    this.mContext = paramContext;
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(this.mContext).inflate(2130903240, null);
    this.mRotationButton = ((FrameLayout)localLinearLayout.findViewById(2131231284));
    this.mRotationView = ((RotationView)localLinearLayout.findViewById(2131231285));
    this.mAboveText = ((TextView)localLinearLayout.findViewById(2131230994));
    this.mBelowText = ((TextView)localLinearLayout.findViewById(2131230993));
    this.mRotationButton.setOnClickListener(this);
    addView(localLinearLayout);
    setEnabled(true);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      this.mRotationView.setVisibility(8);
    case 2131231284:
    }
    while (true)
    {
      return;
      this.mRotationView.startRotationAnimation();
      if (this.mOnClickListener != null)
        this.mOnClickListener.onClick(this);
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    super.dispatchDraw(paramCanvas);
  }

  public void setEnabled(boolean paramBoolean)
  {
    this.mRotationButton.setEnabled(paramBoolean);
    this.mRotationButton.setClickable(paramBoolean);
    if (paramBoolean)
    {
      this.mAboveText.setTextColor(this.mContext.getResources().getColor(2131296396));
      this.mBelowText.setTextColor(this.mContext.getResources().getColor(2131296400));
    }
    while (true)
    {
      return;
      this.mAboveText.setTextColor(this.mContext.getResources().getColor(2131296420));
      this.mBelowText.setTextColor(this.mContext.getResources().getColor(2131296421));
    }
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.mOnClickListener = paramOnClickListener;
  }

  public void setText(int paramInt)
  {
    this.mAboveText.setText(paramInt);
    this.mBelowText.setText(paramInt);
  }

  public void setText(String paramString)
  {
    this.mAboveText.setText(paramString);
    this.mBelowText.setText(paramString);
  }

  public void stopRotationAnimation()
  {
    this.mRotationView.stopRotationAnimation();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.button.RotationButton
 * JD-Core Version:    0.6.2
 */