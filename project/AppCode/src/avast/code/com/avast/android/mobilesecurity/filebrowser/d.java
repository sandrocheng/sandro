package com.avast.android.mobilesecurity.filebrowser;

import android.os.Handler;
import com.avast.android.generic.filebrowser.g;
import java.util.List;
import java.util.Map;

class d
  implements g
{
  d(a parama, String paramString)
  {
  }

  public void a(long paramLong)
  {
    List localList = (List)a.a(this.b).get(this.a);
    if (localList != null)
      a.b(this.b).post(new e(this, localList, paramLong));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.d
 * JD-Core Version:    0.6.2
 */