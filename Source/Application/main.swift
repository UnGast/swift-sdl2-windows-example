@_implementationOnly
import CSDL2

print("IT WORKS")

SDL_Init(SDL_INIT_VIDEO);

let window = SDL_CreateWindow(
    "SDL2Test",
    0,
    0,
    640,
    480,
    0
);

let renderer = SDL_CreateRenderer(window, -1, UInt32(SDL_RENDERER_SOFTWARE.rawValue));
SDL_SetRenderDrawColor(renderer, 0, 0, 0, UInt8(SDL_ALPHA_OPAQUE));
SDL_RenderClear(renderer);
SDL_RenderPresent(renderer);

SDL_Delay(3000);

SDL_DestroyWindow(window);
SDL_Quit();