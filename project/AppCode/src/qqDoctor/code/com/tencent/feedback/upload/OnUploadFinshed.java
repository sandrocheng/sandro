package com.tencent.feedback.upload;

public abstract interface OnUploadFinshed
{
  public abstract void onUploadFinshed(AbstractUploadDatas.UploadDataType paramUploadDataType, UploadResult paramUploadResult, String paramString);

  public static enum UploadResult
  {
    static
    {
      UploadFail = new UploadResult("UploadFail", 1);
      UploadError = new UploadResult("UploadError", 2);
      UploadResult[] arrayOfUploadResult = new UploadResult[3];
      arrayOfUploadResult[0] = UploadOk;
      arrayOfUploadResult[1] = UploadFail;
      arrayOfUploadResult[2] = UploadError;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.upload.OnUploadFinshed
 * JD-Core Version:    0.6.2
 */