.class public Lcom/avast/android/mobilesecurity/app/filter/core/e;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/e;->a:Z

    .line 44
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/e;->b:Z

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/e;->c:Ljava/lang/String;

    return-void
.end method
