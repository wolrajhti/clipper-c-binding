#include <stdio.h>
#include "../includes/clipper-binding.h"
#include "../clipper_ver6.4.2/cpp/clipper.hpp"

int main(void)
{
  ClipperLib::IntPoint pt = ClipperLib::IntPoint(1, 2);
  printf("%d\n", fortytwo());
  printf("%d\n", pt.X);
  printf("%d\n", pt.Y);
  return 0;
}