.class final Lbla;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbkz;


# direct methods
.method constructor <init>(Lbkz;)V
    .locals 0

    iput-object p1, p0, Lbla;->a:Lbkz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbla;->a:Lbkz;

    iget-object v0, v0, Lbkz;->c:Lbkn;

    invoke-static {v0}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, -0x34

    new-instance v2, Lblb;

    invoke-direct {v2, p0}, Lblb;-><init>(Lbla;)V

    invoke-static {v0, v1, v2}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    return-void
.end method
