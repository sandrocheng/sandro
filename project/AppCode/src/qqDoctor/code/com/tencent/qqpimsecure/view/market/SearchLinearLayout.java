package com.tencent.qqpimsecure.view.market;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class SearchLinearLayout extends LinearLayout
{
  private SearchCenterView a;

  public SearchLinearLayout(Context paramContext)
  {
    super(paramContext);
  }

  public SearchLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((this.a != null) && (this.a.a()))
      this.a.e();
  }

  public void setSearchCenterView(SearchCenterView paramSearchCenterView)
  {
    this.a = paramSearchCenterView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.market.SearchLinearLayout
 * JD-Core Version:    0.6.2
 */