package org.antivirus.ui.settings;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import org.antivirus.Strings;

class LanguageSelector$1
  implements AdapterView.OnItemClickListener
{
  LanguageSelector$1(LanguageSelector paramLanguageSelector)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setTitle(Strings.getString(2131296293));
    localBuilder.setIcon(2130837728);
    localBuilder.setMessage(Strings.getString(2131296661));
    localBuilder.setPositiveButton(Strings.getString(2131296559), new LanguageSelector.1.1(this, paramLong));
    localBuilder.setNegativeButton(Strings.getString(2131296560), new LanguageSelector.1.2(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.settings.LanguageSelector.1
 * JD-Core Version:    0.6.2
 */