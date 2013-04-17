package com.tencent.qqpimsecure.uilib.view.template;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.tencent.qqpimsecure.uilib.view.imageview.LoadingInsideView;
import com.tencent.qqpimsecure.uilib.view.imageview.LoadingOutsideView;
import java.util.HashMap;
import java.util.Map;

public class LoadingTemplateUI
  implements TemplateUI
{
  public static final int TEMPLATE_TYPE_LOADING_IMAGE;
  private Context mContext;
  private LoadingInsideView mInsideView;
  private View mLoadingView;
  private LoadingOutsideView mOutsideView;
  private int mTemplateType = 0;
  private Map<Integer, View> mViewMap = new HashMap();

  public LoadingTemplateUI(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }

  private void initView()
  {
    if (isHaveInit(this.mTemplateType))
    {
      this.mLoadingView = ((View)this.mViewMap.get(Integer.valueOf(this.mTemplateType)));
      return;
    }
    switch (this.mTemplateType)
    {
    default:
    case 0:
    }
    while (true)
    {
      this.mViewMap.put(Integer.valueOf(this.mTemplateType), this.mLoadingView);
      break;
      this.mLoadingView = new FrameLayout(this.mContext);
      FrameLayout localFrameLayout = (FrameLayout)this.mLoadingView;
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
      localLayoutParams.gravity = 17;
      this.mOutsideView = new LoadingOutsideView(this.mContext);
      localFrameLayout.addView(this.mOutsideView, localLayoutParams);
      this.mInsideView = new LoadingInsideView(this.mContext);
      localFrameLayout.addView(this.mInsideView, localLayoutParams);
    }
  }

  private boolean isHaveInit(int paramInt)
  {
    if ((this.mViewMap.containsKey(Integer.valueOf(paramInt))) && (this.mViewMap.get(Integer.valueOf(paramInt)) != null));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public View getCurrentView()
  {
    return this.mLoadingView;
  }

  public View getViewByTemplateType(int paramInt)
  {
    this.mTemplateType = paramInt;
    initView();
    return this.mLoadingView;
  }

  public boolean isShown()
  {
    return this.mLoadingView.isShown();
  }

  public void onCreate()
  {
    initView();
  }

  public void setTemplateType(int paramInt)
  {
    this.mTemplateType = paramInt;
    initView();
  }

  public void setVisibility(int paramInt)
  {
    this.mLoadingView.setVisibility(paramInt);
    this.mInsideView.setVisibility(paramInt);
    this.mOutsideView.setVisibility(paramInt);
  }

  public void startLoading()
  {
    switch (this.mTemplateType)
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      this.mInsideView.startRotationAnimation();
      this.mOutsideView.startRotationAnimation();
    }
  }

  public void stopLoading()
  {
    switch (this.mTemplateType)
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      this.mInsideView.stopRotationAnimation();
      this.mOutsideView.stopRotationAnimation();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.template.LoadingTemplateUI
 * JD-Core Version:    0.6.2
 */