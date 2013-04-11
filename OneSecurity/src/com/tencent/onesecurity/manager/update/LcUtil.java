package com.tencent.onesecurity.manager.update;

import com.tencent.onesecurity.util.MD5Util;

/**
 * 检查更新数据解析工具
 * 
 * @author Jess Yan
 * 
 */
public class LcUtil {
	public static final int ERROR = 0;
	public static final int NONEED = 1;
	public static final int MUSTUPDATE = 2;
	public static final int SHOULDUPDATE = 3;
	long iQQNum;
	byte[] iPostBuf;
	byte[] iUpdateFileBuf;

	public static byte[] lcCreateKey(long aQQNum, byte[] aLc) {
		String endKeyString = "E1D84CC825147ECD";
		byte[] hash = new byte[16];
		hash = MD5Util.encrypt(aQQNum + new String(aLc) + endKeyString);
		StringBuffer sbBuffer = new StringBuffer();
		for (int i = 0; i < 8; i++) {
			int val = hash[i];
			sbBuffer.append(String.format("%1$02X", new Object[] { Integer.valueOf(val & 0xFF) }));
		}
		return new String(sbBuffer).getBytes();
	}

	public byte[] makeCheckUpdateRequestPackge(byte[] aLcString, long aQQNum, int aVer) {
		this.iUpdateFileBuf = null;
		this.iQQNum = aQQNum;
		byte[] buf = new byte[64];
		int len = 0;
		buf[(len++)] = 2;

		buf[(len++)] = 3;
		buf[(len++)] = 0;

		buf[(len++)] = 0;
		buf[(len++)] = 5;

		System.arraycopy(long2byte(aQQNum), 0, buf, len, 4);
		len += 4;

		System.arraycopy(aLcString, 0, buf, len, 16);
		len += 16;

		buf[(len++)] = 3;

		System.arraycopy(int2byte(aVer), 0, buf, len, 4);
		len += 4;

		buf[(len++)] = 3;
		this.iPostBuf = new byte[len];
		System.arraycopy(buf, 0, this.iPostBuf, 0, len);
		return this.iPostBuf;
	}

	public int sloveCheckUpdateResponPackge(byte[] aLcString, byte[] aRespBuf) {
		this.iUpdateFileBuf = null;
		int hr = 0;

		if (aRespBuf.length >= 13) {
			int StaticCode = 0;

			int p = 0;

			if (2 == aRespBuf[(p++)]) {
				p += 2;
				p += 2;
				p += 4;

				StaticCode = aRespBuf[(p++)];
				if (StaticCode == 0) {
					short tFIL0Len = 0;
					tFIL0Len = getShortValueFromBuf(aRespBuf, p);
					p += 2;

					if (tFIL0Len == 0) {
						hr = 1;
					} else {
						byte[] aKey = lcCreateKey(this.iQQNum, aLcString);

						this.iUpdateFileBuf = new byte[tFIL0Len];

						Cryptor cryptor = new Cryptor();
						this.iUpdateFileBuf = cryptor.decrypt(aRespBuf, p, tFIL0Len, aKey);
						if (this.iUpdateFileBuf == null) {
							return 0;
						}

						byte[] enbuf = this.iUpdateFileBuf;
						p = 0;
						int tlen = 0;
						tlen = getShortValueFromBuf(this.iUpdateFileBuf, p);
						p += 2;
						p += tlen;

						int cRespCond = enbuf[(p++)];
						p++;

						tlen = getShortValueFromBuf(this.iUpdateFileBuf, p);

						p += 2;
						p += tlen;

						if ((p == this.iUpdateFileBuf.length) && (tlen > 0)) {
							if (1 == cRespCond)
								hr = 2;
							else
								hr = 3;
						}
					}
				}
			}
		}
		return hr;
	}

	public String getUpdateDesText() {
		String aText = null;
		if ((this.iUpdateFileBuf != null) && (this.iUpdateFileBuf.length > 0)) {
			short tlen = 0;
			tlen = getShortValueFromBuf(this.iUpdateFileBuf, 0);
			byte[] resText = new byte[tlen];
			System.arraycopy(this.iUpdateFileBuf, 2, resText, 0, tlen);
			aText = new String(resText);
		}
		return aText;
	}

	public String getUpdateUrl() {
		String url = null;
		if ((this.iUpdateFileBuf != null) && (this.iUpdateFileBuf.length > 0)) {
			int p = 0;
			int tlen = 0;
			tlen = getShortValueFromBuf(this.iUpdateFileBuf, p);
			p += tlen;
			p += 4;

			tlen = getShortValueFromBuf(this.iUpdateFileBuf, p);
			p += 2;
			byte[] updateUrl = new byte[tlen];
			System.arraycopy(this.iUpdateFileBuf, p, updateUrl, 0, tlen);
			url = new String(updateUrl);
		}
		return url;
	}

	public static byte[] int2byte(int res) {
		byte[] targets = new byte[4];

		targets[3] = (byte) (res & 0xFF);
		targets[2] = (byte) (res >> 8 & 0xFF);
		targets[1] = (byte) (res >> 16 & 0xFF);
		targets[0] = (byte) (res >>> 24);
		return targets;
	}

	public static byte[] long2byte(long res) {
		byte[] targets = new byte[4];

		targets[3] = (byte) (int) (res & 0xFF);
		targets[2] = (byte) (int) (res >> 8 & 0xFF);
		targets[1] = (byte) (int) (res >> 16 & 0xFF);
		targets[0] = (byte) (int) (res >> 24 & 0xFF);
		return targets;
	}

	public short getShortValueFromBuf(byte[] b, int offset) {
		return Short.parseShort(parseHexByte2String(b[offset]) + parseHexByte2String(b[(offset + 1)]), 16);
	}

	public String parseHexByte2String(byte b) {
		String hexString = null;
		if ((b > 15) && (b <= 255))
			hexString = Integer.toHexString(b);
		else if ((b >= 0) && (b <= 15))
			hexString = "0" + Integer.toHexString(b);
		else {
			hexString = Integer.toHexString(b).substring(6);
		}
		return hexString;
	}
}