.class final Lcom/ijinshan/cleaner/t;
.super Landroid/content/pm/e;
.source "CleanRubEngine.java"


# instance fields
.field final synthetic b:Lcom/ijinshan/cleaner/o;

.field private c:Lcom/ijinshan/cleaner/a/a;

.field private d:Z

.field private e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ijinshan/cleaner/o;Lcom/ijinshan/cleaner/a/a;ZFLandroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/ijinshan/cleaner/t;->b:Lcom/ijinshan/cleaner/o;

    invoke-direct {p0}, Landroid/content/pm/e;-><init>()V

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/cleaner/t;->c:Lcom/ijinshan/cleaner/a/a;

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/t;->d:Z

    .line 499
    iput-object p2, p0, Lcom/ijinshan/cleaner/t;->c:Lcom/ijinshan/cleaner/a/a;

    .line 500
    iput-boolean p3, p0, Lcom/ijinshan/cleaner/t;->d:Z

    .line 501
    invoke-static {p1, p4}, Lcom/ijinshan/cleaner/o;->a(Lcom/ijinshan/cleaner/o;F)F

    .line 502
    iput-object p5, p0, Lcom/ijinshan/cleaner/t;->e:Landroid/os/Handler;

    .line 503
    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/ijinshan/cleaner/t;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v0}, Lcom/ijinshan/cleaner/o;->e(Lcom/ijinshan/cleaner/o;)Lcom/ijinshan/cleaner/s;

    iget-object v0, p0, Lcom/ijinshan/cleaner/t;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v0}, Lcom/ijinshan/cleaner/o;->d(Lcom/ijinshan/cleaner/o;)F

    iget-object v0, p0, Lcom/ijinshan/cleaner/t;->c:Lcom/ijinshan/cleaner/a/a;

    invoke-virtual {v0}, Lcom/ijinshan/cleaner/a/a;->c()Ljava/lang/String;

    .line 507
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/ijinshan/cleaner/t;->c:Lcom/ijinshan/cleaner/a/a;

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v0, v1, v2}, Lcom/ijinshan/cleaner/a/a;->a(J)V

    .line 509
    new-instance v0, Lcom/ijinshan/cleaner/u;

    iget-object v1, p0, Lcom/ijinshan/cleaner/t;->b:Lcom/ijinshan/cleaner/o;

    invoke-direct {v0, v1}, Lcom/ijinshan/cleaner/u;-><init>(Lcom/ijinshan/cleaner/o;)V

    .line 510
    sget v1, Lcom/ijinshan/cleaner/o;->a:I

    iput v1, v0, Lcom/ijinshan/cleaner/u;->a:I

    .line 511
    iget-object v1, p0, Lcom/ijinshan/cleaner/t;->c:Lcom/ijinshan/cleaner/a/a;

    iput-object v1, v0, Lcom/ijinshan/cleaner/u;->b:Lcom/ijinshan/cleaner/a/a;

    .line 512
    iget-object v1, p0, Lcom/ijinshan/cleaner/t;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v1}, Lcom/ijinshan/cleaner/o;->f(Lcom/ijinshan/cleaner/o;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/cleaner/t;->c:Lcom/ijinshan/cleaner/a/a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v1, p0, Lcom/ijinshan/cleaner/t;->b:Lcom/ijinshan/cleaner/o;

    invoke-static {v1}, Lcom/ijinshan/cleaner/o;->e(Lcom/ijinshan/cleaner/o;)Lcom/ijinshan/cleaner/s;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ijinshan/cleaner/s;->a(Lcom/ijinshan/cleaner/u;)V

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/t;->d:Z

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/ijinshan/cleaner/t;->b:Lcom/ijinshan/cleaner/o;

    iget-object v0, p0, Lcom/ijinshan/cleaner/t;->e:Landroid/os/Handler;

    invoke-static {v0}, Lcom/ijinshan/cleaner/o;->a(Landroid/os/Handler;)V

    .line 518
    :cond_1
    return-void
.end method
