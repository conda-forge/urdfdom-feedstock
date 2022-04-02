#include <urdf_parser/urdf_parser.h>

#include <cstdlib>
#include <iostream>

int main()
{   
    urdf_export_helpers::URDFVersion urdfver;
    std::cerr << "Version of urdf format used: " 
              << urdfver.getMajor() << "."
              << urdfver.getMinor() << std::endl;
    
    return EXIT_SUCCESS;
}
