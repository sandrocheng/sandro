package org.antivirus.ui.privacy;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import org.antivirus.AVService;
import org.antivirus.Strings;
import org.antivirus.core.a.n;

final class c
  implements View.OnClickListener
{
  c(PrivacyActivity paramPrivacyActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (!n.a(this.a.getApplicationContext()))
      Toast.makeText(this.a, Strings.getString(2131296468), 1).show();
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.a, AVService.class);
      localIntent.putExtra("__SAC", 119);
      this.a.startService(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.c
 * JD-Core Version:    0.6.2
 */