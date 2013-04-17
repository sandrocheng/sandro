.class public final Lcom/tencent/tmsecure/module/optimize/IMemoryHelper$MemoryInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryInfo"
.end annotation


# instance fields
.field public mInfo:Landroid/os/Debug$MemoryInfo;

.field public mPid:I

.field public mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
