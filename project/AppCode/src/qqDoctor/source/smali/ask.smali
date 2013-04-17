.class public abstract Lask;
.super Landroid/os/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lask$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:J

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lask$a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:I

.field protected e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:J

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llr;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLandroid/os/Handler;)V
    .locals 2

    const/16 v0, 0xa

    invoke-direct {p0, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lasm;

    invoke-direct {v0, p0}, Lasm;-><init>(Lask;)V

    iput-object v0, p0, Lask;->o:Ljava/lang/Runnable;

    iput-object p1, p0, Lask;->a:Landroid/content/Context;

    iput-object p2, p0, Lask;->j:Ljava/lang/String;

    iput-wide p3, p0, Lask;->l:J

    iput-object p5, p0, Lask;->f:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lask;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lask;->m:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lask;->c:Ljava/util/HashMap;

    invoke-super {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lasl;

    invoke-virtual {p0}, Lask;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lasl;-><init>(Lask;Landroid/os/Looper;)V

    iput-object v0, p0, Lask;->g:Landroid/os/Handler;

    iget-object v0, p0, Lask;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lask;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lask;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    iput v0, p0, Lask;->h:I

    return-void
.end method

.method protected static a(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ldx;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ldx;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lask;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lask;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lask;)V
    .locals 3

    const/4 v2, 0x2

    iput v2, p0, Lask;->i:I

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lask;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lask;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lask;->k:J

    iget-object v0, p0, Lask;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lask;->f()V

    iput v2, p0, Lask;->h:I

    goto :goto_0
.end method

.method static synthetic a(Lask;Ljava/io/File;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lask;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lask;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lask$a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lask$a;->a:Llr;

    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Llr;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    invoke-virtual {p0, v1, p1}, Lask;->a(Llr;Ljava/io/File;)Llr;

    move-result-object v0

    iget-object v1, p0, Lask;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lask;->d(Ljava/io/File;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, v1, p1}, Lask;->b(Llr;Ljava/io/File;)Llr;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lask;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Llr;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lask;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lask;->c(Ljava/io/File;)Llr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lask;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lask;->n:Z

    return p1
.end method

.method static synthetic b(Lask;)V
    .locals 3

    const/4 v2, 0x3

    iput v2, p0, Lask;->i:I

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lask;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lask;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    iget-object v1, p0, Lask;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v2, p0, Lask;->h:I

    goto :goto_0
.end method

.method static synthetic c(Lask;)V
    .locals 3

    const/4 v2, 0x4

    iput v2, p0, Lask;->i:I

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lask;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lask;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    iget-object v1, p0, Lask;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v2, p0, Lask;->h:I

    goto :goto_0
.end method

.method static synthetic d(Lask;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x6

    iput v2, p0, Lask;->i:I

    iget v0, p0, Lask;->h:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lask;->h:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lask;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lask;->toString()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    iget-object v1, p0, Lask;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput v2, p0, Lask;->h:I

    goto :goto_0
.end method

.method static synthetic e(Lask;)V
    .locals 1

    invoke-virtual {p0}, Lask;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method static synthetic f(Lask;)I
    .locals 1

    iget v0, p0, Lask;->h:I

    return v0
.end method

.method static synthetic g(Lask;)Z
    .locals 1

    iget-boolean v0, p0, Lask;->n:Z

    return v0
.end method

.method static synthetic h(Lask;)Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lask;->k:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lask;->l:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    iget-object v4, p0, Lask;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lask;->f:Landroid/os/Handler;

    const/16 v5, 0x3e8

    iget-object v6, p0, Lask;->m:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    iput-wide v0, p0, Lask;->k:J

    iget-object v0, p0, Lask;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lask;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lask;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lask;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lask;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lask;)V
    .locals 3

    iget v0, p0, Lask;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lask;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lask;->toString()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lask;->f:Landroid/os/Handler;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lask;->m:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    const/4 v0, 0x5

    iput v0, p0, Lask;->h:I

    invoke-virtual {p0}, Lask;->g()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Llr;Ljava/io/File;)Llr;
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected final a(Ljava/io/File;)Z
    .locals 2

    invoke-static {p1}, Lk;->b(Ljava/io/File;)I

    move-result v0

    iget v1, p0, Lask;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Llr;Ljava/io/File;)Llr;
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected abstract b(Ljava/io/File;)Z
.end method

.method protected abstract c(Ljava/io/File;)Llr;
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected abstract d(Ljava/io/File;)V
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lask;->g:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseScanHandlerThread:State From "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lask;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lask;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
