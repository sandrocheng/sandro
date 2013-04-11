package com.tencent.onesecurity.safebox.ui.viewImage;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import android.util.Log;
/**
 * @ClassName: DecodeFileInputStream
 * @Description:在显示加密图片时使用本类，可以在文件读取过程中对文件解密。
 * @author: Matt
 * @date: 2012-11-07 15：55
 * 
 */
class DecodeFileInputStream extends FileInputStream{
	//保存文件加密区的指针
	private byte[] mHeader = null;
	//文件加密区长度
	private int mHeaderLenth;
	//已经被读取的加密文件区的长度
	private int mHeaderReadLenth = 0;
	//是否读取文件内容
	private boolean mReading = false;
	public DecodeFileInputStream(File file, int headerlenth) throws FileNotFoundException {
		super(file);
		// TODO Auto-generated constructor stub
		mHeaderLenth = headerlenth;
	}
	
	public DecodeFileInputStream(String name, int headerlenth)throws FileNotFoundException {
		super(name);
		mHeaderLenth = headerlenth;
	}
	
	
	@Override
	public int read(byte[] buffer, int byteOffset, int byteCount)
			throws IOException {
//		Log.v("read", "3");
		// TODO Auto-generated method stub
		if(mReading == false){
			return readEx(buffer, byteOffset, byteCount);
		}else{
			return super.read(buffer, byteOffset, byteCount);
		}
	}
	
//	@Override
//	public int read(byte[] buffer) throws IOException {
//		// TODO Auto-generated method stub
//		Log.v("read", "1");
////		if(mReading == false){
//			return readEx(buffer, 0, buffer.length);
////		}else{
////			return super.read(buffer);
////		}
//	}
	
	/**
	 * 子类实现该方法,将文件加密区解密
	 */
	protected void decodeFileHead(byte[] fileHead){
		
	}
	/**
	 * 文件读取方法
	 * 该方法处理流程如下:
	 * 读取文件加密区,调用decodeFileHead()对加密区进行解密.
	 * 将加密区解密内容返回给输入参数buffer,之后,正常读取文件内容.
	 */
	protected int readEx(byte[] buffer, int byteOffset, int byteCount) throws IOException{
//		Log.v("readEx", "---in");
		int length = 0;
		mReading = true;
		if(mHeader == null && mHeaderLenth > 0){
			mHeader = new byte[mHeaderLenth];
			mHeaderLenth = super.read(mHeader);
			decodeFileHead(mHeader);
			
		}
		int readBufferLenth = byteCount;
		if(mHeaderLenth >  mHeaderReadLenth){
			int readByte = byteCount >= (mHeaderLenth - mHeaderReadLenth)?(mHeaderLenth - mHeaderReadLenth):byteCount;
			System.arraycopy(mHeader, mHeaderReadLenth, buffer, byteOffset, readByte);
			mHeaderReadLenth += readByte;
			readBufferLenth -= readByte;
			length = readByte;
			if(readBufferLenth > 0){
				int len = 0;
				len = super.read(buffer, byteOffset + readByte, byteCount - readBufferLenth);
				if(len < 0){
					len = 0;
				}
				length += len;
			}
			
			
		}else{
			length = super.read(buffer, byteOffset, byteCount);
		}
		mReading = false;
//		Log.v("readEx", "---out");
		return length;
	}
	
}
