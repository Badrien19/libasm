/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: badrien <badrien@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/10/23 14:50:59 by badrien           #+#    #+#             */
/*   Updated: 2020/10/23 15:08:29 by badrien          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>

int		ft_strlen(char const *str);

int main()
{
	printf("%s = (%d) = (%lu)", "test", ft_strlen("test"), strlen("test"));

	return (0);
}