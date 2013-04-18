.class public final Lcom/ijinshan/kinghelper/a/f;
.super Ljava/lang/Object;
.source "GetDrawable.java"


# static fields
.field private static c:Lcom/ijinshan/kinghelper/a/f;


# instance fields
.field public a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/HashMap;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/ijinshan/kinghelper/a/f;->c:Lcom/ijinshan/kinghelper/a/f;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/a/f;->a:Ljava/util/concurrent/ExecutorService;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/a/f;->d:Landroid/content/Context;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/a/f;->b:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ijinshan/kinghelper/a/f;
    .locals 1
    .parameter

    .prologue
    .line 22
    sget-object v0, Lcom/ijinshan/kinghelper/a/f;->c:Lcom/ijinshan/kinghelper/a/f;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/ijinshan/kinghelper/a/f;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ijinshan/kinghelper/a/f;->c:Lcom/ijinshan/kinghelper/a/f;

    .line 25
    :cond_0
    sget-object v0, Lcom/ijinshan/kinghelper/a/f;->c:Lcom/ijinshan/kinghelper/a/f;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/a/f;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ijinshan/kinghelper/a/f;->b:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/ijinshan/kinghelper/a/h;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    if-nez p1, :cond_1

    move-object v0, v1

    .line 61
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/a/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/ijinshan/kinghelper/a/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 39
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 40
    if-nez v0, :cond_0

    .line 45
    :cond_2
    new-instance v0, Lcom/ijinshan/kinghelper/a/g;

    invoke-direct {v0, p0, p2, p1}, Lcom/ijinshan/kinghelper/a/g;-><init>(Lcom/ijinshan/kinghelper/a/f;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 57
    invoke-interface {p3, v0}, Lcom/ijinshan/kinghelper/a/h;->a(Landroid/os/Handler;)V

    .line 58
    invoke-interface {p3, p1}, Lcom/ijinshan/kinghelper/a/h;->a(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/ijinshan/kinghelper/a/f;->d:Landroid/content/Context;

    invoke-interface {p3, v0}, Lcom/ijinshan/kinghelper/a/h;->a(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/ijinshan/kinghelper/a/f;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    .line 61
    goto :goto_0
.end method
