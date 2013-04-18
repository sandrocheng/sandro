.class public final Lcom/keniu/security/a/p;
.super Ljava/lang/Object;
.source "Sign.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/keniu/security/a/p;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/keniu/security/a/p;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 8
    iput p1, p0, Lcom/keniu/security/a/p;->a:I

    .line 9
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/keniu/security/a/p;->b:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/keniu/security/a/p;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/keniu/security/a/p;->c:Ljava/lang/String;

    .line 21
    return-void
.end method
