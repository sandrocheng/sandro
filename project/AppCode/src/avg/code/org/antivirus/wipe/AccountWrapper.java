package org.antivirus.wipe;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.util.HashMap;
import java.util.Map;
import org.antivirus.core.Logger;

public class AccountWrapper
{
  private Map a = new HashMap();
  private AuthenticatorDescription[] b;

  public a[] getAccountNames(Context paramContext)
  {
    int i = 0;
    this.b = AccountManager.get(paramContext).getAuthenticatorTypes();
    for (int j = 0; j < this.b.length; j++)
      this.a.put(this.b[j].type, this.b[j]);
    Account[] arrayOfAccount = AccountManager.get(paramContext).getAccounts();
    a[] arrayOfa = new a[arrayOfAccount.length];
    int k = arrayOfAccount.length;
    int m = 0;
    while (i < k)
    {
      Account localAccount = arrayOfAccount[i];
      arrayOfa[m] = new a(this);
      arrayOfa[m].a = localAccount.name;
      arrayOfa[m].b = localAccount.type;
      if ((m == 0) && (localAccount.type.equals("com.google")))
        arrayOfa[m].c = true;
      m++;
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
        Logger.log(localNameNotFoundException);
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
 * Qualified Name:     org.antivirus.wipe.AccountWrapper
 * JD-Core Version:    0.6.2
 */