package com.avast.android.mobilesecurity.filebrowser;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.avast.android.generic.filebrowser.e;
import com.avast.android.generic.filebrowser.f;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class k extends e
{
  public k(Context paramContext, Bundle paramBundle)
  {
    super(paramContext, paramBundle);
  }

  protected f a(String paramString)
  {
    return h.a(paramString);
  }

  public List x()
  {
    f[] arrayOff;
    List localList;
    if (!TextUtils.isEmpty(f()))
    {
      arrayOff = w().g();
      if ((arrayOff == null) || (arrayOff.length == 0))
        localList = Collections.emptyList();
    }
    while (true)
    {
      return localList;
      localList = Arrays.asList(arrayOff);
      Collections.sort(localList, new l(this));
      continue;
      localList = Collections.emptyList();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.k
 * JD-Core Version:    0.6.2
 */