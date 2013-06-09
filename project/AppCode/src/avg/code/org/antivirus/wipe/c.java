package org.antivirus.wipe;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import org.antivirus.Strings;
import org.antivirus.ui.CustomListAdaptor;
import org.antivirus.ui.CustomListAdaptor.ViewHolder;

final class c extends CustomListAdaptor
{
  public c(BetterLocalWipe paramBetterLocalWipe, Context paramContext)
  {
    super(paramContext);
  }

  protected final void a(int paramInt, CustomListAdaptor.ViewHolder paramViewHolder)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      return;
      paramViewHolder.title.setText(Strings.getString(2131296410));
      paramViewHolder.summary.setText(Strings.getString(2131296411));
      paramViewHolder.icon.setImageResource(2130837876);
      continue;
      paramViewHolder.title.setText(Strings.getString(2131296414));
      paramViewHolder.summary.setText(Strings.getString(2131296415));
      paramViewHolder.icon.setImageResource(2130837867);
      continue;
      paramViewHolder.title.setText(Strings.getString(2131296412));
      paramViewHolder.summary.setText(Strings.getString(2131296413));
      paramViewHolder.icon.setImageResource(2130837875);
    }
  }

  public final int getCount()
  {
    return 3;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.c
 * JD-Core Version:    0.6.2
 */