.class Lcom/avg/tuneup/taskkiller/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/taskkiller/b;

.field final synthetic b:Lcom/avg/tuneup/taskkiller/j;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/j;Lcom/avg/tuneup/taskkiller/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iput-object p2, p0, Lcom/avg/tuneup/taskkiller/k;->a:Lcom/avg/tuneup/taskkiller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v1, v1, Lcom/avg/tuneup/taskkiller/j;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->f(Lcom/avg/tuneup/taskkiller/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/k;->a:Lcom/avg/tuneup/taskkiller/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->f(Lcom/avg/tuneup/taskkiller/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->tv_no_running_tasks:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v1, v1, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v1, v1, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-virtual {v1}, Lcom/avg/tuneup/taskkiller/d;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->ll_bottom_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->m(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v2}, Lcom/avg/tuneup/taskkiller/d;->n(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    sget v3, Lcom/avg/a/g;->title_task_killer_preference:I

    invoke-virtual {v2, v3}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/h;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/k;->b:Lcom/avg/tuneup/taskkiller/j;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/j;->b:Lcom/avg/tuneup/taskkiller/h;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/avg/tuneup/taskkiller/d;->b(Lcom/avg/tuneup/taskkiller/d;Ljava/lang/String;Landroid/view/View;)V

    :cond_1
    return-void
.end method
