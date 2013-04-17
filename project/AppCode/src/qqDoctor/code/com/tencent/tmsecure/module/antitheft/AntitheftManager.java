package com.tencent.tmsecure.module.antitheft;

import android.content.Context;
import btl;
import btp;
import btt;
import com.tencent.tccdb.TccCryptor;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.Base64;

public final class AntitheftManager extends BaseManager
{
  private btp a;

  public final String encryptPassword(String paramString)
  {
    String str;
    if (isExpired())
      str = "";
    while (true)
    {
      return str;
      str = null;
      if (paramString != null)
        str = Base64.encodeToString(TccCryptor.encrypt(TMSApplication.getApplicaionContext(), paramString.getBytes(), null), 0);
    }
  }

  public final String getBindQQNum()
  {
    if (isExpired());
    for (String str = ""; ; str = this.a.a().a.a("qq_num", ""))
      return str;
  }

  public final String getHelperNumber()
  {
    if (isExpired());
    for (String str = ""; ; str = this.a.a().a.a("helper", null))
      return str;
  }

  public final String getPassword()
  {
    if (isExpired());
    for (String str = ""; ; str = this.a.a().a(false))
      return str;
  }

  public final boolean handleSmsCommand(IAntitheftTips paramIAntitheftTips, String paramString1, String paramString2)
  {
    if (isExpired());
    for (boolean bool = false; ; bool = this.a.a(paramIAntitheftTips, paramString1, paramString2))
      return bool;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new btp();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final void reportSIMChangeToServer()
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.b();
    }
  }

  public final void setBindQQNum(String paramString)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a().a.a("qq_num", paramString, true);
    }
  }

  public final void setHelperNumber(String paramString)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a().a.a("helper", paramString, true);
    }
  }

  public final void setPassword(String paramString)
  {
    if (isExpired());
    btt localbtt;
    do
    {
      return;
      localbtt = this.a.a();
    }
    while (paramString == null);
    btl localbtl = localbtt.a;
    String str = null;
    if (paramString == null);
    while (true)
    {
      localbtl.a("password", str, true);
      break;
      str = Base64.encodeToString(TccCryptor.encrypt(TMSApplication.getApplicaionContext(), paramString.getBytes(), null), 0);
    }
  }

  public final void setWebServerNum(String paramString)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a().a.a("server_num", paramString, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.antitheft.AntitheftManager
 * JD-Core Version:    0.6.2
 */