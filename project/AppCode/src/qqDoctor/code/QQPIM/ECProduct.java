package QQPIM;

public final class ECProduct
{
  public static final ECProduct ECP_END;
  public static final ECProduct ECP_HIPhonebook;
  public static final ECProduct ECP_None;
  public static final ECProduct ECP_Phonebook;
  public static final ECProduct ECP_Pim;
  public static final ECProduct ECP_Secure;
  public static final int _ECP_END = 5;
  public static final int _ECP_HIPhonebook = 4;
  public static final int _ECP_None = 0;
  public static final int _ECP_Phonebook = 2;
  public static final int _ECP_Pim = 3;
  public static final int _ECP_Secure = 1;
  private static ECProduct[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ECProduct.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ECProduct[6];
      ECP_None = new ECProduct(0, 0, "ECP_None");
      ECP_Secure = new ECProduct(1, 1, "ECP_Secure");
      ECP_Phonebook = new ECProduct(2, 2, "ECP_Phonebook");
      ECP_Pim = new ECProduct(3, 3, "ECP_Pim");
      ECP_HIPhonebook = new ECProduct(4, 4, "ECP_HIPhonebook");
      ECP_END = new ECProduct(5, 5, "ECP_END");
      return;
    }
  }

  private ECProduct(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ECProduct convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ECProduct localECProduct = __values[i]; ; localECProduct = null)
    {
      return localECProduct;
      i++;
      break;
    }
  }

  public static ECProduct convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ECProduct localECProduct = __values[i]; ; localECProduct = null)
    {
      return localECProduct;
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ECProduct
 * JD-Core Version:    0.6.2
 */