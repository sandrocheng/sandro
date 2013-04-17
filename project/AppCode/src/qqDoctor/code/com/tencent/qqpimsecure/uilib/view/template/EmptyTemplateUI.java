package com.tencent.qqpimsecure.uilib.view.template;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.HashMap;
import java.util.Map;

public class EmptyTemplateUI
  implements TemplateUI
{
  public static final int TEMPLATE_TYPE_CENTER_IMAGE = 1;
  public static final int TEMPLATE_TYPE_CENTER_TEXT;
  private Context mContext;
  private View mEmptyView;
  private int mTemplateType = 0;
  private Map<Integer, View> mViewMap = new HashMap();

  public EmptyTemplateUI(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }

  private int getLayoutResId()
  {
    int i = this.mTemplateType;
    int j = 0;
    switch (i)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return j;
      j = 2130903143;
      continue;
      j = 2130903142;
    }
  }

  private void initView()
  {
    if (isHaveInit(this.mTemplateType))
      this.mEmptyView = ((View)this.mViewMap.get(Integer.valueOf(this.mTemplateType)));
    while (true)
    {
      return;
      int i = getLayoutResId();
      if (i != 0)
      {
        this.mEmptyView = LayoutInflater.from(this.mContext).inflate(i, null);
        this.mViewMap.put(Integer.valueOf(this.mTemplateType), this.mEmptyView);
      }
    }
  }

  private boolean isHaveInit(int paramInt)
  {
    if ((this.mViewMap.containsKey(Integer.valueOf(paramInt))) && (this.mViewMap.get(Integer.valueOf(paramInt)) != null));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ImageView getCenterImage()
  {
    return (ImageView)this.mEmptyView.findViewById(2131230855);
  }

  public View getCurrentView()
  {
    return this.mEmptyView;
  }

  public View getViewByTemplateType(int paramInt)
  {
    this.mTemplateType = paramInt;
    initView();
    return this.mEmptyView;
  }

  public boolean isShown()
  {
    return this.mEmptyView.isShown();
  }

  public void onCreate()
  {
    initView();
  }

  public void reset()
  {
    switch (this.mTemplateType)
    {
    default:
    case 1:
    case 0:
    }
    while (true)
    {
      return;
      ((ImageView)this.mEmptyView.findViewById(2131230855)).setVisibility(4);
      continue;
      setText("");
    }
  }

  public void setImageDrawable(Drawable paramDrawable)
  {
    switch (this.mTemplateType)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      ImageView localImageView = (ImageView)this.mEmptyView.findViewById(2131230855);
      localImageView.setImageDrawable(paramDrawable);
      localImageView.setVisibility(0);
    }
  }

  public void setImageResource(int paramInt)
  {
    setImageDrawable(this.mContext.getResources().getDrawable(paramInt));
  }

  public void setTemplateType(int paramInt)
  {
    this.mTemplateType = paramInt;
  }

  public void setText(int paramInt)
  {
    setText(this.mContext.getString(paramInt));
  }

  public void setText(String paramString)
  {
    switch (this.mTemplateType)
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      ((TextView)this.mEmptyView.findViewById(2131230994)).setText(paramString);
      ((TextView)this.mEmptyView.findViewById(2131230993)).setText(paramString);
    }
  }

  public void setVisibility(int paramInt)
  {
    this.mEmptyView.setVisibility(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.template.EmptyTemplateUI
 * JD-Core Version:    0.6.2
 */