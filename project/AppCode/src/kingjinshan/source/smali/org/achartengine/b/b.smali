.class public final Lorg/achartengine/b/b;
.super Ljava/lang/Object;
.source "SeriesSelection.java"


# instance fields
.field private a:I

.field private b:I

.field private c:D


# direct methods
.method public constructor <init>(IID)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/achartengine/b/b;->a:I

    .line 27
    iput p2, p0, Lorg/achartengine/b/b;->b:I

    .line 28
    iput-wide p3, p0, Lorg/achartengine/b/b;->c:D

    .line 29
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/achartengine/b/b;->a:I

    return v0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/achartengine/b/b;->b:I

    return v0
.end method

.method private c()D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/achartengine/b/b;->c:D

    return-wide v0
.end method
