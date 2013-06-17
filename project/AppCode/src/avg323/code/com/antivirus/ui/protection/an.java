package com.antivirus.ui.protection;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.antivirus.m;
import com.avg.toolkit.f.a;
import java.lang.ref.WeakReference;

class an extends Handler
{
  private final WeakReference a;

  public an(aj paramaj)
  {
    this.a = new WeakReference(paramaj);
  }

  public void handleMessage(Message paramMessage)
  {
    aj localaj = (aj)this.a.get();
    if (localaj == null);
    while (true)
    {
      return;
      if (aj.a(localaj))
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
              j = 2131296322;
              aj.a(localaj, m.a(aj.c(localaj), j));
              localaj.a.setText(aj.d(localaj));
              localaj.a.setVisibility(0);
              aj.e(localaj).setVisibility(0);
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
            while (true)
            {
              a.a(localException);
              int i = 0;
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
            aj.b(localaj);
          }
          break;
        case 2:
          aj.b(paramMessage.getData().getInt("percent"));
          if (localaj.d != null)
          {
            if ((4 == localaj.d.getVisibility()) && (aj.a(localaj)))
              localaj.d.setVisibility(0);
            localaj.d.setProgress(aj.F());
          }
          break;
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.an
 * JD-Core Version:    0.6.2
 */