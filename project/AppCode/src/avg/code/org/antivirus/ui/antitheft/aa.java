package org.antivirus.ui.antitheft;

import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.AVService;
import org.antivirus.ganalytics.a;

final class aa
  implements View.OnClickListener
{
  aa(StopShoutActivity paramStopShoutActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (StopShoutActivity.a(this.a) != null)
    {
      StopShoutActivity.a(this.a).removeCallbacks(StopShoutActivity.b(this.a));
      StopShoutActivity.c(this.a);
      Intent localIntent = new Intent(this.a.getApplicationContext(), AVService.class);
      localIntent.putExtra("stopshout", "11");
      localIntent.putExtra("__SAC", 100);
      this.a.startService(localIntent);
      this.a.finish();
      a.a(this.a, "anti_theft", "stop_shout", null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.aa
 * JD-Core Version:    0.6.2
 */