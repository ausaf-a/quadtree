#include "quadtree.hpp"
#include <iostream>
QuadTreeNode::QuadTreeNode(int x, int y, int w, int h)
{
    this->bounds = new Rect{x, y, w, h};
    
    //std::cout << x << "," << y << " " << w << "," << h << std::endl;  
}

bool QuadTreeNode::insert(Point p)
{

    if (!this->bounds->contains(p))
    {
        return false;
    }

    if (isLeaf())
    {
        if (count < CAPACITY)
        {
            this->data[count] = p;
            count++;
            return true;
        }
        subdivide();
    }

    if (nw->insert(p))
    {
        return true;
    }
    if (ne->insert(p))
    {
        return true;
    }
    if (sw->insert(p))
    {
        return true;
    }
    if (se->insert(p))
    {
        return true;
    }

    std::cout << "duplicate point?" << std::endl;
    return false;
}

void QuadTreeNode::subdivide()
{
    int x = bounds->x;
    int y = bounds->y;
    int w = bounds->w;
    int h = bounds->h;

    //create 4 children and pass respective quadrant bounds
    nw = new QuadTreeNode(x, y, w / 2, h / 2);
    ne = new QuadTreeNode(x + w / 2, y, w / 2, h / 2);
    sw = new QuadTreeNode(x, y + h / 2, w / 2, h / 2);
    se = new QuadTreeNode(x + w / 2, y + h / 2, w / 2, h / 2);

    //find a child which encloses each of the existing points
    for (int i = 0; i < count; i++)
    {

        if (nw->insert(data[i]))
            continue;

        if (ne->insert(data[i]))
            continue;

        if (sw->insert(data[i]))
            continue;

        if (se->insert(data[i]))
            continue;

        //should never reach this point
        std::cerr << "failed to place existing point after subdivide()" << std::endl;  
    }
}