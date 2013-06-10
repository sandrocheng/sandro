package org.antivirus.wipe;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.widget.Button;
import android.widget.EditText;
import org.antivirus.Strings;

final class af
  implements Runnable
{
  af(ae paramae, boolean paramBoolean)
  {
  }

  public final void run()
  {
    this.b.a.cancel();
    if (this.a)
    {
      AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this.b.b);
      localBuilder1.setTitle(Strings.getString(2131296528));
      localBuilder1.setIcon(2130837585);
      localBuilder1.setMessage(Strings.getString(2131296527));
      localBuilder1.setPositiveButton(Strings.getString(2131296259), new ag(this));
      if (WipeSd.e(this.b.b))
      {
        WipeSd.a(this.b.b, localBuilder1.create());
        WipeSd.a(this.b.b).setCanceledOnTouchOutside(false);
        WipeSd.a(this.b.b).show();
      }
    }
    while (true)
    {
      WipeSd.b(this.b.b).setText("");
      if (WipeSd.c(this.b.b) != null)
        WipeSd.c(this.b.b).setEnabled(true);
      return;
      AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this.b.b);
      localBuilder2.setTitle(Strings.getString(2131296423));
      localBuilder2.setIcon(2130837585);
      localBuilder2.setMessage(Strings.getString(2131296424));
      localBuilder2.setPositiveButton(Strings.getString(2131296259), new ah(this));
      WipeSd.a(this.b.b, localBuilder2.create());
      WipeSd.a(this.b.b).setCanceledOnTouchOutside(false);
      WipeSd.a(this.b.b).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.af
 * JD-Core Version:    0.6.2
 */