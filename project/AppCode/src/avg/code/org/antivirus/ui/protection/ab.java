package org.antivirus.ui.protection;

import android.content.Context;
import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.EngineSettings;
import org.antivirus.ui.BaseListAdapter;
import org.antivirus.ui.BaseListAdapter.BaseListAdapterItem;
import org.antivirus.ui.BaseListAdapter.ViewHolder;

public final class ab extends BaseListAdapter
{
  public ab(ProtectionActivity paramProtectionActivity, Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayList);
  }

  protected final void updateItemView(int paramInt, BaseListAdapter.BaseListAdapterItem paramBaseListAdapterItem, BaseListAdapter.ViewHolder paramViewHolder)
  {
    int i = 2130837624;
    paramViewHolder.mSummary.setTextColor(this.a.getResources().getColor(2131165243));
    super.updateItemView(paramInt, paramBaseListAdapterItem, paramViewHolder);
    switch (paramInt)
    {
    case 1:
    case 2:
    case 3:
    default:
    case 0:
      while (true)
      {
        return;
        EngineSettings localEngineSettings = new EngineSettings(this.a.getApplicationContext());
        paramViewHolder.mSummary.setText(Strings.getString(2131296263) + " 3.0.3 - " + localEngineSettings.getSecDbVersion());
      }
    case 6:
      if (ProtectionActivity.f(this.a, this.a.getApplicationContext()).isAutoScanSMS())
        paramViewHolder.mCheck.setImageResource(i);
      while (true)
      {
        paramViewHolder.mCheck.setClickable(false);
        break;
        paramViewHolder.mCheck.setImageResource(2130837618);
      }
    case 5:
      if (ProtectionActivity.g(this.a, this.a.getApplicationContext()).isSDScanEnabled())
        paramViewHolder.mCheck.setImageResource(i);
      while (true)
      {
        paramViewHolder.mCheck.setClickable(false);
        break;
        paramViewHolder.mCheck.setImageResource(2130837618);
      }
    case 4:
      if (AVSettings.isUrlAntiPhishingEnabled())
        paramViewHolder.mCheck.setImageResource(i);
      while (true)
      {
        paramViewHolder.mCheck.setClickable(false);
        break;
        paramViewHolder.mCheck.setImageResource(2130837618);
      }
    case 7:
    }
    if (ProtectionActivity.h(this.a, this.a.getApplicationContext()).isPUPEnabled());
    while (true)
    {
      paramViewHolder.mCheck.setImageResource(i);
      paramViewHolder.mCheck.setClickable(false);
      break;
      i = 2130837618;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.ab
 * JD-Core Version:    0.6.2
 */