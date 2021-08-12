package com.Bean;
/**
	Json对象实体类
 	@param <T>
**/

public class Result<T> {
	private int code; // 状态码
	private boolean success; // 操作结果
	private T data; // 存储 formData 的键值对集合...
	private String msg; // 状态信息
	
	public Result() {
	}
	
	public Result(int code, boolean success, String msg) {
		super();
		this.code = code;
		this.success = success;
		this.msg = msg;
	}

	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
}
