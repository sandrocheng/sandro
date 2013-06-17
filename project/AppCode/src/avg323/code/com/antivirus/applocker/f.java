package com.antivirus.applocker;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avg.toolkit.e.a;
import com.avg.toolkit.e.c;
import java.util.List;

public class f
  implements com.avg.toolkit.e
{
  Context a;

  public f(Context paramContext)
  {
    this.a = paramContext;
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(a parama)
  {
    if (parama.d != c.c)
    {
      Intent localIntent = new Intent(this.a, AppBlockService.class);
      localIntent.putExtra("__SAC", 222);
      this.a.startService(localIntent);
    }
  }

  public void a(List paramList)
  {
    paramList.add(e.class);
  }

  public void a(boolean paramBoolean)
  {
    Intent localIntent = new Intent(this.a, AppBlockService.class);
    this.a.startService(localIntent);
  }

  public int b()
  {
    return 13000;
  }

  public void b(Bundle paramBundle)
  {
  }

  public void b(a parama)
  {
  }

  public void onDestroy()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.f
 * JD-Core Version:    0.6.2
 */