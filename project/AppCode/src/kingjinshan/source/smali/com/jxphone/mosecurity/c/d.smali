.class public final Lcom/jxphone/mosecurity/c/d;
.super Ljava/lang/Object;
.source "MenuInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/jxphone/mosecurity/c/d;->a:I

    return v0
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/jxphone/mosecurity/c/d;->a:I

    .line 20
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/d;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/d;->b:Ljava/lang/String;

    .line 26
    return-void
.end method
