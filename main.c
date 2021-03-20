#include "libasm.h"


int     main()
{
    int     i;

    char *str = "abcdef";
    i = ft_strlen(str);
    printf("test 1 - ft_strlen\n");
    printf("%d\n", i);

    char *str1 = "psnapp\n";
	char dst[] = "polina ";
	ft_strcpy(dst, str1);
    printf("\ntest 2 - ft_strcpy\n");
	printf("%s\n", dst);

    printf("test 3 - ft_strcmp\n");
    i = ft_strcmp(str, str1);
    printf("%d\n", i);
    printf("test 3.1 - ft_strcmp\n");
    i = ft_strcmp(str1, str);
    printf("%d\n", i);
    printf("test 3.2 - ft_strcmp\n");
    i = ft_strcmp(str, str);
    printf("%d\n", i);

    printf("\ntest 4 - ft_strdup\n");
    printf("%s\n", ft_strdup(str));

    printf("\ntest 5 - ft_write\n");
    char *str3 = "abcdef";
    errno = 0;
    write(-1, str3, 6);
    printf("\n%d\n", ft_write(1, str3, 6));
    printf("%d\n", errno);

    printf("\ntest 6 - ft_read\n");
    char buf[13];
    int fd = open("read.txt", O_RDONLY);
    printf("%d\n", fd);
    printf("%d\n", ft_read(fd, buf, 13));
    printf("%d\n", errno);
    printf("%s\n", buf);
    return (0);
}