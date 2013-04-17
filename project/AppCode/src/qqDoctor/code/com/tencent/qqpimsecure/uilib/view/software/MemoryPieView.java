package com.tencent.qqpimsecure.uilib.view.software;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class MemoryPieView extends LinearLayout
{
  private LinearLayout mColorTextLayout;
  private final int mFreeMomoryColor = -9321955;
  private final int mOutsideRingColor = -1;
  private final int mPersonalSoftwareColor = -28672;
  private final int mPieBorderColor = -2368549;
  private final int mPieTextColor = -7303024;
  private PieView mPieView;
  private final int mSystemSoftwareColor = -16737025;

  public MemoryPieView(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }

  public MemoryPieView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
  }

  private void initView(Context paramContext)
  {
    this.mColorTextLayout = new LinearLayout(paramContext);
    this.mColorTextLayout.setOrientation(1);
    this.mColorTextLayout.addView(newColorTextView(paramContext, -16737025, 2131429654));
    this.mColorTextLayout.addView(newColorTextView(paramContext, -28672, 2131429655));
    this.mColorTextLayout.addView(newColorTextView(paramContext, -9321955, 2131429656));
    this.mPieView = new PieView(paramContext);
    int i = (int)(0.5F + 4.0F * paramContext.getResources().getDisplayMetrics().density);
    this.mPieView.setOutsideRing(-1, i);
    this.mPieView.setBorderColor(-2368549);
    int j = (int)(0.5F + 81.0F * paramContext.getResources().getDisplayMetrics().density);
    this.mPieView.setPiePerfectSize(j, j);
    setOrientation(0);
    addView(this.mColorTextLayout);
    addView(this.mPieView);
  }

  private LinearLayout newColorTextView(Context paramContext, int paramInt1, int paramInt2)
  {
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(0);
    localLinearLayout.setGravity(16);
    PureColorAreaView localPureColorAreaView = new PureColorAreaView(paramContext, paramInt1);
    int i = (int)(0.5F + 6.0F * paramContext.getResources().getDisplayMetrics().density);
    localLinearLayout.addView(localPureColorAreaView, i, i);
    TextView localTextView = new TextView(paramContext);
    localTextView.setPadding(5, 0, 0, 0);
    localTextView.setText(paramInt2);
    localTextView.setTextSize(2, 13.0F);
    localTextView.setTextColor(-7303024);
    localLinearLayout.addView(localTextView, new LinearLayout.LayoutParams(-2, -2));
    return localLinearLayout;
  }

  public void setMemoryValues(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float[] arrayOfFloat = new float[3];
    int[] arrayOfInt = new int[3];
    arrayOfFloat[0] = paramFloat1;
    arrayOfInt[0] = -16737025;
    arrayOfFloat[1] = paramFloat2;
    arrayOfInt[1] = -28672;
    arrayOfFloat[2] = paramFloat3;
    arrayOfInt[2] = -9321955;
    this.mPieView.setPieValues(arrayOfFloat, arrayOfInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.software.MemoryPieView
 * JD-Core Version:    0.6.2
 */