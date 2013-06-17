package com.antivirus.ui.main;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.a.e;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.antivirus.m;
import com.avg.toolkit.f.a;
import java.lang.ref.WeakReference;

class o extends Handler
{
  Intent a = new Intent("SCAN_STATUS_BROADCAST");
  private final WeakReference b;

  public o(c paramc)
  {
    this.b = new WeakReference(paramc);
  }

  public void handleMessage(Message paramMessage)
  {
    c localc = (c)this.b.get();
    if (localc == null);
    while (true)
    {
      return;
      if (c.a(localc))
        switch (paramMessage.what)
        {
        default:
          a.a();
          break;
        case 1:
          try
          {
            int k = ((Integer)paramMessage.obj).intValue();
            i = k;
            switch (i)
            {
            default:
              j = 2131296828;
              String str = m.a(c.d(localc), j);
              localc.c.setVisibility(0);
              localc.c.setText(str);
            case -2:
            case 1:
            case 2:
            case 4:
            case 8:
            case 16:
            case -3:
            }
          }
          catch (Exception localException)
          {
            int i;
            while (true)
            {
              a.a(localException);
              i = 0;
              continue;
              int j = 2131296826;
              continue;
              j = 2131296591;
              continue;
              j = 2131296592;
              continue;
              j = 2131296592;
              continue;
              j = 2131296592;
              continue;
              j = 2131296593;
            }
            this.a.putExtra("SCAN_STATUS_BROADCAST_EXTRA", i);
            e.a(c.b((c)this.b.get())).a(this.a);
            c.c(localc);
          }
          break;
        case 2:
          c.b(paramMessage.getData().getInt("percent"));
          if (c.e(localc) != null)
          {
            if ((8 == c.e(localc).getVisibility()) && (c.a(localc)))
              c.e(localc).setVisibility(0);
            c.e(localc).setProgress(c.L());
          }
          break;
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.o
 * JD-Core Version:    0.6.2
 */