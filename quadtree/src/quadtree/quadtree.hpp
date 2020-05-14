#ifndef quadtree_hpp
#define quadtree_hpp

//Represents 2D coordinates stored within a QuadTreeNode
struct Point
{
    float x, y;
    Point()
    {
        Point(0, 0);
    };
    Point(int a, int b)
    {
        x = a;
        y = b;
    }
};

//Represents AABB of each node
struct Rect
{
    int x, y, w, h;
    Rect()
    {
    }

    Rect(int _x, int _y, int _w, int _h)
    {
        x = _x;
        y = _y;
        w = _w;
        h = _h;
    }

    bool contains(Point p)
    {
        return (p.x >= x && p.x < (x + w)) && (p.y >= y && p.y < (y + h));
    }
};

class QuadTreeNode
{

    static const int CAPACITY = 1; // max number of points that can fit within a leaf node
public:
    Rect *bounds;
    Point data[CAPACITY];
    int count = 0;

    // children
    QuadTreeNode *nw = nullptr;
    QuadTreeNode *ne = nullptr;
    QuadTreeNode *sw = nullptr;
    QuadTreeNode *se = nullptr;

    QuadTreeNode(int x, int y, int w, int h);
    bool insert(Point p);
    bool isLeaf() { return nw == nullptr; }; // returns false if children have been initialized
private:
    void subdivide();
};

#endif // quadtree_hpp
