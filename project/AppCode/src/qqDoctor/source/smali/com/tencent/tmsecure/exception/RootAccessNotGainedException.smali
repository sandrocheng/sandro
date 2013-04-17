.class public Lcom/tencent/tmsecure/exception/RootAccessNotGainedException;
.super Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "Root permission is not granted!"

    return-object v0
.end method
