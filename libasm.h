#ifndef LIBASM_H
# define LIBASM_H
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include "errno.h"

int     ft_strcmp(const char* string1, const char* string2 );
int     ft_strlen(const char *string);
char    *ft_strcpy(char *string1, const char *string2);
char    *ft_strdup(const char *string);
int     ft_write(int fd, void *buffer, unsigned length);
int     ft_read(int fd, void *buffer, unsigned count);


#endif