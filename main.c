#include "libasm.h"

void clear_buffer(char *buffer)
{
	int i;

	i = 0;
	while(buffer[i] != '\0')
		buffer[i++] = 0;
}

int main(void)
{
	int fd;
	char buffer[1000];
	char buffer2[1000];

	printf("\n/* strlen */\n");
	printf("'%s' -> (%ld) = (%lu)\n", "test", ft_strlen("test"), strlen("test"));
	
	printf("\n/* strcpy */\n");
	printf("'%s' = ('toto')\n", ft_strcpy(buffer, "toto"));

	clear_buffer(buffer);

	printf("\n/* strncmp*/\n");
	char *s1="oui";
	char *s2="test";
	printf("'%s' ? '%s' -> %d = %d\n", s1, s2, ft_strcmp(s1, s2), strcmp(s1, s2));

	printf("\n/* read*/\n");
	fd = open("main.c", O_RDONLY);
	ft_read(fd,buffer, 890);
	close(fd);
	fd = open("main.c", O_RDONLY);
	read(fd,buffer2, 890);
	close(fd);
	printf("'%s'\n=\n'%s'\n",buffer, buffer2);


	printf("\n/* write*/\n");
	ft_write(0,"oui\n", 5);
	write(0, "oui\n", 5);


	printf("\n/* strdup*/\n");
	char *str="nonoon";
	char *str2="ouihijbobnjd";

	str2 = ft_strdup(str);

	printf("'%s' = '%s'\n", str, str2);
	return (0);
}