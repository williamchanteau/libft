#include "libft.h"

size_t  ft_strlcat(char *dst, const char *src, size_t size)
{
    size_t  dlen;
    size_t  slen;
    size_t  i;

    dlen = 0;
    slen = 0;
    while (dst[dlen] && dlen < size)
        dlen++;
    while (src[slen])
        slen++;
    if (size <= dlen)
        return (size + slen);
    i = 0;
    while (src[i] && (dlen + i + i) < size)
    {
        dst[dlen + i] = src[i];
        i++;
    }
    dst[dlen + i] = '\0';
    return (dlen + slen);
}