.class public final Lcom/keniu/security/a/i;
.super Ljava/lang/Object;
.source "CSString.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    if-nez p1, :cond_0

    .line 21
    const-string v0, ""

    .line 23
    :goto_0
    iput-object v0, p0, Lcom/keniu/security/a/i;->a:Ljava/lang/String;

    .line 24
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/keniu/security/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/keniu/security/a/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/keniu/security/a/i;

    iget-object v1, p0, Lcom/keniu/security/a/i;->a:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keniu/security/a/i;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/keniu/security/a/i;->a:Ljava/lang/String;

    return-object v0
.end method
