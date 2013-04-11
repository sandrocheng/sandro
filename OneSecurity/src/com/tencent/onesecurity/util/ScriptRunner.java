package com.tencent.onesecurity.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/**
 * 脚本运行辅助类
 * 
 * From QD1.2
 * @author Jess Yan
 */
public final class ScriptRunner{
	public static final String PS = "ps";
	public static final String CD = "cd";
	public static final String CAT = "cat";
	public static final String LS = "ls";
	public static final String CHMOD = "chmod";
	public static final String KILL = "kill";
	public static final String WGET = "./wget";
	public static final String RM = "rm";
	public static final String MV = "mv";
	
	private ScriptRunner(){	}
	
	/**
	 * 执行脚本，并返回字条串数组
	 * @param script
	 * @return
	 */
	public static String[] exec(File dir, String... cmd){
		String[] lines = null;
		try {
			StringBuffer reault = new StringBuffer();
			ProcessBuilder builder = new ProcessBuilder(cmd);
			if(dir != null)
				builder.directory(dir);
			builder.redirectErrorStream(false);
			Process process = builder.start();
			InputStream in = process.getInputStream();
			byte[] buffer = new byte[1024];
			int length = -1;
			while((length = in.read(buffer)) > 0){
				reault.append(new String(buffer, 0, length));
			}
			in.close();
			process.destroy();
			lines = reault.toString().split("\n");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return lines;
	}
	
	public static String[] exec(String... cmd){
		return exec(null, cmd);
	}

	
	/**
	 * 执行命令
	 * @param cmd
	 * @throws IOException
	 */
	public static void exec(String cmd) throws IOException {
	    Runtime runtime = Runtime.getRuntime();
	    runtime.exec(cmd);
	}
}
