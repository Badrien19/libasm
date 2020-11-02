#ifndef libasm_h
# define libasm_h
# include <stdio.h>
# include <fcntl.h>
# include <sys/types.h>
# include <sys/uio.h>
# include <unistd.h>
# include <errno.h>
# include <string.h>
# include <stdlib.h>

size_t ft_strlen(const char *str);
char *ft_strcpy(const char *dst, const char *src);

#endif