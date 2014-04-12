/*
** my_strncmp.c for my_strncmp in /home/bequig_s//piscine/jour6
**
** Made by sebastien bequignon
** Login   <bequig_s@epitech.net>
**
** Started on  Mon Oct  8 16:20:27 2012 sebastien bequignon
** Last update Thu Nov 29 19:15:04 2012 sebastien bequignon
*/

#include "my.h"

int	my_strncmp(char *s1, char *s2, int n)
{
  int	i;

  i = 0;
  while (i < n - 1 && s1[i] != '\0' && s2[i] != '\0' && s1[i] == s2[i])
    i++;
  return (s1[i] - s2[i]);
}
