.class public final Lcom/jxphone/mosecurity/c/g;
.super Ljava/lang/Object;
.source "Messages.java"


# instance fields
.field private final a:[Lcom/jxphone/mosecurity/c/e;

.field private final b:Z


# direct methods
.method public constructor <init>([Lcom/jxphone/mosecurity/c/e;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/jxphone/mosecurity/c/g;->a:[Lcom/jxphone/mosecurity/c/e;

    .line 14
    iput-boolean p2, p0, Lcom/jxphone/mosecurity/c/g;->b:Z

    .line 15
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/g;->a:[Lcom/jxphone/mosecurity/c/e;

    array-length v0, v0

    return v0
.end method

.method private b()[Lcom/jxphone/mosecurity/c/e;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jxphone/mosecurity/c/g;->a:[Lcom/jxphone/mosecurity/c/e;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/c/g;->b:Z

    return v0
.end method
