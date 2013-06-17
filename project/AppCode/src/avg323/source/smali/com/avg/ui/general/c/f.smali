.class public Lcom/avg/ui/general/c/f;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Landroid/view/View;

.field c:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Lcom/avg/ui/general/c/a;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/avg/ui/general/c/f;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/avg/ui/general/c/f;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/avg/ui/general/c/f;->c:Landroid/widget/PopupMenu;

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/avg/ui/general/c/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/avg/ui/general/c/f;->b:Landroid/view/View;

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/avg/ui/general/c/f;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/avg/ui/general/c/f;->b:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/avg/ui/general/c/f;->c:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/avg/ui/general/c/f;->c:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/avg/ui/general/c/g;

    invoke-direct {v1, p0, p1}, Lcom/avg/ui/general/c/g;-><init>(Lcom/avg/ui/general/c/f;Lcom/avg/ui/general/c/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/c/f;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public a(IIILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/c/f;->c:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method
