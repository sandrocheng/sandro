package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.RadioButtonMode;
import java.util.ArrayList;
import java.util.List;

public class SpinnerView extends TextView
{
  private Context mContext;
  private List<String> mDateList;
  private View.OnClickListener mDefaultOnClickListener = new SpinnerView.1(this);
  private String mGuidText = "";
  private int mGuidTextColor = -1;
  private ArrayList<RadioButtonMode> mModeList;
  private OnSelectChangeListener mOnSelectChangeListener;
  private int mSelectedIndex;
  private int mTitle = 0;

  public SpinnerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
  }

  private void initGuidText()
  {
    if (this.mSelectedIndex < 0)
      if ((this.mGuidText != null) && (!"".equals(this.mGuidText)))
      {
        setText(this.mGuidText);
        if (this.mGuidTextColor == -1)
          break label60;
        setTextColor(this.mGuidTextColor);
      }
    while (true)
    {
      return;
      setText(2131429147);
      break;
      label60: setTextColor(this.mContext.getResources().getColor(2131296357));
      continue;
      setText((CharSequence)this.mDateList.get(this.mSelectedIndex));
      setTextColor(this.mContext.getResources().getColor(2131296286));
    }
  }

  public void clickView(View paramView)
  {
    this.mDefaultOnClickListener.onClick(paramView);
  }

  public int getSelectedIndex()
  {
    return this.mSelectedIndex;
  }

  public void init(int paramInt1, List<String> paramList, int paramInt2)
  {
    this.mTitle = paramInt1;
    this.mDateList = paramList;
    this.mSelectedIndex = paramInt2;
    initGuidText();
    setOnClickListener(this.mDefaultOnClickListener);
  }

  public void setGuidText(String paramString)
  {
    this.mGuidText = paramString;
    if ((this.mGuidText != null) && (!"".equals(this.mGuidText)))
      setText(this.mGuidText);
  }

  public void setGuidTextColor(int paramInt)
  {
    this.mGuidTextColor = paramInt;
    if (this.mGuidTextColor != -1)
      setTextColor(this.mContext.getResources().getColor(this.mGuidTextColor));
  }

  public void setOnSelectChangeListener(OnSelectChangeListener paramOnSelectChangeListener)
  {
    this.mOnSelectChangeListener = paramOnSelectChangeListener;
  }

  public static abstract interface OnSelectChangeListener
  {
    public abstract void onSelectChange(int paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SpinnerView
 * JD-Core Version:    0.6.2
 */