/*
** my_putstr.c for my_putstr in /home/bequig_s//piscine/jour4
**
** Made by sebastien bequignon
** Login   <bequig_s@epitech.net>
**
** Started on  Thu Oct  4 10:05:15 2012 sebastien bequignon
** Last update Sun Nov 25 22:56:04 2012 sebastien bequignon
*/

#include <stdlib.h>
#include "my.h"

void	my_putstr(char *str)
{
  if (str == NULL)
    my_putstr("{NULL}");
  else
    write(1, str, my_strlen(str));
}

void	my_putstr_pgm(char *str)
{
  while (*str)
    write(1, str++, 1);
}
