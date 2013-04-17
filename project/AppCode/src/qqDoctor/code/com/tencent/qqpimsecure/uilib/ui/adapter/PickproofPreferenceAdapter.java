package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import java.util.List;

public class PickproofPreferenceAdapter extends BasePreferenceAdapter
{
  public PickproofPreferenceAdapter(Context paramContext, List<PreferenceAdapterModel> paramList, ListPreferenceView.OnListPreferenceChangeListener paramOnListPreferenceChangeListener)
  {
    super(paramContext, paramList, paramOnListPreferenceChangeListener);
  }

  public int getItemViewType(int paramInt)
  {
    PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.dataList.get(paramInt);
    int i;
    if (localPreferenceAdapterModel.getPreferenceViewType() == 5)
      i = 0;
    while (true)
    {
      return i;
      if (localPreferenceAdapterModel.getPreferenceViewType() == 2)
        i = 1;
      else if (localPreferenceAdapterModel.getPreferenceViewType() == 3)
        i = 2;
      else
        i = 0;
    }
  }

  public int getViewTypeCount()
  {
    return 3;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.PickproofPreferenceAdapter
 * JD-Core Version:    0.6.2
 */