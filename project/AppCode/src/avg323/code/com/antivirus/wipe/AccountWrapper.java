package com.antivirus.wipe;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.util.HashMap;
import java.util.Map;

public class AccountWrapper
{
  private Map a = new HashMap();
  private AuthenticatorDescription[] b;

  private void a(Context paramContext)
  {
    this.b = AccountManager.get(paramContext).getAuthenticatorTypes();
    for (int i = 0; i < this.b.length; i++)
      this.a.put(this.b[i].type, this.b[i]);
  }

  public a[] getAccountNames(Context paramContext)
  {
    int i = 0;
    a(paramContext);
    Account[] arrayOfAccount = AccountManager.get(paramContext).getAccounts();
    a[] arrayOfa = new a[arrayOfAccount.length];
    int j = arrayOfAccount.length;
    int k = 0;
    while (i < j)
    {
      Account localAccount = arrayOfAccount[i];
      arrayOfa[k] = new a(this);
      arrayOfa[k].a = localAccount.name;
      arrayOfa[k].b = localAccount.type;
      if ((k == 0) && (localAccount.type.equals("com.google")))
        arrayOfa[k].c = true;
      k++;
      i++;
    }
    return arrayOfa;
  }

  public Drawable getDrawableForType(Context paramContext, String paramString)
  {
    if (this.a.containsKey(paramString));
    while (true)
    {
      try
      {
        AuthenticatorDescription localAuthenticatorDescription = (AuthenticatorDescription)this.a.get(paramString);
        Drawable localDrawable2 = paramContext.createPackageContext(localAuthenticatorDescription.packageName, 0).getResources().getDrawable(localAuthenticatorDescription.iconId);
        localDrawable1 = localDrawable2;
        return localDrawable1;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        com.avg.toolkit.f.a.a(localNameNotFoundException);
      }
      Drawable localDrawable1 = null;
    }
  }

  public String getNewMainMailAccount(Context paramContext)
  {
    AccountManager localAccountManager = AccountManager.get(paramContext);
    String str;
    if (localAccountManager == null)
      str = "";
    while (true)
    {
      return str;
      Account[] arrayOfAccount = localAccountManager.getAccountsByType("com.google");
      int i = arrayOfAccount.length;
      str = "";
      if (i > 0)
        str = arrayOfAccount[0].name;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.AccountWrapper
 * JD-Core Version:    0.6.2
 */