.class public final Lcom/c/a/a/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/c/a/a/d;


# direct methods
.method public constructor <init>(Lcom/c/a/a/d;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 819
    iput-object p1, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    iput-object p2, p0, Lcom/c/a/a/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/c/a/a/ag;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 821
    invoke-virtual {p1}, Lcom/c/a/a/ag;->f()I

    move-result v0

    .line 823
    iget-object v1, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->i(Lcom/c/a/a/d;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v1, v0}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;I)I

    .line 828
    iget-object v0, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    iget-object v1, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/c/a/a/d;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;Landroid/location/Location;)Landroid/location/Location;

    .line 830
    iget-object v0, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 832
    iget-object v0, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->l(Lcom/c/a/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 833
    iget-object v0, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;J)J

    .line 834
    iget-object v0, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->l(Lcom/c/a/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 838
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->m(Lcom/c/a/a/d;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 839
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/c/a/a/k;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->m(Lcom/c/a/a/d;)Ljava/util/Vector;

    move-result-object v0

    sub-int v3, v1, v4

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a/h;

    iget-object v0, v0, Lcom/c/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->m(Lcom/c/a/a/d;)Ljava/util/Vector;

    move-result-object v0

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    goto :goto_0
.end method
