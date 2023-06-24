#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#define MAX_PAIRS 100
#define MAX_KEY_VALUE_LEN 100

#define MAX_DATA_LEN 256

typedef struct
{
	uint8_t data[MAX_DATA_LEN];
	void (*SetData)(uint8_t *str);
	void (*GetValue)(uint8_t *key);
	void (*IsKey)(uint8_t *key);
} StringParse_t;

StringParse_t StringParse;

static void SetData(uint8_t *str)
{
	while (*str++){

	}
	
	
}

typedef struct
{
	char key[MAX_KEY_VALUE_LEN];
	char value[MAX_KEY_VALUE_LEN];
} KeyValue_t;

void parse_key_value_string(char *stream, KeyValue_t *result, int *count)
{
	char *pairs[MAX_PAIRS];
	// 切分一次字符串
	char *token = strtok((char *)stream, ",");
	printf("step-1 \r\n");

	*count = 0;

	while (token != NULL && *count < MAX_PAIRS)
	{
		pairs[*count] = token;
		(*count)++;
		token = strtok(NULL, ",");
	}

	for (int i = 0; i < *count; i++)
	{
		char *key_value = pairs[i];
		// 查找key-value的分隔符位置
		char *colon = strchr(key_value, ':');

		if (colon != NULL)
		{
			*colon = '\0';
			// 复制不超过 N 个字符到 目标中
			strncpy(result[i].key, key_value, MAX_KEY_VALUE_LEN);
			strncpy(result[i].value, colon + 1, MAX_KEY_VALUE_LEN);
		}
	}
}

int str_main()
{
	char stream[] = "name:John,age:25,address:123 Main St";
	printf("%s\r\n", stream);
	KeyValue_t data[MAX_PAIRS];
	int count;

	parse_key_value_string(stream, data, &count);

	for (int i = 0; i < count; i++)
	{
		printf("Key: %s  Value: %s\n", data[i].key, data[i].value);
	}

	return 0;
}