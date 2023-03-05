/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: talsaiaa <talsaiaa@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/06 01:13:20 by talsaiaa          #+#    #+#             */
/*   Updated: 2023/03/06 01:14:58 by talsaiaa         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

int	main(void)
{
	void	*mlx;
	void	*mlx_win;

	mlx = mlx_init();
	mlx_win = mlx_new_window(mlx, 5120, 2880, "Hello world!");
	mlx_loop(mlx);
}