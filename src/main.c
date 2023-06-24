#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#include "time33.h"

typedef struct
{
	uint8_t *data;
	uint8_t len;
} Packet_t;

struct ListNode
{
	struct ListNode *Pre;
	struct ListNode *Next;
	void *d;
};

typedef struct ListNode ListNode_t;

typedef struct
{
	ListNode_t *Header;
	ListNode_t *Tail;
	uint32_t len;
} List_t;

uint8_t header[] = {0xa5};
uint8_t tail[] = {0xcb, 0xca, 0xca, 0xcb};


// 构建数据包
Packet_t *buildData(uint8_t *data, uint8_t len)
{
	Packet_t *p = malloc(sizeof(Packet_t));
	if (p == NULL)
	{
		return NULL;
	}

	// data
	// header + len + data + tail
	uint8_t buf_cur = 0;
	uint8_t *buf = malloc(1 + 1 + len + 4 + 1);
	if (buf == NULL)
	{
		return NULL;
	}


	// header
	for (size_t i = 0; i < sizeof(header); i++)
	{
		buf[buf_cur] = header[i];
		buf_cur++;
	}

	// Len
	buf[buf_cur] = len;
	buf_cur++;

	// data
	for (size_t i = 0; i < len; i++)
	{
		buf[buf_cur] = data[i];
		buf_cur++;
	}

	// tail
	for (size_t i = 0; i < sizeof(tail); i++)
	{
		buf[buf_cur] = tail[i];
		buf_cur++;
	}

	//
	buf[buf_cur] = 0x00;
	buf_cur++;

	p->data = buf;
	p->len = buf_cur;

	return p;
}


List_t cmdList;

struct udm
{
	void *func;
	const uint8_t* cmd;
	uint32_t hash;
};


void fux1(){}

// struct udm udms[] ={
// 	(void*)fux1, "main", 0x00,
// };

struct udm udms[] ={
	{(void*)fux1, "main", 0x00},
};



void * GetValue(char * str, const char * key){
	int str_cur = 0;
	int split_num = 0;
	while (str[str_cur] != 0x0)
	{
		if(str[str_cur] == ';' || str[str_cur] == '=' ) {
			str[str_cur] = '\0';
			split_num ++;
		}
	}

	while (split_num--)
	{

	}
	


}

extern int str_main();

//
int main()
{
	printf("begin..\r\n");

	uint8_t str[] = "cmd=setSensor;NM=512;LigthIntensity=1;K=0.1;B=2.0;";
	Packet_t *data = buildData(str, sizeof(str));

	for (size_t i = 0; i < data->len; i++)
	{
		printf("%x ", data->data[i]);
	}
	printf("\r\n");


	uint32_t df = time33(str, sizeof(str));
	printf("%x\r\n", df);

	str_main();

	return 0;
}