.class public Lcom/avast/android/mobilesecurity/engine/af;
.super Ljava/lang/Object;
.source "UpdateResultStructure.java"


# instance fields
.field public a:Lcom/avast/android/mobilesecurity/engine/ag;

.field public b:Lcom/avast/android/mobilesecurity/engine/al;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 66
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    .line 71
    const/16 v0, 0xf0

    iput v0, p0, Lcom/avast/android/mobilesecurity/engine/af;->c:I

    .line 79
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 80
    return-void
.end method
