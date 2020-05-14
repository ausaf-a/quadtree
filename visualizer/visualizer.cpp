#include <iostream>
#include <SDL2/SDL.h>
#include <quadtree/quadtree.hpp>

#define WIDTH 800
#define HEIGHT 800
#define TITLE "QuadTree Visualizer"

bool running = false;
SDL_Window *window;
SDL_Renderer *renderer;
QuadTreeNode *root;

void handleEvents()
{
    SDL_Event event;
    while (SDL_PollEvent(&event))
    {
        switch (event.type)
        {
        case SDL_QUIT:
            running = false;
            break;
        case SDL_MOUSEBUTTONDOWN:
            root->insert(Point{event.button.x, event.button.y});
            break;
        default:
            break;
        }
    }
}

void renderQuadTreeNode(QuadTreeNode *node)
{
    SDL_Rect rect{node->bounds->x, node->bounds->y, node->bounds->w, node->bounds->h};
    SDL_SetRenderDrawColor(renderer, 0, 255, 0, 255);
    SDL_RenderDrawRect(renderer, &rect);

    if (!node->isLeaf())
    {
        renderQuadTreeNode(node->nw);
        renderQuadTreeNode(node->ne);
        renderQuadTreeNode(node->se);
        renderQuadTreeNode(node->sw);
    }
    else
    {
        SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255);
        SDL_RenderDrawPoint(renderer, node->data->x, node->data->y);
    }
}

void render()
{
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
    SDL_RenderClear(renderer);
    renderQuadTreeNode(root);
    SDL_RenderPresent(renderer);
}

int main(int argc, char **argv)
{

    if (SDL_Init(SDL_INIT_EVERYTHING) == 0)
    {
        std::cout << "SDL initialized successfully." << std::endl;
        window = SDL_CreateWindow(TITLE, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, WIDTH, HEIGHT, 0);
        if (!window)
        {
            std::cerr << "Error creating window." << std::endl;
            return 1;
        }

        renderer = SDL_CreateRenderer(window, -1, 0);
        if (!renderer)
        {
            std::cerr << "Error creating renderer." << std::endl;
            return 2;
        }

        root = new QuadTreeNode(0, 0, WIDTH, HEIGHT);
        running = true;
    }
    while (running)
    {
        handleEvents();
        render();
    }
    return 0;
}
