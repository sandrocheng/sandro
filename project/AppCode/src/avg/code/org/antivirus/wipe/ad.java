package org.antivirus.wipe;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import org.antivirus.Strings;
import org.antivirus.ganalytics.a;

final class ad
  implements View.OnClickListener
{
  ad(WipeSd paramWipeSd)
  {
  }

  public final void onClick(View paramView)
  {
    if (WipeSd.b(this.a).getText().toString().equals("1234"))
    {
      if (WipeSd.c(this.a) != null)
        WipeSd.c(this.a).setEnabled(false);
      WipeSd.d(this.a);
      a.a(this.a, "wipe_sd", "ok", "success");
    }
    while (true)
    {
      return;
      Toast.makeText(this.a, Strings.getString(2131296422), 1).show();
      WipeSd.b(this.a).setText("");
      a.a(this.a, "wipe_sd", "ok", "failure");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.ad
 * JD-Core Version:    0.6.2
 */