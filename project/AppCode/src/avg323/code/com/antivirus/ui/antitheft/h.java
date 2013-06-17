package com.antivirus.ui.antitheft;

import android.content.Context;
import android.widget.ImageView;
import android.widget.TextView;
import com.antivirus.antitheft.w;
import com.antivirus.m;
import com.avg.ui.general.b.d;
import java.util.ArrayList;

public class h extends com.avg.ui.general.b.b
{
  public h(b paramb, Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayList);
  }

  private void a(com.avg.ui.general.b.c paramc, d paramd)
  {
    if (!w.b(b.c(this.a), b.d(this.a)))
    {
      paramd.c.setText(m.a(b.e(this.a), 2131296578));
      paramd.c.setTextColor(-6710887);
      paramd.b.setTextColor(-6710887);
    }
    while (true)
    {
      return;
      paramd.c.setText(m.a(b.f(this.a), 2131296578));
      if (com.antivirus.c.d())
      {
        paramd.d.setImageResource(2130837648);
        paramd.d.setClickable(false);
      }
      else
      {
        paramd.d.setImageResource(2130837642);
        paramd.d.setClickable(false);
      }
    }
  }

  protected void a(int paramInt, com.avg.ui.general.b.c paramc, d paramd)
  {
    super.a(paramInt, paramc, paramd);
    switch (paramInt)
    {
    default:
    case -1:
    }
    while (true)
    {
      return;
      a(paramc, paramd);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.h
 * JD-Core Version:    0.6.2
 */