.class public final Lorg/achartengine/a;
.super Ljava/lang/Object;
.source "ChartFactory.java"


# static fields
.field public static final a:Ljava/lang/String; = "chart"

.field public static final b:Ljava/lang/String; = "title"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static final a(Landroid/content/Context;Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/a/c;)Lorg/achartengine/b;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/achartengine/b/c;->a()I

    move-result v0

    invoke-virtual {p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dataset and renderer should be not null and should have the same number of series"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Lorg/achartengine/a/b;

    invoke-direct {v0, p1, p2, p3}, Lorg/achartengine/a/b;-><init>(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/a/c;)V

    .line 61
    new-instance v1, Lorg/achartengine/b;

    invoke-direct {v1, p0, v0}, Lorg/achartengine/b;-><init>(Landroid/content/Context;Lorg/achartengine/a/a;)V

    return-object v1
.end method

.method private static a(Lorg/achartengine/b/c;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 77
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/achartengine/b/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dataset and renderer should be not null and should have the same number of series"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    return-void
.end method
