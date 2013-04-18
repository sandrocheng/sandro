.class final Lorg/achartengine/c;
.super Ljava/lang/Object;
.source "GraphicalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/achartengine/b;


# direct methods
.method constructor <init>(Lorg/achartengine/b;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lorg/achartengine/c;->a:Lorg/achartengine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/achartengine/c;->a:Lorg/achartengine/b;

    invoke-virtual {v0}, Lorg/achartengine/b;->invalidate()V

    .line 196
    return-void
.end method
