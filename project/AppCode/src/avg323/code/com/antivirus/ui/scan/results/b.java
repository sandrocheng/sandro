package com.antivirus.ui.scan.results;

import android.content.Context;
import com.antivirus.m;
import java.util.ArrayList;

public class b extends k
{
  ArrayList a = null;
  private c b;
  private String c = null;

  public b(Context paramContext, String paramString)
  {
    super(paramString);
    a(new l(this, m.a(paramContext, 2131296493), 2131296493));
  }

  public b(Context paramContext, String paramString1, c paramc, String paramString2, ArrayList paramArrayList)
  {
    super(paramString1);
    a(new l(this, m.a(paramContext, 2131296493), 2131296493));
    this.b = paramc;
    this.c = paramString2;
    this.a = paramArrayList;
  }

  public String a()
  {
    return this.c;
  }

  public c b()
  {
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.results.b
 * JD-Core Version:    0.6.2
 */