package org.antivirus.ui.privacy;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import org.antivirus.AVService;
import org.antivirus.Strings;
import org.antivirus.core.a.n;

final class i
  implements View.OnClickListener
{
  i(Dialog paramDialog, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    if (!n.a(this.b))
      Toast.makeText(this.b, Strings.getString(2131296468), 1).show();
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.b, AVService.class);
      localIntent.putExtra("__SAC", 119);
      this.b.startService(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.i
 * JD-Core Version:    0.6.2
 */