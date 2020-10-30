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

#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

int		ft_strlen(char const *str);
char		*ft_strcpy(char *dst, const char *src);

int main()
{
	char buffer[100];
	printf("%s = (%d) = (%lu)\n", "test", ft_strlen("test"), strlen("test"));
	
	printf("`%s` (`toto`)\n", ft_strcpy(buffer, "toto"));

	return (0);
}