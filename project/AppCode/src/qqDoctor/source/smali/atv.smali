.class final Latv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Latu;


# direct methods
.method constructor <init>(Latu;)V
    .locals 0

    iput-object p1, p0, Latv;->a:Latu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Latv;->a:Latu;

    iget-object v0, v0, Latu;->a:Latn;

    invoke-static {v0}, Latn;->q(Latn;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Latv;->a:Latu;

    iget-object v1, v1, Latu;->a:Latn;

    invoke-static {v1}, Latn;->z(Latn;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    invoke-static {v0}, Lfi;->b(Llj;)V

    iget-object v0, p0, Latv;->a:Latu;

    iget-object v0, v0, Latu;->a:Latn;

    invoke-static {v0}, Latn;->D(Latn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpx;->a(Landroid/content/Context;)Lpx;

    move-result-object v0

    invoke-virtual {v0}, Lpx;->d()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Latv;->a:Latu;

    iget-object v1, v1, Latu;->a:Latn;

    invoke-static {v1}, Latn;->z(Latn;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Latv;->a:Latu;

    iget-object v0, v0, Latu;->a:Latn;

    invoke-static {v0}, Latn;->E(Latn;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
