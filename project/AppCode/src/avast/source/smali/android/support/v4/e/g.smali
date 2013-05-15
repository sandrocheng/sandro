.class public Landroid/support/v4/e/g;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# static fields
.field private static final b:Landroid/support/v4/e/j;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Landroid/support/v4/e/i;

    invoke-direct {v0}, Landroid/support/v4/e/i;-><init>()V

    sput-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Landroid/support/v4/e/h;

    invoke-direct {v0}, Landroid/support/v4/e/h;-><init>()V

    sput-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    invoke-interface {v0, p1}, Landroid/support/v4/e/j;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/e/g;->a:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    iget-object v1, p0, Landroid/support/v4/e/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/e/j;->a(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 154
    sget-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    iget-object v1, p0, Landroid/support/v4/e/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/e/j;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(F)Z
    .locals 2
    .parameter

    .prologue
    .line 177
    sget-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    iget-object v1, p0, Landroid/support/v4/e/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/e/j;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 2
    .parameter

    .prologue
    .line 218
    sget-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    iget-object v1, p0, Landroid/support/v4/e/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/e/j;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    iget-object v1, p0, Landroid/support/v4/e/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/e/j;->b(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 189
    sget-object v0, Landroid/support/v4/e/g;->b:Landroid/support/v4/e/j;

    iget-object v1, p0, Landroid/support/v4/e/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/e/j;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
