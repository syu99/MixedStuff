/*
** my_strstr.c for my_strstr in /home/bequig_s//piscine/jour6
**
** Made by sebastien bequignon
** Login   <bequig_s@epitech.net>
**
** Started on  Mon Oct  8 12:13:20 2012 sebastien bequignon
** Last update Sun Nov  4 22:08:18 2012 sebastien bequignon
*/

int	my_is_alpha(char c)
{
  return ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'));
}

int	my_is_alphanum(char c)
{
  return (my_is_alpha(c) || (c >= '0' && c <= '9'));
}

int	my_strcmp_ls_p1(char *s1, char *s2)
{
  int	i;
  int	j;

  i = 1;
  j = 0;
  while (s1[i] != '\0' && s2[j] != '\0' && s1[i] == s2[j])
    {
      j++;
      i++;
    }
  if (s1[i] - s2[j] == 0)
    return (1);
  if (s1[i] >= 'A' && s1[i] <= 'Z' && s1[i] == s2[j] - 32)
    return (1);
  if (s2[j] >= 'A' && s2[j] <= 'Z' && s2[j] == s1[i] - 32)
    return (-1);
  return (s1[i] - s2[j]);
}

int	my_strcmp_ls_p2(char *s1, char *s2)
{
  int	i;
  int	j;

  i = 0;
  j = 1;
  while (s1[i] != '\0' && s2[j] != '\0' && s1[i] == s2[j])
    {
      j++;
      i++;
    }
  if (s1[i] - s2[j] == 0)
    return (-1);
  if (s1[i] >= 'A' && s1[i] <= 'Z' && s1[i] == s2[j] - 32)
      	return (1);
  if (s2[j] >= 'A' && s2[j] <= 'Z' && s2[j] == s1[i] - 32)
    return (-1);
  return (s1[i] - s2[j]);
}

/*
** reproduce ls priorities
** "32" = 'a' - 'A' for space between upper and lower case
*/
int	my_strcmp_ls(char *s1, char *s2)
{
  int	i;

  if (s1[0] == '.' && s2[0] != '.')
    return my_strcmp_ls_p1(s1, s2);
  else if (s2[0] == '.' && s1[0] != '.')
    return my_strcmp_ls_p2(s1, s2);
  else
    {
      i = 0;
      while (s1[i] != '\0' && s2[i] != '\0' && s1[i] == s2[i])
	i++;
      if (s1[i] >= 'A' && s1[i] <= 'Z' && s1[i] == s2[i] - 32)
      	return (1);
      if (s2[i] >= 'A' && s2[i] <= 'Z' && s2[i] == s1[i] - 32)
      	return (-1);
      if (s1[i] >= 'A' && s1[i] <= 'Z' && s2[i] >= 'a' && s2[i] <= 'z')
	return (s1[i] - s2[i] + 32);
      if (s2[i] >= 'A' && s2[i] <= 'Z' && s1[i] >= 'a' && s1[i] <= 'z')
	return (s1[i] - s2[i] - 32);
      return (s1[i] - s2[i]);
    }
}