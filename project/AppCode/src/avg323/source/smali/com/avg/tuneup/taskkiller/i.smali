.class Lcom/avg/tuneup/taskkiller/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/taskkiller/h;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/h;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->apps_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->g(Lcom/avg/tuneup/taskkiller/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->h(Lcom/avg/tuneup/taskkiller/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->f(Lcom/avg/tuneup/taskkiller/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/avg/tuneup/taskkiller/d;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->ll_bottom_panel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-virtual {v2}, Lcom/avg/tuneup/taskkiller/d;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->i(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v3, v3, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v3}, Lcom/avg/tuneup/taskkiller/d;->j(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v3

    sget v4, Lcom/avg/a/g;->title_task_killer_preference:I

    invoke-virtual {v3, v4}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v3, v3, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v3}, Lcom/avg/tuneup/taskkiller/d;->f(Lcom/avg/tuneup/taskkiller/d;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v3, v3, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    invoke-static {v0, v2, v3}, Lcom/avg/tuneup/taskkiller/d;->a(Lcom/avg/tuneup/taskkiller/d;Ljava/lang/String;Landroid/view/View;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    sget v2, Lcom/avg/a/e;->tv_no_running_tasks:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/i;->a:Lcom/avg/tuneup/taskkiller/h;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-virtual {v2}, Lcom/avg/tuneup/taskkiller/d;->G()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
