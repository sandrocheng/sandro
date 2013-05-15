package com.avast.android.mobilesecurity.app.webshield;

import java.io.File;
import java.util.Set;

class j
  implements Runnable
{
  j(WebshieldService paramWebshieldService)
  {
  }

  public void run()
  {
    WebshieldService.a.add("file://" + this.a.getFilesDir() + "/" + "fwd.html");
    WebshieldService.a.add("file://" + this.a.getFilesDir() + "/" + "block.html");
    n.a(true, this.a.getFilesDir());
    if ((!new File(this.a.getFilesDir() + "/" + "fwd.html").exists()) && (!WebshieldService.a(this.a)))
      n.a(false, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.j
 * JD-Core Version:    0.6.2
 */