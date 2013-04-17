.class final Lbmr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;


# instance fields
.field private synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;)V
    .locals 0

    iput-object p1, p0, Lbmr;->a:Lbmp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageReinstall(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lbmr;->a:Lbmp;

    invoke-static {v0}, Lbmp;->U(Lbmp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_3

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lbmr;->a:Lbmp;

    invoke-static {v0}, Lbmp;->S(Lbmp;)Lalg;

    move-result-object v0

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lalg;->a(Ljava/lang/Integer;)V

    iget-object v0, p0, Lbmr;->a:Lbmp;

    invoke-static {v0}, Lbmp;->U(Lbmp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lbmr;->a:Lbmp;

    invoke-static {v1}, Lbmp;->U(Lbmp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->z()V

    :cond_1
    iget-object v0, p0, Lbmr;->a:Lbmp;

    invoke-static {v0}, Lbmp;->V(Lbmp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
