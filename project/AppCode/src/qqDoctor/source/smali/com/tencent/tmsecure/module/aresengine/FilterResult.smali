.class public final Lcom/tencent/tmsecure/module/aresengine/FilterResult;
.super Ljava/lang/Object;


# instance fields
.field public isBlocked:Z

.field public mData:Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;

.field public final mDotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mFilterfiled:I

.field public mParams:[Ljava/lang/Object;

.field public mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;->mDotos:Ljava/util/ArrayList;

    return-void
.end method
