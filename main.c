/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <user42@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/23 14:50:59 by badrien           #+#    #+#             */
/*   Updated: 2020/11/02 15:44:58 by user42           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int main(void)
{
	char buffer[100];

	printf("/* strlen */");
	printf("'%s' -> (%ld) = (%lu)\n", "test", ft_strlen("test"), strlen("test"));
	
	printf("/* strcpy */");
	printf("'%s' = ('toto')\n", ft_strcpy(buffer, "toto"));

	return (0);
}