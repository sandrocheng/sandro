package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import ho;
import ho.a;
import nd;

public class ExpandedSettingWindow extends LinearLayout
  implements View.OnClickListener
{
  private boolean isDeskFlowWindowOpen;
  private DeskAssistanceExpandedWindow.settingCallback mCallback;
  private ho mConfigDao;
  private Context mContext;
  private CheckBoxView mDeskFlowCheckBox;
  private View mMainView;
  private CheckBoxView mRocketSoundCheckBox;
  private ImageButton mSetMinWindowPercentStyleImageButton;
  private ImageButton mSetMinWindowRocketStyleImageButton;

  public ExpandedSettingWindow(Context paramContext, DeskAssistanceExpandedWindow.settingCallback paramsettingCallback)
  {
    super(paramContext);
    this.mCallback = paramsettingCallback;
    this.mMainView = LayoutInflater.from(paramContext).inflate(2130903132, null);
    this.mConfigDao = ho.a();
    this.isDeskFlowWindowOpen = this.mConfigDao.cv();
    this.mDeskFlowCheckBox = ((CheckBoxView)this.mMainView.findViewById(2131230961));
    this.mDeskFlowCheckBox.setChecked(this.isDeskFlowWindowOpen);
    this.mDeskFlowCheckBox.setClickListener(this);
    this.mRocketSoundCheckBox = ((CheckBoxView)this.mMainView.findViewById(2131230964));
    this.mRocketSoundCheckBox.setChecked(this.mConfigDao.cw());
    this.mRocketSoundCheckBox.setClickListener(this);
    this.mSetMinWindowPercentStyleImageButton = ((ImageButton)this.mMainView.findViewById(2131230966));
    this.mSetMinWindowPercentStyleImageButton.setOnClickListener(this);
    this.mSetMinWindowRocketStyleImageButton = ((ImageButton)this.mMainView.findViewById(2131230967));
    this.mSetMinWindowRocketStyleImageButton.setOnClickListener(this);
    ho.a locala = this.mConfigDao.dA();
    if (locala == ho.a.a)
      setShowRamUsage();
    while (true)
    {
      this.mContext = paramContext;
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      addView(this.mMainView, localLayoutParams);
      return;
      if (locala == ho.a.b)
        setShowRocket();
    }
  }

  private void setShowRamUsage()
  {
    this.mSetMinWindowPercentStyleImageButton.setImageResource(2130837667);
    this.mSetMinWindowRocketStyleImageButton.setImageResource(2130837668);
  }

  private void setShowRocket()
  {
    this.mSetMinWindowPercentStyleImageButton.setImageResource(2130837666);
    this.mSetMinWindowRocketStyleImageButton.setImageResource(2130837669);
  }

  public void onClick(View paramView)
  {
    boolean bool1 = true;
    nd localnd = nd.a();
    if (paramView == this.mDeskFlowCheckBox)
      if (this.isDeskFlowWindowOpen)
      {
        this.isDeskFlowWindowOpen = false;
        this.mConfigDao.I(this.isDeskFlowWindowOpen);
        localnd.a(26268);
        this.mCallback.deskAssistanceOnOffCallback(this.isDeskFlowWindowOpen);
      }
    label220: 
    do
      while (true)
      {
        return;
        this.isDeskFlowWindowOpen = bool1;
        break;
        if (paramView == this.mSetMinWindowRocketStyleImageButton)
        {
          if (this.mConfigDao.dA() != ho.a.b)
          {
            this.mSetMinWindowPercentStyleImageButton.setImageResource(2130837666);
            this.mSetMinWindowRocketStyleImageButton.setImageResource(2130837669);
            this.mConfigDao.a(ho.a.b);
            localnd.a(26270);
            this.mCallback.settingStyleCallback();
            nd.a().a(26406);
          }
        }
        else
        {
          if (paramView != this.mSetMinWindowPercentStyleImageButton)
            break label220;
          if (this.mConfigDao.dA() != ho.a.a)
          {
            this.mSetMinWindowPercentStyleImageButton.setImageResource(2130837667);
            this.mSetMinWindowRocketStyleImageButton.setImageResource(2130837668);
            this.mConfigDao.a(ho.a.a);
            localnd.a(26269);
            this.mCallback.settingStyleCallback();
            nd.a().a(26406);
          }
        }
      }
    while (paramView != this.mRocketSoundCheckBox);
    boolean bool2 = this.mConfigDao.cw();
    ho localho = this.mConfigDao;
    if (!bool2);
    while (true)
    {
      localho.J(bool1);
      break;
      bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedSettingWindow
 * JD-Core Version:    0.6.2
 */