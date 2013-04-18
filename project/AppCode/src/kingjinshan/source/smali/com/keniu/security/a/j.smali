.class public final Lcom/keniu/security/a/j;
.super Ljava/lang/Object;
.source "Cast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/keniu/security/a/i;

    invoke-direct {v0, p0}, Lcom/keniu/security/a/i;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
