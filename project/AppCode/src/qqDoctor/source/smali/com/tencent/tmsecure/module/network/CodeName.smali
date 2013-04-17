.class public final Lcom/tencent/tmsecure/module/network/CodeName;
.super Ljava/lang/Object;


# instance fields
.field public mCode:Ljava/lang/String;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/CodeName;->mCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/network/CodeName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/CodeName;->mCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/CodeName;->mCode:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/network/CodeName;->mCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/tmsecure/module/network/CodeName;->mName:Ljava/lang/String;

    return-void
.end method
