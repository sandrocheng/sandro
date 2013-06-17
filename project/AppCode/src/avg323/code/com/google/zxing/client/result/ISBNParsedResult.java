package com.google.zxing.client.result;

public final class ISBNParsedResult extends ParsedResult
{
  private final String isbn;

  ISBNParsedResult(String paramString)
  {
    super(ParsedResultType.ISBN);
    this.isbn = paramString;
  }

  public String getDisplayResult()
  {
    return this.isbn;
  }

  public String getISBN()
  {
    return this.isbn;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.zxing.client.result.ISBNParsedResult
 * JD-Core Version:    0.6.2
 */