package com.tencent.qqpimsecure.ui.activity.pickproof;

import ahk;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.slide.SlideCallBackInterface;
import com.tencent.qqpimsecure.uilib.view.slide.SlideLayout;
import com.tencent.qqpimsecure.uilib.view.slide.SlidePoint;
import com.tencent.qqpimsecure.uilib.view.slide.SlideViewGroup;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import ft;
import java.util.ArrayList;
import java.util.List;
import nd;

public class PickproofGuidelActivity1 extends BaseUIActivity
{
  public BaseView getView()
  {
    return new a(getIntent().getBooleanExtra("bind_qq", false));
  }

  public final class a extends BaseView
    implements SlideCallBackInterface
  {
    private final int[] a = { 2130838128, 2130838130, 2130838129, 2130838127 };
    private SlidePoint b;
    private boolean c;

    public a(boolean arg2)
    {
      super(2130903202);
      boolean bool;
      this.c = bool;
    }

    protected final List<OperatingModel> createOperatingBarDataList()
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new OperatingModel(0, this.mContext.getString(2131429341)));
      return localArrayList;
    }

    public final void onCreate()
    {
      super.onCreate();
      LinearLayout localLinearLayout1 = (LinearLayout)findViewById(2131231233);
      LinearLayout localLinearLayout2 = (LinearLayout)findViewById(2131231234);
      SlideLayout localSlideLayout = new SlideLayout(this.mContext);
      localSlideLayout.addSlideCallBackInterface(this);
      for (int i = 0; i < this.a.length; i++)
      {
        ImageView localImageView = new ImageView(this.mContext);
        localImageView.setImageDrawable(this.mContext.getResources().getDrawable(this.a[i]));
        SlideViewGroup localSlideViewGroup = new SlideViewGroup(this.mContext);
        LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -1);
        localLayoutParams1.gravity = 17;
        localSlideViewGroup.addView(localImageView, localLayoutParams1);
        localSlideLayout.addView(localSlideViewGroup, new LinearLayout.LayoutParams(-1, -1));
      }
      localLinearLayout1.addView(localSlideLayout, new LinearLayout.LayoutParams(-1, -1));
      this.b = new SlidePoint(this.mContext, this.a.length, 2);
      this.b.setPointType(2);
      this.b.setCurrentFourceIndex(0);
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
      localLinearLayout2.addView(this.b, localLayoutParams2);
    }

    public final void onNextCanvas(int paramInt)
    {
      this.b.setCurrentFourceIndex(paramInt);
    }

    public final void onOperatingBarClick(OperatingModel paramOperatingModel)
    {
      switch (paramOperatingModel.getID())
      {
      default:
      case 0:
      }
      while (true)
      {
        return;
        nd.a().a(26383);
        if (ft.f(this.mContext))
        {
          if (this.c)
          {
            Intent localIntent1 = new Intent();
            localIntent1.setClass(this.mContext, PickproofAccountLoginActivity.class);
            localIntent1.putExtra("action", 0);
            this.mContext.startActivity(localIntent1);
            ((Activity)this.mContext).finish();
          }
          else
          {
            Intent localIntent2 = new Intent();
            localIntent2.setClass(this.mContext, PickproofGuidelActivity2.class);
            this.mContext.startActivity(localIntent2);
            ((Activity)this.mContext).finish();
          }
        }
        else
        {
          Dialog localDialog = new Dialog(this.mContext);
          localDialog.setTitle(2131429439);
          localDialog.setMessage(2131429468);
          localDialog.setPositiveButton(2131429537, new ahk(localDialog), 1);
          localDialog.show();
        }
      }
    }

    public final void onSlideStart()
    {
    }

    public final void onSlideStop()
    {
    }

    protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
    {
      paramFrameworkTemplateUI.setTitleTextData(2131429289);
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.pickproof.PickproofGuidelActivity1
 * JD-Core Version:    0.6.2
 */