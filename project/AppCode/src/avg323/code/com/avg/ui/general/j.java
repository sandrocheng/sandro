package com.avg.ui.general;

import android.app.Dialog;
import android.content.Context;
import android.widget.Button;
import android.widget.TextView;
import com.avg.toolkit.e.a;

public class j
{
  public static Dialog a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean)
  {
    Dialog localDialog = new Dialog(paramContext);
    localDialog.requestWindowFeature(3);
    localDialog.setContentView(e.app_locker_expire_dialog);
    localDialog.setTitle(paramString1);
    localDialog.setFeatureDrawableResource(3, paramInt);
    ((TextView)localDialog.findViewById(d.subTitle)).setText(paramString2);
    ((TextView)localDialog.findViewById(d.body)).setText(paramString3);
    Button localButton1 = (Button)localDialog.findViewById(d.buttonNo);
    localButton1.setText(paramContext.getString(g.app_locker_expired_button_no));
    localButton1.setOnClickListener(new k(paramContext, localDialog));
    String str1 = paramContext.getString(g.main_menu_subscribe);
    if (com.avg.toolkit.e.e.a().b());
    for (String str2 = paramContext.getString(g.privacy_upgrade); ; str2 = str1)
    {
      Button localButton2 = (Button)localDialog.findViewById(d.buttonUpgrade);
      localButton2.setText(str2);
      localButton2.setOnClickListener(new l(paramContext, localDialog));
      localDialog.setOnDismissListener(new m(paramBoolean, paramContext));
      localDialog.show();
      return localDialog;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.j
 * JD-Core Version:    0.6.2
 */