.class public final Lbyz;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field public a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lbza;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lbza;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbyz;->a:Landroid/os/Handler;

    return-void
.end method
