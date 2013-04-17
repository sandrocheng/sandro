.class public abstract Lcom/tencent/tmsecure/common/BaseManager;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_FOREVER:I = 0x1

.field public static final TYPE_ONCE:I = 0x2


# instance fields
.field private a:Lcom/tencent/tmsecure/common/BaseManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final isExpired()Z
    .locals 1

    invoke-static {}, Lbsv;->a()Lbsv;

    move-result-object v0

    invoke-virtual {v0}, Lbsv;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSingletonType()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/common/BaseManager;->a:Lcom/tencent/tmsecure/common/BaseManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/common/BaseManager;->a:Lcom/tencent/tmsecure/common/BaseManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/common/BaseManager;->getSingletonType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method protected setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/common/BaseManager;->a:Lcom/tencent/tmsecure/common/BaseManager;

    return-void
.end method
