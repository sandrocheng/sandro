.class public Lcom/avast/android/generic/d/b;
.super Ljava/lang/Object;
.source "EditModeDAO.java"

# interfaces
.implements Lcom/avast/android/generic/d/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/avast/android/generic/d/b;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    return p2
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    return-object p2
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    return p2
.end method
