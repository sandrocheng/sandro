.class Lcom/avg/tuneup/traffic/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/traffic/y;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/y;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->A(Lcom/avg/tuneup/traffic/y;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    new-instance v1, Lcom/avg/tuneup/b;

    iget-object v2, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v2}, Lcom/avg/tuneup/traffic/y;->B(Lcom/avg/tuneup/traffic/y;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v4}, Lcom/avg/tuneup/traffic/y;->a(Lcom/avg/tuneup/traffic/y;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/tuneup/b;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/avg/tuneup/traffic/y;->a(Lcom/avg/tuneup/traffic/y;Lcom/avg/tuneup/b;)Lcom/avg/tuneup/b;

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->A(Lcom/avg/tuneup/traffic/y;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->b(Lcom/avg/tuneup/traffic/y;)Lcom/avg/tuneup/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->b(Lcom/avg/tuneup/traffic/y;)Lcom/avg/tuneup/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->apps_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->q(Lcom/avg/tuneup/traffic/y;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->tv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/y;->b(Lcom/avg/tuneup/traffic/y;)Lcom/avg/tuneup/b;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/ag;->a:Lcom/avg/tuneup/traffic/y;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/y;->a(Lcom/avg/tuneup/traffic/y;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/b;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
