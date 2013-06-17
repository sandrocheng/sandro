package com.antivirus.core.d.a;

import android.content.Context;
import android.os.Message;
import com.avg.toolkit.b.f;
import java.util.List;

public class a extends f
{
  public a(Context paramContext, com.avg.toolkit.e.a parama, com.avg.toolkit.UID.a parama1)
  {
    super(paramContext, parama, parama1);
  }

  public void a(com.avg.toolkit.e.a parama)
  {
    if (parama != null)
      c(parama);
    try
    {
      Message localMessage = Message.obtain();
      localMessage.what = 2008;
      localMessage.setTarget(this.b);
      this.b.sendMessage(localMessage);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      Message localMessage = Message.obtain();
      localMessage.what = 2008;
      localMessage.setTarget(this.b);
      this.b.sendMessage(localMessage);
      super.a(paramBoolean);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void b(List paramList)
  {
    paramList.add(0, e.class);
    super.b(paramList);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.d.a.a
 * JD-Core Version:    0.6.2
 */