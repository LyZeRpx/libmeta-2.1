/*
** EPITECH PROJECT, 2024
** meta_PROJECT
** File description:
** DESCRIPTION
*/

#include "meta_libc.h"

char *meta_strcat(char *dest, char const *src)
{
    dest = meta_strcpy(dest + meta_strlen(dest), (char *)src);
    return dest;
}
