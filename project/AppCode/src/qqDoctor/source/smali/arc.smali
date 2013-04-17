.class final Larc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field private synthetic a:Larb;


# direct methods
.method constructor <init>(Larb;)V
    .locals 0

    iput-object p1, p0, Larc;->a:Larb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Larc;->a:Larb;

    invoke-static {v1}, Larb;->a(Larb;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eq v0, p3, :cond_0

    iget-object v1, p0, Larc;->a:Larb;

    invoke-static {v1}, Larb;->b(Larb;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Larc;->a:Larb;

    invoke-static {v0}, Larb;->b(Larb;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Larc;->a:Larb;

    invoke-static {v0}, Larb;->b(Larb;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Larc;->a:Larb;

    invoke-static {v0}, Larb;->b(Larb;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    iget-object v0, p0, Larc;->a:Larb;

    invoke-static {v0}, Larb;->b(Larb;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ExpandableListView;->setSelectedGroup(I)V

    goto :goto_1
.end method
