package org.antivirus.ui.privacy;

import android.app.Dialog;
import android.content.Context;
import android.widget.Button;
import android.widget.TextView;

public final class g
{
  public static Dialog a(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean)
  {
    Dialog localDialog = new Dialog(paramContext);
    localDialog.requestWindowFeature(3);
    localDialog.setContentView(2130903047);
    localDialog.setTitle(paramString1);
    localDialog.setFeatureDrawableResource(3, paramInt);
    ((TextView)localDialog.findViewById(2131230792)).setText(paramString2);
    ((TextView)localDialog.findViewById(2131230793)).setText(paramString3);
    Button localButton1 = (Button)localDialog.findViewById(2131230794);
    localButton1.setText(2131296349);
    localButton1.setOnClickListener(new h(localDialog));
    Button localButton2 = (Button)localDialog.findViewById(2131230795);
    localButton2.setText(2131296350);
    localButton2.setOnClickListener(new i(localDialog, paramContext));
    localDialog.setOnDismissListener(new j(paramBoolean, paramContext));
    localDialog.show();
    return localDialog;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.g
 * JD-Core Version:    0.6.2
 */