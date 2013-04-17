package com.tencent.qqpimsecure.uilib.view.bmw;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class RotateTableView extends FrameLayout
{
  public static final int PIONT_CPU = 2;
  public static final int PIONT_MEMORY = 1;
  private Context mContext;
  private RotatePointView mRotateCPU;
  private RotatePointView mRotateMemory;
  private TextView numViewCPU;
  private TextView numViewM;
  private LinearLayout relativeLayout;

  public RotateTableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    ImageView localImageView = new ImageView(paramContext);
    localImageView.setBackgroundResource(2130837811);
    addView(localImageView);
    init();
  }

  private RotatePointView addPoint(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, RotatePointView paramRotatePointView)
  {
    if (this.relativeLayout == null)
    {
      this.relativeLayout = new LinearLayout(paramContext);
      FrameLayout.LayoutParams localLayoutParams1 = new FrameLayout.LayoutParams(-1, -1);
      addView(this.relativeLayout, localLayoutParams1);
    }
    int i = (int)(0.5F + paramFloat1 * paramContext.getResources().getDisplayMetrics().density);
    int j = (int)(0.5F + paramFloat2 * paramContext.getResources().getDisplayMetrics().density);
    int k = (int)(0.5F + paramFloat3 * paramContext.getResources().getDisplayMetrics().density);
    int m = (int)(0.5F + paramFloat4 * paramContext.getResources().getDisplayMetrics().density);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(i, j, k, m);
    this.relativeLayout.addView(paramRotatePointView, localLayoutParams);
    return paramRotatePointView;
  }

  private void addTextView(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, View paramView)
  {
    int i = (int)(0.5F + paramFloat1 * paramContext.getResources().getDisplayMetrics().density);
    int j = (int)(0.5F + paramFloat2 * paramContext.getResources().getDisplayMetrics().density);
    int k = (int)(0.5F + paramFloat3 * paramContext.getResources().getDisplayMetrics().density);
    int m = (int)(0.5F + paramFloat4 * paramContext.getResources().getDisplayMetrics().density);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(i, j, k, m);
    localLayoutParams.gravity = 83;
    addView(paramView, localLayoutParams);
  }

  public void changeBMW(int paramInt1, int paramInt2)
  {
    if ((paramInt2 > 100) || (paramInt2 < 0));
    while (true)
    {
      return;
      if (paramInt2 == 100)
        paramInt2 = 99;
      switch (paramInt1)
      {
      default:
        break;
      case 1:
        if (this.mRotateMemory.getPrcess() != paramInt2)
        {
          this.mRotateMemory.changeBMW(paramInt2);
          this.numViewM.setText(paramInt2 + "%");
        }
        break;
      case 2:
        if (this.mRotateCPU.getPrcess() != paramInt2)
        {
          this.mRotateCPU.changeBMW(paramInt2);
          this.numViewCPU.setText(paramInt2 + "%");
        }
        break;
      }
    }
  }

  public void init()
  {
    BMWAnimation localBMWAnimation1 = new BMWAnimation(-120.0F, 120.0F, 0.5F, 0.77F);
    localBMWAnimation1.setDuration(2000L);
    RotatePointView localRotatePointView1 = new RotatePointView(this.mContext, localBMWAnimation1);
    localRotatePointView1.setBackgroundResource(2130837812);
    this.mRotateMemory = addPoint(this.mContext, 30.9F, 6.5F, 0.0F, 0.0F, localRotatePointView1);
    int i = this.mContext.getResources().getColor(2131296258);
    int j = this.mContext.getResources().getColor(2131296308);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    LinearLayout localLinearLayout1 = new LinearLayout(this.mContext);
    TextView localTextView1 = new TextView(this.mContext);
    localTextView1.setText(this.mContext.getString(2131428219));
    localTextView1.setTextSize(11.0F);
    localTextView1.setTextColor(i);
    this.numViewM = new TextView(this.mContext);
    this.numViewM.setText("0%");
    this.numViewM.setTextSize(11.0F);
    this.numViewM.setTextColor(j);
    localLinearLayout1.addView(localTextView1, localLayoutParams);
    localLinearLayout1.addView(this.numViewM, localLayoutParams);
    addTextView(this.mContext, 21.0F, 0.0F, 0.0F, 14.0F, localLinearLayout1);
    BMWAnimation localBMWAnimation2 = new BMWAnimation(-120.0F, 120.0F, 0.5F, 0.77F);
    localBMWAnimation2.setDuration(2000L);
    RotatePointView localRotatePointView2 = new RotatePointView(this.mContext, localBMWAnimation2);
    localRotatePointView2.setBackgroundResource(2130837813);
    this.mRotateCPU = addPoint(this.mContext, 46.299999F, 17.799999F, 0.0F, 0.0F, localRotatePointView2);
    LinearLayout localLinearLayout2 = new LinearLayout(this.mContext);
    TextView localTextView2 = new TextView(this.mContext);
    localTextView2.setText(2131428220);
    localTextView2.setTextSize(9.0F);
    localTextView2.setTextColor(i);
    this.numViewCPU = new TextView(this.mContext);
    this.numViewCPU.setText("0%");
    this.numViewCPU.setTextSize(9.0F);
    this.numViewCPU.setTextColor(j);
    localLinearLayout2.addView(localTextView2, localLayoutParams);
    localLinearLayout2.addView(this.numViewCPU, localLayoutParams);
    addTextView(this.mContext, 88.0F, 0.0F, 0.0F, 15.0F, localLinearLayout2);
  }

  public static abstract interface ProcessChangeListener
  {
    public abstract void onChange(int paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.bmw.RotateTableView
 * JD-Core Version:    0.6.2
 */