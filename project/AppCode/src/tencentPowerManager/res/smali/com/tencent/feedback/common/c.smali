.class public Lcom/tencent/feedback/common/c;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/tencent/feedback/common/c;->a:I

    .line 21
    iput v0, p0, Lcom/tencent/feedback/common/c;->b:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/feedback/common/c;->c:I

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 11
    sget-boolean v1, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 17
    :goto_1
    return-void

    .line 11
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :cond_2
    const-string v0, "eup"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 31
    sget-boolean v1, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 37
    :goto_1
    return-void

    .line 31
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "eup"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    sget-boolean v1, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_CORE_DEBUG:Z

    if-nez v0, :cond_3

    .line 46
    :cond_1
    :goto_1
    return-void

    .line 41
    :cond_2
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :cond_3
    const-string v0, "eup"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
