package com.keniu.security.commumgr.a;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import com.jxphone.mosecurity.c.c;
import com.keniu.security.importx.ImportfCalllogActivity;
import com.keniu.security.importx.ImportfSmsActivity;
import com.keniu.security.util.ap;
import com.keniu.security.util.k;

final class g
  implements DialogInterface.OnClickListener
{
  g(Activity paramActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("isDummy", false);
    localBundle.putSerializable("list_type", c.g);
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      Intent localIntent2 = new Intent(this.a, ImportfCalllogActivity.class);
      localIntent2.putExtras(localBundle);
      this.a.startActivity(localIntent2);
      continue;
      Intent localIntent1 = new Intent(this.a, ImportfSmsActivity.class);
      localIntent1.putExtras(localBundle);
      this.a.startActivity(localIntent1);
      continue;
      View localView = LayoutInflater.from(this.a).inflate(2130903127, null);
      h localh = new h(this, localView);
      ap localap = k.a(this.a, 2131428471, 2131427886, 2131427866, localh);
      localap.a(localView);
      localap.show();
      localap.c().setOnClickListener(new j(this, localView, localh, localap));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.a.g
 * JD-Core Version:    0.6.2
 */