package org.antivirus.ui.main;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import org.antivirus.Strings;
import org.antivirus.core.Logger;

final class m extends Handler
{
  private final WeakReference a;

  public m(AntivirusMainScreen paramAntivirusMainScreen)
  {
    this.a = new WeakReference(paramAntivirusMainScreen);
  }

  public final void handleMessage(Message paramMessage)
  {
    AntivirusMainScreen localAntivirusMainScreen = (AntivirusMainScreen)this.a.get();
    if (localAntivirusMainScreen == null);
    while (true)
    {
      return;
      if (AntivirusMainScreen.a(localAntivirusMainScreen))
        switch (paramMessage.what)
        {
        default:
          Logger.errorBadAgrument();
          break;
        case 1:
          try
          {
            int k = ((Integer)paramMessage.obj).intValue();
            i = k;
            switch (i)
            {
            default:
              j = 2131296287;
              String str = Strings.getString(j);
              localAntivirusMainScreen.f.setVisibility(0);
              localAntivirusMainScreen.f.setText(str);
            case -2:
            case 1:
            case 2:
            case 4:
            case 8:
            case 16:
            case -1:
            }
          }
          catch (Exception localException)
          {
            while (true)
            {
              Logger.log(localException);
              int i = 0;
              continue;
              int j = 2131296731;
              continue;
              j = 2131296396;
              continue;
              j = 2131296397;
              continue;
              j = 2131296397;
              continue;
              j = 2131296397;
              continue;
              j = 2131296398;
            }
            AntivirusMainScreen.b(localAntivirusMainScreen);
          }
          break;
        case 2:
          AntivirusMainScreen.b(paramMessage.getData().getInt("percent"));
          if (AntivirusMainScreen.c(localAntivirusMainScreen) != null)
          {
            if ((8 == AntivirusMainScreen.c(localAntivirusMainScreen).getVisibility()) && (AntivirusMainScreen.a(localAntivirusMainScreen)))
              AntivirusMainScreen.c(localAntivirusMainScreen).setVisibility(0);
            AntivirusMainScreen.c(localAntivirusMainScreen).setProgress(AntivirusMainScreen.c());
          }
          break;
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.m
 * JD-Core Version:    0.6.2
 */