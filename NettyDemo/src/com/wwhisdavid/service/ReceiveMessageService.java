package com.wwhisdavid.service;

public interface ReceiveMessageService {
	/*
	 * 转发一条指令信息
	 */
	public void dispatch(String msg);
	
	/*
	 * 校验并插入数据到mysql(boolean)
	 */
	public void insert2mysql(String msg);
}
