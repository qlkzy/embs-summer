#include "util.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

static void vdbprint(const char *kind, const char *file, int line, const char *function, va_list args);

static int debug_level = DEBUG_INFO;


void error(const char *file, int line, const char *function, ...)
{
    va_list va;
    va_start(va, function);
    vdbprint("error", file, line, function, va);
    va_end(va);
    abort();
}

void warning(const char *file, int line, const char *function, ...)
{
    if (debug_level < DEBUG_WARNING)
        return;
    va_list va;
    va_start(va, function);
    vdbprint("warning", file, line, function, va);
    va_end(va);
    abort();
}

void info(const char *file, int line, const char *function, ...)
{
    if (debug_level < DEBUG_INFO)
        return;
    va_list va;
    va_start(va, function);
    vdbprint("info", file, line, function, va);
    va_end(va);
    abort();
}

void set_debug_level(int level)
{
    if (level < 0)
        level = 0;
    debug_level = level;
}

static void vdbprint(const char *kind, const char *file, int line, const char *function, va_list args)
{
    fprintf(stderr, "%s:%d: %s in function '%s': ", file, line, kind, function);
    vfprintf(stderr, "%s\n", args);
}
