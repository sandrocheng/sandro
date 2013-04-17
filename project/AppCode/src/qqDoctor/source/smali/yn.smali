.class public final Lyn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/service/QQPimApplication;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/QQPimApplication;)V
    .locals 0

    iput-object p1, p0, Lyn;->a:Lcom/tencent/qqpimsecure/service/QQPimApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lyr;

    invoke-direct {v0}, Lyr;-><init>()V

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->b()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lyr;->a(Landroid/content/Context;BZ)Z

    new-instance v0, Lyo;

    invoke-direct {v0, p0}, Lyo;-><init>(Lyn;)V

    invoke-virtual {v0}, Lyo;->start()V

    return-void
.end method
