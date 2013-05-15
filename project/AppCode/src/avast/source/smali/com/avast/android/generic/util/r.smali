.class Lcom/avast/android/generic/util/r;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/util/r;->a:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/avast/android/generic/util/r;->b:I

    .line 19
    return-void
.end method
