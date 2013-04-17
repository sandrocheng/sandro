package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import java.util.List;

public class SysSettingPreferenceAdapter extends BasePreferenceAdapter
{
  private boolean isHTC;
  private boolean isListGone;

  public SysSettingPreferenceAdapter(Context paramContext, List<PreferenceAdapterModel> paramList, ListPreferenceView.OnListPreferenceChangeListener paramOnListPreferenceChangeListener, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramList, paramOnListPreferenceChangeListener);
    this.isListGone = paramBoolean1;
    this.isHTC = paramBoolean2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.SysSettingPreferenceAdapter
 * JD-Core Version:    0.6.2
 */