package org.antivirus.license.qrreader.general;

 enum IntentSource
{
  static
  {
    NONE = new IntentSource("NONE", 3);
    IntentSource[] arrayOfIntentSource = new IntentSource[4];
    arrayOfIntentSource[0] = NATIVE_APP_INTENT;
    arrayOfIntentSource[1] = PRODUCT_SEARCH_LINK;
    arrayOfIntentSource[2] = ZXING_LINK;
    arrayOfIntentSource[3] = NONE;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.IntentSource
 * JD-Core Version:    0.6.2
 */