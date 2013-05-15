package com.avast.android.mobilesecurity.app.locking;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.generic.util.s;
import com.avast.android.mobilesecurity.app.locking.core.App;

public class BlockAvastPasswordActivity extends BlockCommonActivity
{
  private Handler.Callback g;

  public static void call(Context paramContext, App paramApp)
  {
    Intent localIntent = new Intent(paramContext, BlockAvastPasswordActivity.class);
    localIntent.putExtra("app", paramApp);
    localIntent.setFlags(1342177280);
    paramContext.startActivity(localIntent);
  }

  protected void a()
  {
    this.g = PasswordDialog.a(this, 2131165227, new a(this, (s)ad.a(this, s.class)));
    PasswordDialog.a(getSupportFragmentManager(), 2131165227);
  }

  public void b()
  {
    this.b.postDelayed(new b(this), 500L);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.BlockAvastPasswordActivity
 * JD-Core Version:    0.6.2
 */