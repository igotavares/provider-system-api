%dw 2.0
fun toDateTime(value: String): DateTime
	= value as Date {format: 'yyyy-MM-dd'} ++ |00:00:00Z|
	
fun toDateTime(value: Number): DateTime
	= value as DateTime {unit: "milliseconds", format: "yyyy-MM-dd"}