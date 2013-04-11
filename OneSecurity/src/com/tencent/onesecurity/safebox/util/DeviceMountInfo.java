package com.tencent.onesecurity.safebox.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import android.os.Environment;

/**
 * @ClassName: DeviceMountInfo
 * @Description:
 * 			内置和外置SD卡的信息存在system/etc/vold.fstab
 * 
 * 	DevInfo devinfo = DeviceMountInfo.getInstance().getInfo(0) ; 內置SD卡信息
 * 	DevInfo devinfo = DeviceMountInfo.getInstance().getInfo(1) ; 外置SD卡信息
 * 
 * @author: lee
 * @date: 2012-12-2 上午10:51:52
 */
public class DeviceMountInfo {
	
	/**
	 * vold.fstab信息
	 * 
	 * ## Vold 2.0 Generic fstab ## - San Mehat (san@android.com) ##
	 * ####################### ## Regular device mount ## ## Format: dev_mount
	 * <label> <mount_point> <part> <sysfs_path1...> ## label - Label for the
	 * volume ## mount_point - Where the volume will be mounted ## part -
	 * Partition # (1 based), or 'auto' for first usable partition. ##
	 * <sysfs_path> - List of sysfs paths to source devices
	 * ###################### # /sys/devices/platform/usb_mass_storage/lun0/file
	 * # sdcard mount for the GT-I8530 # internal sdcard { ums_path =
	 * /sys/devices/platform/usb_mass_storage/lun0/file asec = disable discard =
	 * disable } dev_mount sdcard /mnt/sdcard 8 /devices/sdi2/mmc_host/mmc0/mmc0
	 * # Partion 8 of mmc0 is Internal sdcard # external sdcard { ums_path =
	 * /sys/devices/platform/usb_mass_storage/lun1/file asec = enable }
	 * dev_mount sdcard1 /mnt/sdcard/external_sd auto
	 * /devices/sdi0/mmc_host/mmc1/mmc1 # otg sdcard - Need to define path for
	 * /sys/devices/platform/musb_hdrc when it supports USB OTG #{ # ums_path =
	 * /dev/zero # asec = disable #} #usb_mount sdcard2 /mnt/sdcard/usbStorage
	 * auto <Need to define path for USB OTG> #end line ## keep this line
	 */

	public final String HEAD = "dev_mount";
	public final String LABEL = "<label>";
	public final String MOUNT_POINT = "<mount_point>";
	public final String PATH = "<part>";
	public final String SYSFS_PATH = "<sysfs_path1...>";

	public final int DEV_INTERNAL = 0;
	public final int DEV_EXTERNAL = 1;

	/**
	 *SD 卡的名称
	 */
	private final int NLABEL = 1;
	/**
	 * SD 卡路径
	 */
	private final int NPATH = 2;
	/**
	 * SD 卡挂载点
	 */
	private final int NMOUNT_POINT = 3;

	private final int NSYSFS_PATH = 4;

	private ArrayList<String> cache = new ArrayList<String>();

	private static DeviceMountInfo dev;

	private final File VOLD_FSTAB = new File(Environment.getRootDirectory().getAbsoluteFile() + File.separator + "etc"
			+ File.separator + "vold.fstab");

	public static DeviceMountInfo getInstance() {
		if (null == dev)
			dev = new DeviceMountInfo();
		return dev;
	}

	public DevInfo getInfo(final int device) {
		// for(String str:cache)
		// System.out.println(str);

	
		 DevInfo info = new DevInfo();

		try {
			initVoldFstabToCache();
		} catch (IOException e) {
			e.printStackTrace();
		}

		if (device >= cache.size())
			return null;
		String[] sinfo = cache.get(device).split(" ");

		info.setLabel(sinfo[NLABEL]);
		info.setMount_point(sinfo[NMOUNT_POINT]);
		info.setPath(sinfo[NPATH]);
		info.setSysfs_path(sinfo[NSYSFS_PATH]);

		return info;
	}

	/**
	 * init the words into the cache array
	 * 
	 * @throws IOException
	 */
	private void initVoldFstabToCache() throws IOException {
		cache.clear();
		BufferedReader br = new BufferedReader(new FileReader(VOLD_FSTAB));
		String tmp = null;
		while ((tmp = br.readLine()) != null) {
			// the words startsWith "dev_mount" are the SD info
			if (tmp.startsWith(HEAD)) {
				cache.add(tmp);
			}
		}
		br.close();
		cache.trimToSize();
	}

	public class DevInfo {
		private String label, mount_point, path, sysfs_path;

		/**
		 * return the label name of the SD card
		 * 
		 * @return
		 */
		public String getLabel() {
			return label;
		}

		private void setLabel(String label) {
			this.label = label;
		}

		/**
		 * the mount point of the SD card
		 * 
		 * @return
		 */
		public String getMount_point() {
			return mount_point;
		}

		private void setMount_point(String mount_point) {
			this.mount_point = mount_point;
		}

		/**
		 * SD mount path
		 * 
		 * @return
		 */
		public String getPath() {
			return path;
		}

		private void setPath(String path) {
			this.path = path;
		}

		/**
		 * "unknow"
		 * 
		 * @return
		 */
		public String getSysfs_path() {
			return sysfs_path;
		}

		private void setSysfs_path(String sysfs_path) {
			this.sysfs_path = sysfs_path;
		}

	}
}
