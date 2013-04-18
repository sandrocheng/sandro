.class public final Lcom/jxphone/mosecurity/c/k;
.super Ljava/lang/Object;
.source "PhoneNumber.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/jxphone/mosecurity/c/k; = null

.field private static final b:J = -0x2d0fc882859291a8L

.field private static final c:Ljava/util/WeakHashMap;


# instance fields
.field private final d:Ljava/lang/String;

.field private volatile e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/jxphone/mosecurity/c/k;->c:Ljava/util/WeakHashMap;

    .line 15
    new-instance v0, Lcom/jxphone/mosecurity/c/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jxphone/mosecurity/c/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jxphone/mosecurity/c/k;->a:Lcom/jxphone/mosecurity/c/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/k;->d:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/k;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 29
    invoke-static {p1}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0696

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/k;->e:Ljava/lang/String;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/k;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    invoke-static {p1}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jxphone/mosecurity/c/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/c/k;->e:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    sget-object v0, Lcom/jxphone/mosecurity/c/k;->c:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/jxphone/mosecurity/c/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/k;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/jxphone/mosecurity/c/k;->c:Ljava/util/WeakHashMap;

    iget-object v2, p0, Lcom/jxphone/mosecurity/c/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return-object v0
.end method
