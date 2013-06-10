package org.antivirus.core.scanners;

import android.os.Bundle;
import java.util.ArrayList;

final class b
  implements i
{
  b(a parama, i parami)
  {
  }

  public final void onScanDone(g paramg, c paramc)
  {
    this.b.e[paramc.ordinal()] = this.b.d[paramc.ordinal()].a;
    this.b.d[paramc.ordinal()] = null;
    if ((paramg.c != null) && (paramg.c.c != null) && (paramg.c.c.size() > 0))
    {
      Bundle localBundle2 = new Bundle();
      localBundle2.putStringArrayList("basenames", paramg.c.c);
      localBundle2.putSerializable("detection_info", paramg.c.e);
      this.b.a(localBundle2);
    }
    if ((paramg.f != null) && (paramg.f.c != null) && (paramg.f.c.size() > 0))
    {
      Bundle localBundle1 = new Bundle();
      localBundle1.putStringArrayList("basenames", paramg.f.c);
      localBundle1.putSerializable("detection_info", paramg.f.e);
      this.b.a(localBundle1);
    }
    if (c.a.equals(paramc))
      paramg.b(this.b.a);
    this.a.onScanDone(paramg, paramc);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.b
 * JD-Core Version:    0.6.2
 */