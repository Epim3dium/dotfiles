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
        renderdoc           # Graphics debugger
        tracy               # Graphics profiler
        vulkan-tools-lunarg # vkconfig
    ];

    buildInputs = with pkgs; [
        glm
        glfw
        freetype
        vulkan-loader
    ];

    LD_LIBRARY_PATH="${glfw}:${vulkan-loader}/lib";
    VULKAN_SDK = "${vulkan-headers}";
    VK_LAYER_PATH = "${vulkan-validation-layers}/share/vulkan/explicit_layer.d";
    shellHook = ''
        # Prepend or append directories to the PATH
        export PATH="$PATH:$LD_LIBRARY_PATH"
    '';
}
