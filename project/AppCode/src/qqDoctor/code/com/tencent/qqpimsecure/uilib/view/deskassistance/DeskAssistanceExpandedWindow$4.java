package com.tencent.qqpimsecure.uilib.view.deskassistance;

class DeskAssistanceExpandedWindow$4
  implements DeskAssistanceExpandedWindow.settingCallback
{
  DeskAssistanceExpandedWindow$4(DeskAssistanceExpandedWindow paramDeskAssistanceExpandedWindow)
  {
  }

  public void deskAssistanceOnOffCallback(boolean paramBoolean)
  {
    if (paramBoolean)
      DeskAssistanceExpandedWindow.access$900(this.this$0).registerCurrentApp();
  }

  public void settingStyleCallback()
  {
    this.this$0.updateSettingViewStyle();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceExpandedWindow.4
 * JD-Core Version:    0.6.2
 */