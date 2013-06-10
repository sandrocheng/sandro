package org.antivirus.ui.antitheft;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.antitheft.u;
import org.antivirus.core.Logger;
import org.antivirus.ui.BaseListAdapter;
import org.antivirus.ui.BaseListAdapter.BaseListAdapterItem;
import org.antivirus.ui.BaseListAdapter.ViewHolder;

public final class k extends BaseListAdapter
{
  public k(AntiTheftActivity paramAntiTheftActivity, Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayList);
  }

  protected final void updateItemView(int paramInt, BaseListAdapter.BaseListAdapterItem paramBaseListAdapterItem, BaseListAdapter.ViewHolder paramViewHolder)
  {
    super.updateItemView(paramInt, paramBaseListAdapterItem, paramViewHolder);
    switch (paramInt)
    {
    default:
      Logger.errorBadAgrument();
    case 1:
    }
    while (true)
    {
      return;
      if (!u.b(this.a, AntiTheftActivity.a(this.a, this.a.getApplicationContext())))
      {
        paramViewHolder.mSummary.setText(Strings.getString(2131296376));
        paramViewHolder.mSummary.setTextColor(-6710887);
        paramViewHolder.mTitle.setTextColor(-6710887);
      }
      else
      {
        paramViewHolder.mSummary.setText(Strings.getString(2131296376));
        if (AVSettings.shouldSendLocation())
        {
          paramViewHolder.mCheck.setImageResource(2130837624);
          paramViewHolder.mCheck.setClickable(false);
        }
        else
        {
          paramViewHolder.mCheck.setImageResource(2130837618);
          paramViewHolder.mCheck.setClickable(false);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.k
 * JD-Core Version:    0.6.2
 */