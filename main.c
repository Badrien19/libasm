/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: badrien <badrien@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/23 14:50:59 by badrien           #+#    #+#             */
/*   Updated: 2020/10/30 14:49:41 by badrien          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>

size_t		ft_strlen(const char *str);
char	*ft_strcpy(const char *dst, const char *src);

int main()
{
	char buffer[100];

	printf("/* strlen */");
	printf("'%s' -> (%ld) = (%lu)\n", "test", ft_strlen("test"), strlen("test"));
	
	printf("/* strcpy */");
	printf("'%s' = ('toto')\n", ft_strcpy(buffer, "toto"));

	return (0);
}