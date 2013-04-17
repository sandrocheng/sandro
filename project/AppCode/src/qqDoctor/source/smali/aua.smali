.class final Laua;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Latz;


# direct methods
.method constructor <init>(Latz;)V
    .locals 0

    iput-object p1, p0, Laua;->a:Latz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Laua;->a:Latz;

    invoke-static {v0}, Latz;->a(Latz;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laua;->a:Latz;

    invoke-static {v0}, Latz;->b(Latz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
