.class public final Lcom/keniu/security/commumgr/a/p;
.super Ljava/lang/Exception;
.source "RpException.java"


# static fields
.field private static final c:J = -0x42fcf3fc7b2fa0cdL

.field private static final d:Ljava/lang/String; = "code"

.field private static final e:Ljava/lang/String; = "msgs"


# instance fields
.field public final a:Lcom/keniu/security/commumgr/a/q;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/keniu/security/commumgr/a/q;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/p;->a:Lcom/keniu/security/commumgr/a/q;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/p;->b:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public varargs constructor <init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/p;->a:Lcom/keniu/security/commumgr/a/q;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/p;->b:Ljava/util/ArrayList;

    .line 61
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 62
    iget-object v3, p0, Lcom/keniu/security/commumgr/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/keniu/security/commumgr/a/p;
    .locals 3
    .parameter

    .prologue
    .line 30
    const-string v0, "code"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/keniu/security/commumgr/a/q;->a(I)Lcom/keniu/security/commumgr/a/q;

    move-result-object v0

    .line 31
    const-string v1, "msgs"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/keniu/security/commumgr/a/p;

    invoke-direct {v2, v0, v1}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 19
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 20
    const-string v0, "code"

    iget-object v2, p0, Lcom/keniu/security/commumgr/a/p;->a:Lcom/keniu/security/commumgr/a/q;

    iget v2, v2, Lcom/keniu/security/commumgr/a/q;->d:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 21
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 22
    new-array v3, v2, [Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 24
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    .line 23
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "msgs"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 26
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/p;->a:Lcom/keniu/security/commumgr/a/q;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/a/q;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/keniu/security/commumgr/a/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    return-object v0
.end method
