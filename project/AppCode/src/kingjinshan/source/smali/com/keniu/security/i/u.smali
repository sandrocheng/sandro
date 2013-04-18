.class abstract Lcom/keniu/security/i/u;
.super Ljava/lang/Object;
.source "FileWatcher.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field protected d:I

.field protected e:Lcom/keniu/security/i/t;

.field protected f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/keniu/security/i/t;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/keniu/security/i/u;->f:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/keniu/security/i/u;->e:Lcom/keniu/security/i/t;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/i/u;->d:I

    .line 24
    return-void
.end method

.method private d()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/keniu/security/i/u;->d:I

    return v0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v1}, Lcom/keniu/security/i/u;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0, v1}, Lcom/keniu/security/i/u;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    iget v0, p0, Lcom/keniu/security/i/u;->d:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
