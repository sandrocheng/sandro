.class public final Lcom/ijinshan/bootmanager/b/a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private g()Ljava/util/List;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->c:Ljava/util/List;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ijinshan/bootmanager/b/a;->a:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ijinshan/bootmanager/b/a;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ijinshan/bootmanager/b/a;->c:Ljava/util/List;

    .line 23
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/ijinshan/bootmanager/b/a;->g:Z

    .line 31
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/ijinshan/bootmanager/b/a;->g:Z

    return v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ijinshan/bootmanager/b/a;->d:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ijinshan/bootmanager/b/a;->e:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ijinshan/bootmanager/b/a;->f:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_0

    move v0, v3

    .line 100
    :goto_0
    return v0

    .line 90
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    check-cast p1, Lcom/ijinshan/bootmanager/b/a;

    .line 95
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 96
    iget-object v0, p1, Lcom/ijinshan/bootmanager/b/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/ijinshan/bootmanager/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 99
    goto :goto_0

    :cond_4
    move v0, v3

    .line 100
    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 83
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/bootmanager/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
