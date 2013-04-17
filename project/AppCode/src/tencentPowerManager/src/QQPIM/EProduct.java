package QQPIM;

public final class EProduct
{
  public static final EProduct EP_AppAssistant;
  public static final EProduct EP_BenchMark;
  public static final EProduct EP_END;
  public static final EProduct EP_KingRoot;
  public static final EProduct EP_KingUser;
  public static final EProduct EP_King_SuperUser;
  public static final EProduct EP_MobileQQ_Secure;
  public static final EProduct EP_None;
  public static final EProduct EP_Phonebook;
  public static final EProduct EP_PhonebookPro;
  public static final EProduct EP_Phonebook_Eng;
  public static final EProduct EP_Pim;
  public static final EProduct EP_Pim_Eng;
  public static final EProduct EP_Pim_Jailbreak;
  public static final EProduct EP_Pim_Pro;
  public static final EProduct EP_PowerManager;
  public static final EProduct EP_QQBrowse_Secure;
  public static final EProduct EP_QQPhonebook;
  public static final EProduct EP_QZone;
  public static final EProduct EP_SMS_Fraud_Killer;
  public static final EProduct EP_Secure;
  public static final EProduct EP_SecurePro_Enhance;
  public static final EProduct EP_Secure_Eng;
  public static final EProduct EP_Secure_Jailbreak;
  public static final EProduct EP_Secure_SDK;
  public static final EProduct EP_Secure_SDK_Ign;
  public static final EProduct EP_Secure_SDK_Pay;
  public static final EProduct EP_Tracker;
  public static final EProduct EP_WBlog;
  public static final EProduct EP_XiaoYou;
  private static EProduct[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EProduct.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EProduct[30];
      EP_None = new EProduct(0, 0, "EP_None");
      EP_Secure = new EProduct(1, 1, "EP_Secure");
      EP_Phonebook = new EProduct(2, 2, "EP_Phonebook");
      EP_Pim = new EProduct(3, 3, "EP_Pim");
      EP_QQPhonebook = new EProduct(4, 4, "EP_QQPhonebook");
      EP_QZone = new EProduct(5, 5, "EP_QZone");
      EP_MobileQQ_Secure = new EProduct(6, 6, "EP_MobileQQ_Secure");
      EP_QQBrowse_Secure = new EProduct(7, 7, "EP_QQBrowse_Secure");
      EP_XiaoYou = new EProduct(8, 8, "EP_XiaoYou");
      EP_Secure_Eng = new EProduct(9, 9, "EP_Secure_Eng");
      EP_WBlog = new EProduct(10, 10, "EP_WBlog");
      EP_Phonebook_Eng = new EProduct(11, 11, "EP_Phonebook_Eng");
      EP_AppAssistant = new EProduct(12, 12, "EP_AppAssistant");
      EP_Secure_SDK = new EProduct(13, 13, "EP_Secure_SDK");
      EP_KingRoot = new EProduct(14, 14, "EP_KingRoot");
      EP_Secure_SDK_Pay = new EProduct(15, 15, "EP_Secure_SDK_Pay");
      EP_Secure_Jailbreak = new EProduct(16, 16, "EP_Secure_Jailbreak");
      EP_KingUser = new EProduct(17, 17, "EP_KingUser");
      EP_Pim_Pro = new EProduct(18, 18, "EP_Pim_Pro");
      EP_Pim_Jailbreak = new EProduct(19, 19, "EP_Pim_Jailbreak");
      EP_PhonebookPro = new EProduct(20, 20, "EP_PhonebookPro");
      EP_PowerManager = new EProduct(21, 21, "EP_PowerManager");
      EP_BenchMark = new EProduct(22, 22, "EP_BenchMark");
      EP_SecurePro_Enhance = new EProduct(23, 23, "EP_SecurePro_Enhance");
      EP_Pim_Eng = new EProduct(24, 24, "EP_Pim_Eng");
      EP_SMS_Fraud_Killer = new EProduct(25, 25, "EP_SMS_Fraud_Killer");
      EP_King_SuperUser = new EProduct(26, 26, "EP_King_SuperUser");
      EP_Secure_SDK_Ign = new EProduct(27, 27, "EP_Secure_SDK_Ign");
      EP_Tracker = new EProduct(28, 28, "EP_Tracker");
      EP_END = new EProduct(29, 29, "EP_END");
      return;
    }
  }

  private EProduct(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EProduct convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EProduct localEProduct = __values[i]; ; localEProduct = null)
    {
      return localEProduct;
      i++;
      break;
    }
  }

  public static EProduct convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EProduct localEProduct = __values[i]; ; localEProduct = null)
    {
      return localEProduct;
      i++;
      break;
    }
  }

  public final String toString()
  {
    return this.__T;
  }

  public final int value()
  {
    return this.__value;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.EProduct
 * JD-Core Version:    0.6.2
 */