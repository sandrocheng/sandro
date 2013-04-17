.class final Lasm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lask;


# direct methods
.method constructor <init>(Lask;)V
    .locals 0

    iput-object p1, p0, Lasm;->a:Lask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lasm;->a:Lask;

    invoke-static {v0, v1}, Lask;->a(Lask;Z)Z

    :cond_0
    iget-object v0, p0, Lasm;->a:Lask;

    invoke-static {v0}, Lask;->f(Lask;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lasm;->a:Lask;

    iget-object v0, p0, Lasm;->a:Lask;

    iget-object v0, v0, Lask;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lask;->a(Lask;Z)Z

    iget-object v0, p0, Lasm;->a:Lask;

    invoke-static {v0}, Lask;->g(Lask;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lasm;->a:Lask;

    iget-object v0, v0, Lask;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v2, p0, Lasm;->a:Lask;

    invoke-static {v2, v0}, Lask;->a(Lask;Ljava/io/File;)V

    iget-object v0, p0, Lasm;->a:Lask;

    invoke-static {v0}, Lask;->h(Lask;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lasm;->a:Lask;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lask;->a(Lask;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lasm;->a:Lask;

    invoke-static {v0}, Lask;->j(Lask;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lasm;->a:Lask;

    invoke-static {v1}, Lask;->i(Lask;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lasm;->a:Lask;

    invoke-static {v0}, Lask;->g(Lask;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lasm;->a:Lask;

    invoke-static {v0}, Lask;->k(Lask;)V

    iget-object v0, p0, Lasm;->a:Lask;

    invoke-virtual {v0}, Lask;->d()V

    goto :goto_1
.end method
