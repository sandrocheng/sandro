package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.service.OnSuspendedViewTouch;
import ho;

public class DeskAssistantTipWindow extends OnSuspendedViewTouch
{
  private ho mConfigDao;
  private Context mContext;
  private WindowManager.LayoutParams mLayoutParams;
  private View mMainLayout;
  private TextView mTextView;

  public DeskAssistantTipWindow(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mConfigDao = ho.a();
    this.mMainLayout = LayoutInflater.from(this.mContext).inflate(2130903137, null);
    addView(this.mMainLayout);
    this.mTextView = ((TextView)findViewById(2131230983));
  }

  private void intiParams()
  {
    if (this.mLayoutParams == null)
    {
      this.mLayoutParams = new WindowManager.LayoutParams();
      this.mLayoutParams.gravity = 51;
      this.mLayoutParams.type = 2003;
      this.mLayoutParams.format = 1;
      WindowManager.LayoutParams localLayoutParams = this.mLayoutParams;
      localLayoutParams.flags = (0x8 | localLayoutParams.flags);
      this.mLayoutParams.width = -2;
      this.mLayoutParams.height = -2;
    }
  }

  public void changeViewSide(int paramInt)
  {
  }

  public WindowManager.LayoutParams getWindowLayoutParams(int paramInt1, int paramInt2)
  {
    this.mLayoutParams.x = paramInt1;
    WindowManager.LayoutParams localLayoutParams1 = this.mLayoutParams;
    localLayoutParams1.x = (-174 + localLayoutParams1.x);
    this.mLayoutParams.y = paramInt2;
    WindowManager.LayoutParams localLayoutParams2 = this.mLayoutParams;
    localLayoutParams2.y = (-120 + localLayoutParams2.y);
    return this.mLayoutParams;
  }

  public void initView()
  {
    intiParams();
    this.mMainLayout.setVisibility(0);
  }

  public void saveLocation(int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistantTipWindow
 * JD-Core Version:    0.6.2
 */