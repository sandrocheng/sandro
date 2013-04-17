.class final Laic;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Laib;


# direct methods
.method constructor <init>(Laib;)V
    .locals 0

    iput-object p1, p0, Laic;->a:Laib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Laic;->a:Laib;

    iget-object v1, v1, Laib;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Laic;->a:Laib;

    iget-object v1, v1, Laib;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laic;->a:Laib;

    invoke-static {v0}, Laib;->a(Laib;)Layp;

    move-result-object v0

    invoke-virtual {v0}, Layp;->b()V

    iget-object v0, p0, Laic;->a:Laib;

    invoke-virtual {v0}, Laib;->notifyDataSetChanged()V

    iget-object v0, p0, Laic;->a:Laib;

    iget-object v0, v0, Laib;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laic;->a:Laib;

    invoke-static {v0}, Laib;->b(Laib;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :cond_0
    return-void
.end method
