package org.antivirus.ui.antitheft;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import org.antivirus.Strings;
import org.antivirus.core.a.n;
import org.antivirus.ganalytics.a;
import org.antivirus.tools.MailUtils;

final class x
  implements View.OnClickListener
{
  x(w paramw, EditText paramEditText)
  {
  }

  public final void onClick(View paramView)
  {
    w.a(this.b, this.a.getText().toString());
    if (!n.a(this.b.c()))
      w.a(this.b, Strings.getString(2131296639), Strings.getString(2131296467));
    while (true)
    {
      return;
      if (MailUtils.isValidMailAddress(w.a(this.b), true))
      {
        Intent localIntent = new Intent(this.b.c(), AntiTheftActivity.class);
        localIntent.putExtra("register", w.a(this.b));
        this.b.a(localIntent);
        a.a(this.b.c(), "anti_theft", "register_first", null);
      }
      else
      {
        w.a(this.b, Strings.getString(2131296269), Strings.getString(2131296261));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.x
 * JD-Core Version:    0.6.2
 */