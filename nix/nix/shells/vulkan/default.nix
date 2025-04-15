with import <nixpkgs> {};

mkShell {
    name = "vulkan";
    packages = [
        glm
        glfw
        freetype
        vulkan-headers
        vulkan-loader
        vulkan-validation-layers
        vulkan-tools        # vulkaninfo
        shaderc             # GLSL to SPIRV compiler - glslc
        glslang
        renderdoc           # Graphics debugger
        tracy               # Graphics profiler
        vulkan-tools-lunarg # vkconfig
        valgrind
        kdePackages.kcachegrind
    ];

    buildInputs = with pkgs; [
        glm
        glfw
        freetype
        vulkan-loader
    ];

    LD_LIBRARY_PATH = "${pkgs.vulkan-loader}/lib:${pkgs.glfw}/lib/cmake";
    VULKAN_SDK = "${vulkan-headers}";
    VK_LAYER_PATH = "${vulkan-validation-layers}/share/vulkan/explicit_layer.d";
    shellHook = ''
        # Prepend or append directories to the PATH
        export PATH="$PATH:$LD_LIBRARY_PATH"
    '';
}
