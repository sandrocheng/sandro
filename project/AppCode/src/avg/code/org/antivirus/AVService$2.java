package org.antivirus;

import org.antivirus.core.scanners.c;
import org.antivirus.core.scanners.g;
import org.antivirus.core.scanners.i;

class AVService$2
  implements i
{
  AVService$2(AVService paramAVService)
  {
  }

  public void onScanDone(g paramg, c paramc)
  {
    int i = 2131296399;
    if (paramg.a())
      i = 2131296400;
    AVService.a(this.a, i);
    AVService.a(this.a, paramg, paramc);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.AVService.2
 * JD-Core Version:    0.6.2
 */