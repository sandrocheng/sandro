package com.tencent.feedback.common.a;

public final class c
{
  public static final String[] a = { "record", "monitor", "eupdata", "ao", "count", "grayuser" };
  static final String[] b = { "CREATE TABLE ao ( _id  INTEGER PRIMARY KEY ,_time int ,_type int ,_prority int ,_length int ,_datas blob , _key text , _alltimes text , _count int  ) ", "CREATE TABLE count ( _id  INTEGER PRIMARY KEY ,_countid text unique ,_prority int , _local int, _stime int ,_utime int ,_ctime int ,_cparams text  ) ", "CREATE TABLE grayuser ( _id  INTEGER PRIMARY KEY ,_time int ,_name text unique  ) " };
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.a.c
 * JD-Core Version:    0.6.2
 */