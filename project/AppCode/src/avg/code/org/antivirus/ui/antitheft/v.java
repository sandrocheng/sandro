package org.antivirus.ui.antitheft;

import android.support.v4.app.Fragment;
import android.support.v4.app.f;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import org.antivirus.Strings;
import org.antivirus.core.telephony.TelephonyInfo;
import org.antivirus.ui.BaseToolFragmentActivity;

public final class v extends Fragment
{
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    if (paramViewGroup == null);
    View localView;
    for (Object localObject = null; ; localObject = localView)
    {
      return localObject;
      localView = paramLayoutInflater.inflate(2130903042, paramViewGroup, false);
      String str1 = TelephonyInfo.getUniqueId(this.t.getApplicationContext(), ((BaseToolFragmentActivity)this.t).getEngineSettings(this.t.getApplicationContext()));
      String str2 = str1.substring(-10 + str1.length(), str1.length());
      ((TextView)localView.findViewById(2131230751)).setText(Strings.getString(2131296628).replace("[password]", str2));
      ((TextView)localView.findViewById(2131230753)).setText(Strings.getString(2131296630).replace("[password]", str2));
      ((TextView)localView.findViewById(2131230755)).setText(Strings.getString(2131296632).replace("[password]", str2));
      ((TextView)localView.findViewById(2131230757)).setText(Strings.getString(2131296634).replace("[password]", str2));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.v
 * JD-Core Version:    0.6.2
 */