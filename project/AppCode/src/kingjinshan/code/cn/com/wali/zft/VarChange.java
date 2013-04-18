package cn.com.wali.zft;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class VarChange extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("pkg");
    if (!paramContext.getApplicationContext().getPackageName().equals(str1))
    {
      String str2 = paramIntent.getStringExtra("key");
      String str3 = paramIntent.getStringExtra("value");
      Intent localIntent = new Intent(paramContext.getApplicationContext().getPackageName() + ".zft.plugin.varchange");
      localIntent.putExtra("var", str2);
      localIntent.putExtra("value", str3);
      paramContext.getApplicationContext().sendBroadcast(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cn.com.wali.zft.VarChange
 * JD-Core Version:    0.6.2
 */