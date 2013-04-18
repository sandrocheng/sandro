.class public final Lcom/keniu/security/a/e;
.super Ljava/lang/Object;
.source "AdItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/keniu/security/a/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/keniu/security/a/e;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/keniu/security/a/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/keniu/security/a/e;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/keniu/security/a/e;->c:Ljava/util/List;

    .line 24
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/a/e;->d:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/keniu/security/a/e;->b:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/keniu/security/a/e;->d:Ljava/util/List;

    .line 30
    return-void
.end method
