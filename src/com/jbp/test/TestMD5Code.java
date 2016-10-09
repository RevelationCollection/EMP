package com.jbp.test;

import com.jbp.util.MD5Code;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class TestMD5Code {
	public static void main(String[] args) {
		String salt = Base64.encode("jbpjava".getBytes());
		System.out.println(salt);
		String pwd = "java" ;
		System.out.println(new MD5Code().getMD5ofStr(pwd + "({" + salt + "})"));
	}
}
