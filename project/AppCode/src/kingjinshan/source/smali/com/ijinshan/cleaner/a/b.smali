.class public final Lcom/ijinshan/cleaner/a/b;
.super Ljava/lang/Object;
.source "HistoryInfo.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ijinshan/cleaner/a/b;->a:Landroid/graphics/drawable/Drawable;

    .line 24
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ijinshan/cleaner/a/b;->b:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/ijinshan/cleaner/a/b;->d:Z

    return v0
.end method

.method private d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/b;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/b;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ijinshan/cleaner/a/b;->d:Z

    .line 17
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ijinshan/cleaner/a/b;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ijinshan/cleaner/a/b;->c:Ljava/lang/String;

    return-object v0
.end method
