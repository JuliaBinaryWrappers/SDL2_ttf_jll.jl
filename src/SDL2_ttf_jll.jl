# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SDL2_ttf_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SDL2_ttf")
JLLWrappers.@generate_main_file("SDL2_ttf", UUID("ca9d4746-8a27-5104-babe-80f83b336947"))
end  # module SDL2_ttf_jll
