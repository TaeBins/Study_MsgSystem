package com.smhrd.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Getter
@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
public class MessageDTO {
	
	// 필드
	
	private int num;
	@NonNull private String sender;
	@NonNull private String recipient;
	@NonNull private String message;
	private String m_date;

}
