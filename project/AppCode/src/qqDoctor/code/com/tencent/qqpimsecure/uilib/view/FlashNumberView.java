package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import dp;

public class FlashNumberView extends LinearLayout
{
  private final int MSG_NEXT_FRAME = 1;
  public final int TYPE_GREEN = 3;
  public final int TYPE_LARGE = 2;
  public final int TYPE_MINI = 1;
  private boolean isNeedShowZero;
  private Handler mHandler = new FlashNumberView.1(this);
  private boolean mIsDoingAnim;
  private ImageView mNum_1;
  private ImageView mNum_2;
  private ImageView mNum_3;
  private int mNum_Showing = -1;
  private int mNum_ToBeShow = -1;
  private int mNum_type;

  public FlashNumberView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, dp.FlashNumView);
    this.mNum_type = localTypedArray.getInteger(0, 1);
    this.isNeedShowZero = localTypedArray.getBoolean(1, true);
  }

  private void doSetNumber(int paramInt)
  {
    boolean bool = true;
    try
    {
      this.mNum_Showing = paramInt;
      int i = paramInt % 10;
      int j = paramInt / 10;
      setNumImage(this.mNum_1, i, false);
      int k = j % 10;
      int m = j / 10;
      ImageView localImageView = this.mNum_2;
      if (m <= 0)
      {
        setNumImage(localImageView, k, bool);
        int n = m % 10;
        if (n > 0)
          setNumImage(this.mNum_3, n, true);
        return;
      }
      bool = false;
    }
    finally
    {
    }
  }

  private void initView(Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903153, null);
    this.mNum_1 = ((ImageView)localView.findViewById(2131231016));
    this.mNum_2 = ((ImageView)localView.findViewById(2131231015));
    this.mNum_3 = ((ImageView)localView.findViewById(2131231014));
    addView(localView);
  }

  private void setNumImage(ImageView paramImageView, int paramInt, boolean paramBoolean)
  {
    paramImageView.setVisibility(0);
    int i = 0;
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    }
    while (true)
    {
      paramImageView.setImageResource(i);
      return;
      if ((paramBoolean) && (!this.isNeedShowZero))
      {
        paramImageView.setVisibility(8);
        i = 0;
      }
      else if (this.mNum_type == 2)
      {
        i = 2130838239;
      }
      else if (this.mNum_type == 1)
      {
        i = 2130838249;
      }
      else
      {
        i = 2130838226;
        continue;
        if (this.mNum_type == 2)
        {
          i = 2130838240;
        }
        else if (this.mNum_type == 1)
        {
          i = 2130838250;
        }
        else
        {
          i = 2130838227;
          continue;
          if (this.mNum_type == 2)
          {
            i = 2130838241;
          }
          else if (this.mNum_type == 1)
          {
            i = 2130838251;
          }
          else
          {
            i = 2130838228;
            continue;
            if (this.mNum_type == 2)
            {
              i = 2130838242;
            }
            else if (this.mNum_type == 1)
            {
              i = 2130838252;
            }
            else
            {
              i = 2130838229;
              continue;
              if (this.mNum_type == 2)
              {
                i = 2130838243;
              }
              else if (this.mNum_type == 1)
              {
                i = 2130838253;
              }
              else
              {
                i = 2130838230;
                continue;
                if (this.mNum_type == 2)
                {
                  i = 2130838244;
                }
                else if (this.mNum_type == 1)
                {
                  i = 2130838254;
                }
                else
                {
                  i = 2130838231;
                  continue;
                  if (this.mNum_type == 2)
                  {
                    i = 2130838245;
                  }
                  else if (this.mNum_type == 1)
                  {
                    i = 2130838255;
                  }
                  else
                  {
                    i = 2130838232;
                    continue;
                    if (this.mNum_type == 2)
                    {
                      i = 2130838246;
                    }
                    else if (this.mNum_type == 1)
                    {
                      i = 2130838256;
                    }
                    else
                    {
                      i = 2130838233;
                      continue;
                      if (this.mNum_type == 2)
                      {
                        i = 2130838247;
                      }
                      else if (this.mNum_type == 1)
                      {
                        i = 2130838257;
                      }
                      else
                      {
                        i = 2130838234;
                        continue;
                        if (this.mNum_type == 2)
                          i = 2130838248;
                        else if (this.mNum_type == 1)
                          i = 2130838258;
                        else
                          i = 2130838235;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public void setNumber(int paramInt, boolean paramBoolean)
  {
    if ((this.mNum_Showing >= paramInt) || (!paramBoolean))
    {
      doSetNumber(paramInt);
      this.mIsDoingAnim = false;
    }
    while (true)
    {
      return;
      this.mNum_ToBeShow = paramInt;
      if (!this.mIsDoingAnim)
      {
        doSetNumber(0);
        this.mHandler.sendEmptyMessage(1);
        this.mIsDoingAnim = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.FlashNumberView
 * JD-Core Version:    0.6.2
 */