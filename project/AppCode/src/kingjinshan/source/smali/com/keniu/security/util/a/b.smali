.class final Lcom/keniu/security/util/a/b;
.super Ljava/lang/Object;
.source "IniProperty.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/keniu/security/util/a/b;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/keniu/security/util/a/b;->b:Ljava/lang/String;

    .line 11
    iput p3, p0, Lcom/keniu/security/util/a/b;->c:I

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/keniu/security/util/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/keniu/security/util/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/keniu/security/util/a/b;->c:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 49
    :goto_0
    return v0

    .line 38
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    check-cast p1, Lcom/keniu/security/util/a/b;

    .line 44
    iget-object v0, p0, Lcom/keniu/security/util/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 45
    iget-object v0, p1, Lcom/keniu/security/util/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/util/a/b;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/keniu/security/util/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 48
    goto :goto_0

    :cond_4
    move v0, v3

    .line 49
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/keniu/security/util/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 31
    return v0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/util/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
