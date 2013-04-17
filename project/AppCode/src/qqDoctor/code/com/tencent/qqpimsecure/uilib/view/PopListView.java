package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;

public class PopListView extends LinearLayout
{
  private Context mContext;
  private ListView mListView;
  private View mPopAnchorView;
  private int mPopBgId;
  private int mPopOffsetX;
  private int mPopOffsetY;
  private View mPopView;
  private PopupWindow mPopWindow;

  public PopListView(Context paramContext)
  {
    super(paramContext);
    setOrientation(0);
    this.mContext = paramContext;
    this.mPopView = LayoutInflater.from(paramContext).inflate(2130903351, null);
    this.mListView = ((ListView)this.mPopView.findViewById(2131231676));
    this.mPopWindow = new PopupWindow(this.mPopView, (int)(0.5F + 126.0F * this.mContext.getResources().getDisplayMetrics().density), -2);
    this.mPopWindow.setContentView(this.mPopView);
    this.mPopWindow.setFocusable(true);
    this.mPopWindow.setBackgroundDrawable(new BitmapDrawable());
    this.mPopBgId = 2130838131;
    this.mPopOffsetX = 0;
    this.mPopOffsetY = 0;
    this.mListView.requestFocus();
    this.mPopView.setFocusableInTouchMode(true);
    this.mPopView.setOnKeyListener(new PopListView.1(this));
    this.mPopWindow.setOnDismissListener(new PopListView.2(this));
    this.mPopWindow.setOutsideTouchable(false);
  }

  private void composePopWindow()
  {
    this.mPopView.setBackgroundResource(this.mPopBgId);
    this.mPopWindow.setContentView(this.mPopView);
  }

  public void dismissPopList()
  {
    if (this.mPopWindow != null)
      this.mPopWindow.dismiss();
  }

  public boolean isShowing()
  {
    if ((this.mPopWindow != null) && (this.mPopWindow.isShowing()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void setAdapter(BaseAdapter paramBaseAdapter)
  {
    this.mListView.setAdapter(paramBaseAdapter);
  }

  public void setAnchorView(View paramView)
  {
    this.mPopAnchorView = paramView;
  }

  public void setOnItemClickedListner(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.mListView.setOnItemClickListener(paramOnItemClickListener);
  }

  public void setPopOffset(int paramInt1, int paramInt2)
  {
    this.mPopOffsetX = paramInt1;
    this.mPopOffsetY = paramInt2;
  }

  public void showPopList()
  {
    this.mPopView.setBackgroundResource(this.mPopBgId);
    this.mPopWindow.setContentView(this.mPopView);
    this.mPopOffsetX = (this.mPopAnchorView.getWidth() - this.mPopWindow.getWidth() - (int)(0.5F + 9.0F * this.mContext.getResources().getDisplayMetrics().density));
    this.mPopWindow.showAsDropDown(this.mPopAnchorView, this.mPopOffsetX, this.mPopOffsetY);
  }

  public void update()
  {
    if (this.mPopWindow != null)
      this.mPopWindow.update();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.PopListView
 * JD-Core Version:    0.6.2
 */