.class public Lcom/avast/android/mobilesecurity/engine/internal/m;
.super Ljava/lang/Object;
.source "SFFile.java"


# instance fields
.field private a:[B

.field private b:Lcom/avast/android/mobilesecurity/engine/internal/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/m;->a:[B

    .line 31
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/h;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/h;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/m;->b:Lcom/avast/android/mobilesecurity/engine/internal/h;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/m;->b:Lcom/avast/android/mobilesecurity/engine/internal/h;

    invoke-virtual {v0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/h;->a(Ljava/lang/String;[B)V

    .line 63
    return-void
.end method

.method public a([B)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/m;->a:[B

    .line 42
    return-void
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/m;->a:[B

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/m;->b:Lcom/avast/android/mobilesecurity/engine/internal/h;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/h;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
