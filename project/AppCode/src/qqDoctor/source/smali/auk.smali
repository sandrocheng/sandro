.class final Lauk;
.super Ljava/lang/Object;

# interfaces
.implements Ldv;


# instance fields
.field private synthetic a:Lauj;


# direct methods
.method constructor <init>(Lauj;)V
    .locals 0

    iput-object p1, p0, Lauk;->a:Lauj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lauk;->a:Lauj;

    iget-object v0, v0, Lauj;->a:Latz;

    invoke-static {v0}, Latz;->f(Latz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
