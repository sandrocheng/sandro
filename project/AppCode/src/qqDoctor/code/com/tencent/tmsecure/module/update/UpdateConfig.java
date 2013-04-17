package com.tencent.tmsecure.module.update;

import QQPIM.SoftListType;

public final class UpdateConfig
{
  public static final String BLACKLIST_KILL_PROCESS_NAME;
  public static final String BLACKLIST_ROM_NAME;
  public static final String BLACKLIST_WITHPLUGIN_NAME;
  public static final String CAMERA_SOFTWARE_LIST_NAME;
  public static final String DEEPCLEAN_SOFTWARE_LIST_NAME;
  public static final String DEEPCLEAN_SOFT_PATH_LIST_NAME;
  public static final String[] FILE_NAMES = arrayOfString;
  public static final String LOCATION_NAME = "nldb.sdb";
  public static final String NOTKILL_LIST_KILL_PROCESSES_NAME;
  public static final String PATCH_SUFIX = ".patch";
  public static final String PERMIS_MONITOR_LIST_NAME;
  public static final String PRIVACYLOCKLIST_USUAL_NAME;
  public static final String ROM_THIRDPART_NAME = SoftListType.BLACKLIST_ROM_THIRDPART.toString().toLowerCase() + ".dat";
  public static final String SMS_CHECKER_NAME = "rule_store.sys";
  public static final String TRAFFIC_MONITOR_CONFIG_NAME = "net_interface_type_traffic_stat.dat";
  public static final String TRUST_URLS_NAME = "trusturls.dat";
  public static final int UPDATA_FLAG_NOTKILLLIST_KILL_PROCESSES = 8388608;
  public static final int[] UPDATE_FLAGS = { 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 8388608 };
  public static final int UPDATE_FLAG_ALL = 2097152;
  public static final int UPDATE_FLAG_APP_LIST = 4194304;
  public static final int UPDATE_FLAG_BLACKLIST_PROCESS = 8192;
  public static final int UPDATE_FLAG_BLACKLIST_ROM = 128;
  public static final int UPDATE_FLAG_BLACKLIST_WITHPLUGIN = 2048;
  public static final int UPDATE_FLAG_CAMERA_SOFTWARE_LIST = 131072;
  public static final int UPDATE_FLAG_DEEPCLEAN_SOFTWARE_LIST = 262144;
  public static final int UPDATE_FLAG_DEEPCLEAN_SOFT_PATH_LIST = 524288;
  public static final int UPDATE_FLAG_LOCATION = 2;
  public static final int UPDATE_FLAG_PERMIS_MONITOR_LIST = 1048576;
  public static final int UPDATE_FLAG_PRIVACYLOCKLIST_USUAL = 4096;
  public static final int UPDATE_FLAG_ROM_THIRDPART = 64;
  public static final int UPDATE_FLAG_SMS_CHECKER = 4;
  public static final int UPDATE_FLAG_TRAFFIC_MONITOR_CONFIG = 32;
  public static final int UPDATE_FLAG_TRUST_URLS = 16;
  public static final int UPDATE_FLAG_VIRUS_BASE = 8;
  public static final int UPDATE_FLAG_WHITELIST_AUTO_BOOT = 32768;
  public static final int UPDATE_FLAG_WHITELIST_COMMON = 512;
  public static final int UPDATE_FLAG_WHITELIST_PERMISSION_CONTROL = 65536;
  public static final int UPDATE_FLAG_WHITELIST_PROCESS = 16384;
  public static final int UPDATE_FLAG_WHITELIST_ROM = 256;
  public static final int UPDATE_FLAG_WHITELIST_UNUSUAL = 1024;
  public static final int UPDATE_TYPE_ENGINE_UPDATE = 1;
  public static final int UPDATE_TYPE_NORMAL_UPDATE = 0;
  public static final String VIRUS_BASE_NAME = "qv_base.amf";
  public static final String WHITELIST_AUTO_BOOT_NAME;
  public static final String WHITELIST_COMMON_NAME;
  public static final String WHITELIST_KILL_PROCESS_NAME;
  public static final String WHITELIST_PERMISSION_CONTROL_NAME;
  public static final String WHITELIST_ROM_NAME;
  public static final String WHITELIST_UNUSUAL_NAME;

