.class public abstract Lorg/achartengine/c/a;
.super Ljava/lang/Object;
.source "AbstractTool.java"


# instance fields
.field protected a:Lorg/achartengine/a/a;

.field protected b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;


# direct methods
.method public constructor <init>(Lorg/achartengine/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/achartengine/c/a;->a:Lorg/achartengine/a/a;

    .line 38
    instance-of v0, p1, Lorg/achartengine/a/h;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Lorg/achartengine/a/h;

    invoke-virtual {p1}, Lorg/achartengine/a/h;->e()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(DDI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p1, p2, p5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(DI)V

    .line 77
    iget-object v0, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p3, p4, p5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(DI)V

    .line 78
    return-void
.end method

.method public final a([DI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lorg/achartengine/c/a;->a:Lorg/achartengine/a/a;

    instance-of v0, v0, Lorg/achartengine/a/h;

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lorg/achartengine/c/a;->a:Lorg/achartengine/a/a;

    check-cast v0, Lorg/achartengine/a/h;

    invoke-virtual {v0, p2}, Lorg/achartengine/a/h;->a(I)[D

    move-result-object v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    iget-object v1, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    aget-wide v1, v0, v3

    aput-wide v1, p1, v3

    .line 57
    iget-object v1, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget-wide v2, p1, v3

    invoke-virtual {v1, v2, v3, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(DI)V

    .line 59
    :cond_0
    iget-object v1, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    aget-wide v1, v0, v4

    aput-wide v1, p1, v4

    .line 61
    iget-object v1, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget-wide v2, p1, v4

    invoke-virtual {v1, v2, v3, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(DI)V

    .line 63
    :cond_1
    iget-object v1, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    aget-wide v1, v0, v5

    aput-wide v1, p1, v5

    .line 65
    iget-object v1, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget-wide v2, p1, v5

    invoke-virtual {v1, v2, v3, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 67
    :cond_2
    iget-object v1, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 68
    aget-wide v0, v0, v6

    aput-wide v0, p1, v6

    .line 69
    iget-object v0, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    aget-wide v1, p1, v6

    invoke-virtual {v0, v1, v2, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V

    .line 73
    :cond_3
    return-void
.end method

.method public final a(I)[D
    .locals 10
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v0

    .line 45
    iget-object v2, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2, p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v2

    .line 46
    iget-object v4, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4, p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v4

    .line 47
    iget-object v6, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6, p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v6

    .line 48
    const/4 v8, 0x4

    new-array v8, v8, [D

    const/4 v9, 0x0

    aput-wide v0, v8, v9

    const/4 v0, 0x1

    aput-wide v2, v8, v0

    const/4 v0, 0x2

    aput-wide v4, v8, v0

    const/4 v0, 0x3

    aput-wide v6, v8, v0

    return-object v8
.end method

.method protected final b(DDI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p1, p2, p5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(DI)V

    .line 82
    iget-object v0, p0, Lorg/achartengine/c/a;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0, p3, p4, p5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(DI)V

    .line 83
    return-void
.end method
