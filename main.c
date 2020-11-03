/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <user42@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/23 14:50:59 by badrien           #+#    #+#             */
/*   Updated: 2020/11/03 14:18:50 by user42           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	char buffer[100];

	printf("\n/* strlen */\n");
	printf("'%s' -> (%ld) = (%lu)\n", "test", ft_strlen("test"), strlen("test"));
	
	printf("\n/* strcpy */\n");
	printf("'%s' = ('toto')\n", ft_strcpy(buffer, "toto"));

	printf("\n/* strncmp*/\n");
	char *s1="oui";
	char *s2="test";
	printf("'%s' ? '%s' -> %d = %d\n", s1, s2, ft_strcmp(s1, s2), strcmp(s1, s2));

	return (0);
}