  static
  {
    BLACKLIST_ROM_NAME = SoftListType.BLACKLIST_ROM.toString().toLowerCase() + ".dat";
    WHITELIST_ROM_NAME = SoftListType.WHITELIST_ROM.toString().toLowerCase() + ".dat";
    WHITELIST_COMMON_NAME = SoftListType.WHITELIST_COMMON.toString().toLowerCase() + ".dat";
    BLACKLIST_WITHPLUGIN_NAME = SoftListType.BLACKLIST_WITHPLUGIN.toString().toLowerCase() + ".dat";
    WHITELIST_UNUSUAL_NAME = SoftListType.WHITELIST_UNUSUAL.toString().toLowerCase() + ".dat";
    PRIVACYLOCKLIST_USUAL_NAME = SoftListType.PRIVACYLOCKLIST_USUAL.toString().toLowerCase() + ".dat";
    BLACKLIST_KILL_PROCESS_NAME = SoftListType.BLACKLIST_KILL_PROCESSES.toString().toLowerCase() + ".dat";
    WHITELIST_KILL_PROCESS_NAME = SoftListType.WHITELIST_KILL_PROCESS.toString().toLowerCase() + ".dat";
    WHITELIST_AUTO_BOOT_NAME = SoftListType.WHITELIST_AUTO_ROOT.toString().toLowerCase() + ".dat";
    WHITELIST_PERMISSION_CONTROL_NAME = SoftListType.WHITELIST_PERMISSION_CONTROL.toString().toLowerCase() + ".dat";
    CAMERA_SOFTWARE_LIST_NAME = SoftListType.CAMERA_SOFTWARE_LIST.toString().toLowerCase() + ".dat";
    DEEPCLEAN_SOFTWARE_LIST_NAME = SoftListType.DEEPCLEAN_SOFTWARE_LIST.toString().toLowerCase() + ".dat";
    DEEPCLEAN_SOFT_PATH_LIST_NAME = SoftListType.DEEPCLEAN_SOFT_PATH_LIST.toString().toLowerCase() + ".dat";
    PERMIS_MONITOR_LIST_NAME = SoftListType.PERMIS_MONITOR_LIST.toString().toLowerCase() + ".dat";
    NOTKILL_LIST_KILL_PROCESSES_NAME = SoftListType.NOTKILLLIST_KILL_PROCESSES.toString().toLowerCase() + ".dat";
    String[] arrayOfString = new String[21];
    arrayOfString[0] = "nldb.sdb";
    arrayOfString[1] = "rule_store.sys";
    arrayOfString[2] = "qv_base.amf";
    arrayOfString[3] = "trusturls.dat";
    arrayOfString[4] = "net_interface_type_traffic_stat.dat";
    arrayOfString[5] = ROM_THIRDPART_NAME;
    arrayOfString[6] = BLACKLIST_ROM_NAME;
    arrayOfString[7] = WHITELIST_ROM_NAME;
    arrayOfString[8] = WHITELIST_COMMON_NAME;
    arrayOfString[9] = WHITELIST_UNUSUAL_NAME;
    arrayOfString[10] = BLACKLIST_WITHPLUGIN_NAME;
    arrayOfString[11] = PRIVACYLOCKLIST_USUAL_NAME;
    arrayOfString[12] = BLACKLIST_KILL_PROCESS_NAME;
    arrayOfString[13] = WHITELIST_KILL_PROCESS_NAME;
    arrayOfString[14] = WHITELIST_AUTO_BOOT_NAME;
    arrayOfString[15] = WHITELIST_PERMISSION_CONTROL_NAME;
    arrayOfString[16] = CAMERA_SOFTWARE_LIST_NAME;
    arrayOfString[17] = DEEPCLEAN_SOFTWARE_LIST_NAME;
    arrayOfString[18] = DEEPCLEAN_SOFT_PATH_LIST_NAME;
    arrayOfString[19] = PERMIS_MONITOR_LIST_NAME;
    arrayOfString[20] = NOTKILL_LIST_KILL_PROCESSES_NAME;
  }

  public static String getFileNameByFlag(int paramInt)
  {
    for (int i = 0; ; i++)
    {
      if (i >= UPDATE_FLAGS.length);
      for (String str = null; ; str = FILE_NAMES[i])
      {
        return str;
        if (paramInt != UPDATE_FLAGS[i])
          break;
      }
    }
  }

  public static int getFlagByFileName(String paramString)
  {
    for (int i = 0; ; i++)
    {
      if (i >= FILE_NAMES.length);
      for (int j = -1; ; j = UPDATE_FLAGS[i])
      {
        return j;
        if (!paramString.equals(FILE_NAMES[i]))
          break;
      }
    }
  }

  public static int prepareCheckFlag(int paramInt)
  {
    int i = 0;
    int[] arrayOfInt;
    if ((0x200000 & paramInt) != 0)
    {
      arrayOfInt = UPDATE_FLAGS;
      int j = arrayOfInt.length;
      paramInt = 0;
      if (i < j);
    }
    while (true)
    {
      return paramInt;
      paramInt |= arrayOfInt[i];
      i++;
      break;
      if ((0x400000 & paramInt) != 0)
        paramInt = 0x800000 | (0x100000 | (0x80000 | (0x40000 | (0x20000 | (0x10000 | (0x8000 | (0x4000 | (0x2000 | (0x1000 | (0x800 | (0x400 | (0x200 | (0x100 | (0x80 | (paramInt | 0x40)))))))))))))));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.update.UpdateConfig
 * JD-Core Version:    0.6.2
 */