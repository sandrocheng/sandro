package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.uilib.service.ColorEggManager.ColorEggDialogInfoHolder;
import hd;
import ld;
import lx;
import ma;

class MinDeskAssistantWindow$1 extends Handler
{
  MinDeskAssistantWindow$1(MinDeskAssistantWindow paramMinDeskAssistantWindow)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 3:
    case 1:
    case 2:
    case 0:
    case 4:
    case 6:
    case 5:
    case 10:
    case 11:
    case 7:
    case 8:
    case 9:
    case 17:
    case 13:
    case 12:
    case 14:
    case 15:
    case 16:
    }
    while (true)
    {
      return;
      MinDeskAssistantWindow.access$000(this.this$0).setVisibility(8);
      if (!MinDeskAssistantWindow.mIsFireRocketAnimation)
        continue;
      System.currentTimeMillis();
      new hd();
      MinDeskAssistantWindow.mIsFireRocketAnimation = false;
      continue;
      MinDeskAssistantWindow.access$100(this.this$0).setVisibility(8);
      MinDeskAssistantWindow.access$200(this.this$0).setVisibility(0);
      MinDeskAssistantWindow.access$000(this.this$0).setVisibility(8);
      MinDeskAssistantWindow.access$300(this.this$0).setVisibility(8);
      continue;
      MinDeskAssistantWindow.access$200(this.this$0).setVisibility(8);
      continue;
      if (!this.this$0.hasAddToWindow())
        continue;
      try
      {
        WindowManager.LayoutParams localLayoutParams2 = this.this$0.getWindowLayoutParams(paramMessage.arg1, paramMessage.arg2);
        boolean bool = this.this$0.isShown();
        if (!bool)
          continue;
        try
        {
          MinDeskAssistantWindow.access$400(this.this$0).updateViewLayout(this.this$0, localLayoutParams2);
        }
        catch (Exception localException2)
        {
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
      }
      continue;
      MinDeskAssistantWindow.access$100(this.this$0).setVisibility(0);
      MinDeskAssistantWindow.access$200(this.this$0).setVisibility(8);
      MinDeskAssistantWindow.access$000(this.this$0).setVisibility(8);
      MinDeskAssistantWindow.access$300(this.this$0).setVisibility(8);
      continue;
      AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
      localAlphaAnimation.setDuration(paramMessage.arg1);
      MinDeskAssistantWindow.access$100(this.this$0).startAnimation(localAlphaAnimation);
      continue;
      MinDeskAssistantWindow.access$100(this.this$0).setVisibility(8);
      continue;
      MinDeskAssistantWindow.access$100(this.this$0).setBackgroundResource(2130838037);
      continue;
      MinDeskAssistantWindow.access$100(this.this$0).setBackgroundDrawable(MinDeskAssistantWindow.access$500(this.this$0));
      continue;
      MinDeskAssistantWindow.access$200(this.this$0).setVisibility(8);
      MinDeskAssistantWindow.access$100(this.this$0).setVisibility(8);
      continue;
      MinDeskAssistantWindow.access$200(this.this$0).setBackgroundDrawable((Drawable)paramMessage.obj);
      MinDeskAssistantWindow.access$100(this.this$0).setBackgroundDrawable((Drawable)paramMessage.obj);
      continue;
      MinDeskAssistantWindow.access$200(this.this$0).setBackgroundDrawable(MinDeskAssistantWindow.access$600(this.this$0));
      MinDeskAssistantWindow.access$100(this.this$0).setBackgroundDrawable(MinDeskAssistantWindow.access$500(this.this$0));
      continue;
      if ((!this.this$0.isFlying()) && (this.this$0.hasAddToWindow()))
        this.this$0.rocketAlive(false);
      if (this.this$0.isReadyToShow())
      {
        MinDeskAssistantWindow.access$700(this.this$0).sendEmptyMessage(16);
        continue;
      }
      this.this$0.setIsReadyToShow(true);
      continue;
      ColorEggManager.ColorEggDialogInfoHolder localColorEggDialogInfoHolder3 = (ColorEggManager.ColorEggDialogInfoHolder)paramMessage.obj;
      ColorEggIntroView.showDialog(((ld)localColorEggDialogInfoHolder3.entity).d, ((ld)localColorEggDialogInfoHolder3.entity).c, localColorEggDialogInfoHolder3.killCount, localColorEggDialogInfoHolder3.ram);
      continue;
      ColorEggManager.ColorEggDialogInfoHolder localColorEggDialogInfoHolder2 = (ColorEggManager.ColorEggDialogInfoHolder)paramMessage.obj;
      ColorEggShareView.showDialog(localColorEggDialogInfoHolder2.killCount, localColorEggDialogInfoHolder2.ram, ((ma)localColorEggDialogInfoHolder2.entity).j, ((ma)localColorEggDialogInfoHolder2.entity).i);
      continue;
      ColorEggManager.ColorEggDialogInfoHolder localColorEggDialogInfoHolder1 = (ColorEggManager.ColorEggDialogInfoHolder)paramMessage.obj;
      MinDeskAssistantWindow.access$802(new MinDeskAssistantWindow.1.1(this));
      LotteryRemindDialogView.showDialog((lx)localColorEggDialogInfoHolder1.entity, localColorEggDialogInfoHolder1.killCount, localColorEggDialogInfoHolder1.ram, MinDeskAssistantWindow.access$800());
      continue;
      this.this$0.setVisibility(8);
      continue;
      if (MinDeskAssistantWindow.access$900(this.this$0))
        continue;
      this.this$0.initView();
      WindowManager.LayoutParams localLayoutParams1 = this.this$0.getWindowLayoutParams(-1, -1);
      try
      {
        if (this.this$0.hasAddToWindow())
          MinDeskAssistantWindow.access$1200(this.this$0).updateViewLayout(this.this$0, localLayoutParams1);
        while (true)
        {
          this.this$0.setVisibility(0);
          label798: MinDeskAssistantWindow.access$1400(this.this$0).onAnimationDone();
          break;
          MinDeskAssistantWindow.access$1300(this.this$0).addView(this.this$0, localLayoutParams1);
          this.this$0.setHasAddToWindow(true);
        }
      }
      catch (Exception localException1)
      {
        break label798;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.MinDeskAssistantWindow.1
 * JD-Core Version:    0.6.2
 */