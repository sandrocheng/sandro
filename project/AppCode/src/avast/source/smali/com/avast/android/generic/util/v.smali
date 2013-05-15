.class public Lcom/avast/android/generic/util/v;
.super Ljava/lang/Object;
.source "NotificationData.java"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:F

.field public c:Ljava/lang/Integer;

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, -0x4080

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/avast/android/generic/util/v;->a:Ljava/lang/Integer;

    .line 6
    iput v0, p0, Lcom/avast/android/generic/util/v;->b:F

    .line 7
    iput-object v1, p0, Lcom/avast/android/generic/util/v;->c:Ljava/lang/Integer;

    .line 8
    iput v0, p0, Lcom/avast/android/generic/util/v;->d:F

    return-void
.end method
