package com.avast.android.antitheft_setup_components.app.home.a;

public class a
{
  private static final String[] a = { "Netbanking", "Betabox Repository", "GigaFibe", "Poly Client", "Pet Finder", "TouchStore Pro", "Jailbreaker", "IceLiz Trial", "Mac Dev", "Surname II", "System Explorer", "Online Pro Store", "RDP Bridge", "Recipes 2000", "GreetingCards", "Backup Lite", "Cow Race", "FarmerLife Lite", "Dodo Gadget", "Contact Explorer", "Secure Delete", "File Recovery", "Update Agent" };

  public static String a()
  {
    int i = (int)(Math.random() * a.length);
    if (i >= a.length)
      i = -1 + a.length;
    return a[i];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.a.a
 * JD-Core Version:    0.6.2
 */