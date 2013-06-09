package com.google.zxing;

public enum ResultMetadataType
{
  static
  {
    ORIENTATION = new ResultMetadataType("ORIENTATION", 1);
    BYTE_SEGMENTS = new ResultMetadataType("BYTE_SEGMENTS", 2);
    ERROR_CORRECTION_LEVEL = new ResultMetadataType("ERROR_CORRECTION_LEVEL", 3);
    ISSUE_NUMBER = new ResultMetadataType("ISSUE_NUMBER", 4);
    SUGGESTED_PRICE = new ResultMetadataType("SUGGESTED_PRICE", 5);
    POSSIBLE_COUNTRY = new ResultMetadataType("POSSIBLE_COUNTRY", 6);
    ResultMetadataType[] arrayOfResultMetadataType = new ResultMetadataType[7];
    arrayOfResultMetadataType[0] = OTHER;
    arrayOfResultMetadataType[1] = ORIENTATION;
    arrayOfResultMetadataType[2] = BYTE_SEGMENTS;
    arrayOfResultMetadataType[3] = ERROR_CORRECTION_LEVEL;
    arrayOfResultMetadataType[4] = ISSUE_NUMBER;
    arrayOfResultMetadataType[5] = SUGGESTED_PRICE;
    arrayOfResultMetadataType[6] = POSSIBLE_COUNTRY;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.ResultMetadataType
 * JD-Core Version:    0.6.2
 */