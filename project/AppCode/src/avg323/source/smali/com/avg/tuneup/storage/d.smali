.class Lcom/avg/tuneup/storage/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/pm/PackageManager;

.field final synthetic b:Lcom/avg/tuneup/storage/c;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/storage/c;Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iput-object p2, p0, Lcom/avg/tuneup/storage/d;->a:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-virtual {v0}, Lcom/avg/tuneup/storage/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->f(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->g(Lcom/avg/tuneup/storage/b;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    new-instance v1, Lcom/avg/tuneup/b;

    iget-object v2, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v2, v2, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v2}, Lcom/avg/tuneup/storage/b;->h(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v4, v4, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v4}, Lcom/avg/tuneup/storage/b;->b(Lcom/avg/tuneup/storage/b;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/avg/tuneup/b;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/avg/tuneup/storage/b;->a(Lcom/avg/tuneup/storage/b;Lcom/avg/tuneup/b;)Lcom/avg/tuneup/b;

    iget-object v0, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->g(Lcom/avg/tuneup/storage/b;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v1, v1, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v1}, Lcom/avg/tuneup/storage/b;->i(Lcom/avg/tuneup/storage/b;)Lcom/avg/tuneup/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    iget-object v0, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->j(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->tv_loading:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->k(Lcom/avg/tuneup/storage/b;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->apps_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/storage/d;->b:Lcom/avg/tuneup/storage/c;

    iget-object v0, v0, Lcom/avg/tuneup/storage/c;->a:Lcom/avg/tuneup/storage/b;

    invoke-static {v0}, Lcom/avg/tuneup/storage/b;->i(Lcom/avg/tuneup/storage/b;)Lcom/avg/tuneup/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/b;->notifyDataSetChanged()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avg/tuneup/storage/e;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/storage/e;-><init>(Lcom/avg/tuneup/storage/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
