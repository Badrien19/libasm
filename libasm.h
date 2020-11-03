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

size_t      ft_strlen(const char *s);
//ssize_t     ft_read(int fildes, void *buf, size_t nbyte);
//ssize_t     ft_write(int fildes, const void *buf, size_t nbyte);
int         ft_strcmp(const char *s1, const char *s2);
char        *ft_strcpy(char *dst, const char *src);
//char        *ft_strdup(const char *s1);

#endif