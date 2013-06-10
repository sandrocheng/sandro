package org.antivirus.ui.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import org.antivirus.Strings;
import org.antivirus.ui.BaseListAdapter.BaseListAdapterItem;
import org.antivirus.widget.a.k;

class LanguageSelector$1$1
  implements DialogInterface.OnClickListener
{
  LanguageSelector$1$1(LanguageSelector.1 param1, long paramLong)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BaseListAdapter.BaseListAdapterItem localBaseListAdapterItem = (BaseListAdapter.BaseListAdapterItem)((LanguageSelector.LanguageListAdapter)this.b.a.getListAdapter()).getItem((int)this.a);
    if ((localBaseListAdapterItem != null) && (localBaseListAdapterItem.mTitle != null));
    for (String str = localBaseListAdapterItem.mTitle; ; str = "English")
    {
      Strings.setLanguage(this.b.a, str, null);
      Strings.setLangLocale();
      k localk = k.a(this.b.a);
      localk.b(null);
      localk.c();
      this.b.a.setResult(-1);
      this.b.a.finish();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.settings.LanguageSelector.1.1
 * JD-Core Version:    0.6.2
 */