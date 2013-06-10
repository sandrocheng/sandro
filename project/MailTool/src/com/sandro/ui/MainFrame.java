package com.sandro.ui;

import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

/**
 * 主界面
 * @author sandrocheng
 *
 */
public class MainFrame {
	
	private Frame curFrame;
	public void start(){
		initFrame();
	}
	
	private void initFrame() {
		this.curFrame = new Frame("mail tool");
		this.curFrame.setSize(500, 500);
		this.curFrame.addWindowListener(new WindowAdapter(){
			@Override
			public void windowClosing(WindowEvent e) {
				super.windowClosing(e);
				System.exit(0);
			}
		});
		
		curFrame.setVisible(true);
	}

}
