package com.tencent.qqpimsecure.uilib.view.desktop;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter.FunctionModel;
import gw;

public class MainDesktopPanel extends DesktopPanel
{
  private DesktopAdapter mBottomAdapter;
  private DesktopView mBottomDesktopView;
  private Handler mHandler = new MainDesktopPanel.1(this);
  private boolean mNeedInvidate = true;
  private DesktopAdapter mTopAdapter;
  private DesktopView mTopDesktopView;

  public MainDesktopPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private DesktopAdapter.FunctionModel getNineBoxModelById(int paramInt)
  {
    DesktopAdapter.FunctionModel localFunctionModel = this.mTopAdapter.getModelById(paramInt);
    if (localFunctionModel == null)
      localFunctionModel = this.mBottomAdapter.getModelById(paramInt);
    return localFunctionModel;
  }

  private void initToolBox()
  {
    setInterpolator(new ExpoInterpolator(EasingType.Type.INOUT));
    this.mBottomAdapter = new DesktopAdapter(getContext(), this.mBottomDesktopView, 1);
    this.mBottomDesktopView.setAdapter(this.mBottomAdapter);
    this.mBottomDesktopView.setPositionListener(this.mBottomAdapter);
    this.mTopAdapter = new DesktopAdapter(getContext(), this.mTopDesktopView, 0);
    this.mTopDesktopView.setAdapter(this.mTopAdapter);
    this.mTopDesktopView.setPositionListener(this.mTopAdapter);
  }

  public DesktopAdapter getBottomAdapter()
  {
    return this.mBottomAdapter;
  }

  public DesktopView getBottomDesktopView()
  {
    return this.mBottomDesktopView;
  }

  public Handler getHandler()
  {
    return this.mHandler;
  }

  protected int getPaddingBottomHeight()
  {
    if (gw.e());
    for (int i = gw.d; ; i = this.mTopDesktopView.getHeight())
      return i;
  }

  public DesktopAdapter getTopAdapter()
  {
    return this.mTopAdapter;
  }

  public DesktopView getTopDesktopView()
  {
    return this.mTopDesktopView;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.mTopDesktopView = ((DesktopView)findViewById(2131231106));
    this.mBottomDesktopView = ((DesktopView)findViewById(2131231107));
    initToolBox();
    this.mTopDesktopView.setOnTouchListener(this.mTouchListener);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.mNeedInvidate)
    {
      this.mBottomAdapter.notifyDataSetChanged();
      this.mTopAdapter.notifyDataSetChanged();
      this.mNeedInvidate = false;
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void setNineBoxHot(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
    {
      DesktopAdapter.FunctionModel localFunctionModel = getNineBoxModelById(paramArrayOfInt[j]);
      if (localFunctionModel != null)
        localFunctionModel.setHot(true);
    }
    this.mHandler.sendEmptyMessage(0);
  }

  public void setNineBoxNew(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
    {
      DesktopAdapter.FunctionModel localFunctionModel = getNineBoxModelById(paramArrayOfInt[j]);
      if (localFunctionModel != null)
        localFunctionModel.setNew(true);
    }
    this.mHandler.sendEmptyMessage(0);
  }

  public void setNineBoxNumber(int paramInt1, int paramInt2)
  {
    DesktopAdapter.FunctionModel localFunctionModel = getNineBoxModelById(paramInt1);
    if (localFunctionModel != null)
    {
      localFunctionModel.setNumber(paramInt2);
      this.mHandler.sendEmptyMessage(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.MainDesktopPanel
 * JD-Core Version:    0.6.2
 */