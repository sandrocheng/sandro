package org.antivirus.ui.settings;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import org.antivirus.ui.BaseListAdapter;
import org.antivirus.ui.BaseListAdapter.BaseListAdapterItem;
import org.antivirus.ui.BaseListAdapter.ViewHolder;

public class LanguageSelector$LanguageListAdapter extends BaseListAdapter
{
  public LanguageSelector$LanguageListAdapter(LanguageSelector paramLanguageSelector, Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayList);
  }

  protected final void updateItemView(int paramInt, BaseListAdapter.BaseListAdapterItem paramBaseListAdapterItem, BaseListAdapter.ViewHolder paramViewHolder)
  {
    super.updateItemView(paramInt, paramBaseListAdapterItem, paramViewHolder);
    paramViewHolder.mSummary.setVisibility(8);
    paramViewHolder.mIcon.setPadding(10, 0, 0, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.settings.LanguageSelector.LanguageListAdapter
 * JD-Core Version:    0.6.2
 */