.class final Lorg/achartengine/d;
.super Ljava/lang/Object;
.source "GraphicalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lorg/achartengine/b;


# direct methods
.method constructor <init>(Lorg/achartengine/b;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lorg/achartengine/d;->e:Lorg/achartengine/b;

    iput p2, p0, Lorg/achartengine/d;->a:I

    iput p3, p0, Lorg/achartengine/d;->b:I

    iput p4, p0, Lorg/achartengine/d;->c:I

    iput p5, p0, Lorg/achartengine/d;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 217
    iget-object v0, p0, Lorg/achartengine/d;->e:Lorg/achartengine/b;

    iget v1, p0, Lorg/achartengine/d;->a:I

    iget v2, p0, Lorg/achartengine/d;->b:I

    iget v3, p0, Lorg/achartengine/d;->c:I

    iget v4, p0, Lorg/achartengine/d;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/achartengine/b;->invalidate(IIII)V

    .line 218
    return-void
.end method
