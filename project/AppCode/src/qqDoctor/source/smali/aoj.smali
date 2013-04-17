.class final Laoj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/update/CheckResult;

.field private synthetic b:Laoi;


# direct methods
.method constructor <init>(Laoi;Lcom/tencent/tmsecure/module/update/CheckResult;)V
    .locals 0

    iput-object p1, p0, Laoj;->b:Laoi;

    iput-object p2, p0, Laoj;->a:Lcom/tencent/tmsecure/module/update/CheckResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onRetry()V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lss;

    iget-object v2, p0, Laoj;->b:Laoi;

    iget-object v2, v2, Laoi;->a:Laoa;

    invoke-static {v2}, Laoa;->ad(Laoa;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, v0}, Lss;-><init>(Landroid/content/Context;ZZ)V

    iget-object v2, p0, Laoj;->a:Lcom/tencent/tmsecure/module/update/CheckResult;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lss;->a(Lcom/tencent/tmsecure/module/update/CheckResult;Lcom/tencent/tmsecure/module/update/IUpdateListener;)V

    move v1, v0

    :goto_0
    iget-object v0, p0, Laoj;->b:Laoi;

    iget-object v0, v0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Laoj;->b:Laoi;

    iget-object v0, v0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v2, v0, Llc;->b:I

    const/16 v3, 0x7d9

    if-ne v2, v3, :cond_0

    const/16 v2, 0xfa8

    iput v2, v0, Llc;->b:I

    iget-object v2, p0, Laoj;->b:Laoi;

    iget-object v2, v2, Laoi;->a:Laoa;

    invoke-static {v2}, Laoa;->R(Laoa;)Lum;

    move-result-object v2

    iget-object v2, v2, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Laoj;->b:Laoi;

    iget-object v2, v2, Laoi;->a:Laoa;

    invoke-static {v2}, Laoa;->R(Laoa;)Lum;

    move-result-object v2

    iget-object v2, v2, Lum;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoj;->b:Laoi;

    iget-object v0, v0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->g(Laoa;)V

    iget-object v0, p0, Laoj;->b:Laoi;

    iget-object v0, v0, Laoi;->a:Laoa;

    invoke-static {v0}, Laoa;->i(Laoa;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method
