.class public final Lcom/ijinshan/cleaner/a/c;
.super Ljava/lang/Object;
.source "SDcardRubbishResult.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Z

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/cleaner/a/c;->g:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ijinshan/cleaner/a/c;->a:Landroid/widget/ImageView;

    .line 73
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method

.method private f()Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->g:Ljava/util/List;

    return-object v0
.end method

.method private g()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->a:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/ijinshan/cleaner/a/c;->e:J

    .line 97
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ijinshan/cleaner/a/c;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/ijinshan/cleaner/a/c;->f:Z

    .line 81
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ijinshan/cleaner/a/c;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ijinshan/cleaner/a/c;->b:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/a/c;->f:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/ijinshan/cleaner/a/c;->e:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 60
    :goto_0
    return v0

    .line 50
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    check-cast p1, Lcom/ijinshan/cleaner/a/c;

    .line 55
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p1, Lcom/ijinshan/cleaner/a/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/ijinshan/cleaner/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 59
    goto :goto_0

    :cond_4
    move v0, v3

    .line 60
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 43
    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
